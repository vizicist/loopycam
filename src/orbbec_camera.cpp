#include "orbbec_camera.h"

#include <libobsensor/ObSensor.hpp>

#include <algorithm>
#include <cctype>
#include <climits>
#include <cstdlib>
#include <cstring>
#include <exception>
#include <sstream>

static std::string normalized_camera_name(const char* value)
{
    std::string normalized;
    if (value == NULL)
        return normalized;

    std::string source(value);
    std::transform(source.begin(), source.end(), source.begin(),
                   [](unsigned char ch) { return static_cast<char>(std::tolower(ch)); });

    static const char* ignoredWords[] = { "orbbec", "rgb", "camera" };
    for (int n = 0; n < 3; ++n) {
        std::string::size_type position;
        while ((position = source.find(ignoredWords[n])) != std::string::npos)
            source.erase(position, strlen(ignoredWords[n]));
    }

    for (std::string::const_iterator it = source.begin(); it != source.end(); ++it)
        if (std::isalnum(static_cast<unsigned char>(*it)))
            normalized.push_back(*it);
    return normalized;
}

static std::string orbbec_error(const ob::Error& error)
{
    std::ostringstream message;
    message << error.what();
    if (error.getFunction() && error.getFunction()[0])
        message << " [" << error.getFunction() << ']';
    return message.str();
}

bool list_orbbec_cameras(std::vector<OrbbecCameraDevice>* devices, std::string* error)
{
    devices->clear();
    try {
        ob::Context context;
        std::shared_ptr<ob::DeviceList> list = context.queryDeviceList();
        for (uint32_t index = 0; index < list->getCount(); ++index) {
            OrbbecCameraDevice device;
            device.name = list->getName(index);
            device.serialNumber = list->getSerialNumber(index);
            devices->push_back(device);
        }
        return true;
    }
    catch (const ob::Error& exception) {
        if (error)
            *error = orbbec_error(exception);
        return false;
    }
    catch (const std::exception& exception) {
        if (error)
            *error = exception.what();
        return false;
    }
}

int find_orbbec_camera(const std::vector<OrbbecCameraDevice>& devices,
                       const char* selector, bool* ambiguous)
{
    if (ambiguous)
        *ambiguous = false;
    if (selector == NULL || selector[0] == 0)
        return devices.empty() ? -1 : 0;

    char* end = NULL;
    const long numericIndex = strtol(selector, &end, 10);
    if (end != selector && *end == 0)
        return numericIndex >= 0 && numericIndex < static_cast<long>(devices.size())
            ? static_cast<int>(numericIndex) : -1;

    const std::string wanted = normalized_camera_name(selector);
    int match = -1;
    for (size_t index = 0; index < devices.size(); ++index) {
        const bool serialMatch = _stricmp(devices[index].serialNumber.c_str(), selector) == 0;
        const std::string candidate = normalized_camera_name(devices[index].name.c_str());
        const bool nameMatch = !wanted.empty() &&
            (candidate == wanted || candidate.find(wanted) != std::string::npos ||
             wanted.find(candidate) != std::string::npos);
        if (!serialMatch && !nameMatch)
            continue;
        if (match >= 0) {
            if (ambiguous)
                *ambiguous = true;
            return -1;
        }
        match = static_cast<int>(index);
    }
    return match;
}

struct OrbbecCameraCapture::Impl {
    std::shared_ptr<ob::Context> context;
    std::shared_ptr<ob::Device> device;
    std::shared_ptr<ob::Pipeline> pipeline;
    std::shared_ptr<ob::Config> config;
    std::shared_ptr<ob::FormatConvertFilter> converter;
    OBFormat sourceFormat;
    int width;
    int height;
    int fps;
    bool started;
    std::string name;
    std::string serialNumber;

    Impl()
        : sourceFormat(OB_FORMAT_UNKNOWN), width(0), height(0), fps(0), started(false)
    {
    }
};

static int format_rank(OBFormat format)
{
    switch (format) {
    case OB_FORMAT_MJPG: return 0;
    case OB_FORMAT_BGR: return 1;
    case OB_FORMAT_RGB: return 2;
    case OB_FORMAT_YUYV:
    case OB_FORMAT_YUY2: return 3;
    default: return -1;
    }
}

static std::shared_ptr<ob::VideoStreamProfile> choose_color_profile(
    const std::shared_ptr<ob::StreamProfileList>& profiles,
    int requestedWidth, int requestedHeight, int requestedFps)
{
    long bestScore = LONG_MAX;
    std::shared_ptr<ob::VideoStreamProfile> best;
    for (uint32_t index = 0; index < profiles->getCount(); ++index) {
        std::shared_ptr<ob::VideoStreamProfile> profile;
        try {
            profile = profiles->getProfile(index)->as<ob::VideoStreamProfile>();
        }
        catch (const ob::Error&) {
            continue;
        }
        const int rank = format_rank(profile->getFormat());
        if (rank < 0)
            continue;

        const long resolutionDifference =
            labs(static_cast<long>(profile->getWidth()) - requestedWidth) +
            labs(static_cast<long>(profile->getHeight()) - requestedHeight);
        const long fpsDifference = labs(static_cast<long>(profile->getFps()) - requestedFps);
        const long score = resolutionDifference * 100000L + fpsDifference * 100L + rank;
        if (score < bestScore) {
            bestScore = score;
            best = profile;
        }
    }
    return best;
}

OrbbecCameraCapture::OrbbecCameraCapture()
    : impl_(new Impl())
{
}

OrbbecCameraCapture::~OrbbecCameraCapture()
{
    close();
}

bool OrbbecCameraCapture::open(int deviceIndex, int requestedWidth, int requestedHeight,
                               int requestedFps, std::string* error)
{
    close();
    try {
        impl_->context = std::make_shared<ob::Context>();
        std::shared_ptr<ob::DeviceList> devices = impl_->context->queryDeviceList();
        if (deviceIndex < 0 || deviceIndex >= static_cast<int>(devices->getCount())) {
            if (error)
                *error = "Orbbec camera index is out of range";
            close();
            return false;
        }

        impl_->device = devices->getDevice(static_cast<uint32_t>(deviceIndex));
        std::shared_ptr<ob::DeviceInfo> info = impl_->device->getDeviceInfo();
        impl_->name = info->getName();
        impl_->serialNumber = info->getSerialNumber();
        impl_->pipeline = std::make_shared<ob::Pipeline>(impl_->device);

        std::shared_ptr<ob::StreamProfileList> profiles =
            impl_->pipeline->getStreamProfileList(OB_SENSOR_COLOR);
        std::shared_ptr<ob::VideoStreamProfile> profile = choose_color_profile(
            profiles, requestedWidth, requestedHeight, requestedFps);
        if (!profile) {
            if (error)
                *error = "The camera has no supported RGB color stream";
            close();
            return false;
        }

        impl_->sourceFormat = profile->getFormat();
        impl_->width = static_cast<int>(profile->getWidth());
        impl_->height = static_cast<int>(profile->getHeight());
        impl_->fps = static_cast<int>(profile->getFps());

        if (impl_->sourceFormat != OB_FORMAT_BGR) {
            impl_->converter = std::make_shared<ob::FormatConvertFilter>();
            switch (impl_->sourceFormat) {
            case OB_FORMAT_MJPG:
                impl_->converter->setFormatConvertType(FORMAT_MJPG_TO_BGR);
                break;
            case OB_FORMAT_RGB:
                impl_->converter->setFormatConvertType(FORMAT_RGB_TO_BGR);
                break;
            case OB_FORMAT_YUYV:
            case OB_FORMAT_YUY2:
                impl_->converter->setFormatConvertType(FORMAT_YUYV_TO_BGR);
                break;
            default:
                if (error)
                    *error = "The selected Orbbec color format cannot be converted to BGR";
                close();
                return false;
            }
        }

        impl_->config = std::make_shared<ob::Config>();
        impl_->config->enableStream(profile);
        impl_->pipeline->start(impl_->config);
        impl_->started = true;
        return true;
    }
    catch (const ob::Error& exception) {
        if (error)
            *error = orbbec_error(exception);
        close();
        return false;
    }
    catch (const std::exception& exception) {
        if (error)
            *error = exception.what();
        close();
        return false;
    }
}

bool OrbbecCameraCapture::readBgr(unsigned char* destination, int destinationStride,
                                  unsigned int timeoutMs, std::string* error)
{
    if (!impl_->started || destination == NULL)
        return false;
    try {
        std::shared_ptr<ob::FrameSet> frames = impl_->pipeline->waitForFrameset(timeoutMs);
        if (!frames)
            return false;
        std::shared_ptr<ob::ColorFrame> color = frames->getColorFrame();
        if (!color)
            return false;

        std::shared_ptr<const ob::Frame> output = color;
        if (impl_->converter) {
            std::shared_ptr<ob::Frame> converted = impl_->converter->process(color);
            if (!converted)
                return false;
            output = converted;
        }

        const int rowBytes = impl_->width * 3;
        const size_t expectedBytes = static_cast<size_t>(rowBytes) * impl_->height;
        if (output->getDataSize() < expectedBytes) {
            if (error)
                *error = "Converted Orbbec color frame is smaller than expected";
            return false;
        }

        const unsigned char* source = output->getData();
        for (int y = 0; y < impl_->height; ++y)
            memcpy(destination + y * destinationStride, source + y * rowBytes, rowBytes);
        return true;
    }
    catch (const ob::Error& exception) {
        if (error)
            *error = orbbec_error(exception);
        return false;
    }
    catch (const std::exception& exception) {
        if (error)
            *error = exception.what();
        return false;
    }
}

void OrbbecCameraCapture::close()
{
    if (impl_->started && impl_->pipeline) {
        try {
            impl_->pipeline->stop();
        }
        catch (...) {
        }
    }
    impl_->started = false;
    impl_->converter.reset();
    impl_->config.reset();
    impl_->pipeline.reset();
    impl_->device.reset();
    impl_->context.reset();
    impl_->sourceFormat = OB_FORMAT_UNKNOWN;
    impl_->width = 0;
    impl_->height = 0;
    impl_->fps = 0;
    impl_->name.clear();
    impl_->serialNumber.clear();
}

int OrbbecCameraCapture::width() const { return impl_->width; }
int OrbbecCameraCapture::height() const { return impl_->height; }
int OrbbecCameraCapture::fps() const { return impl_->fps; }
const std::string& OrbbecCameraCapture::name() const { return impl_->name; }
const std::string& OrbbecCameraCapture::serialNumber() const { return impl_->serialNumber; }
