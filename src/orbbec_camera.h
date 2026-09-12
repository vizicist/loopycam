#ifndef _ORBBEC_CAMERA_H
#define _ORBBEC_CAMERA_H

#include <memory>
#include <string>
#include <vector>

struct OrbbecCameraDevice {
    std::string name;
    std::string serialNumber;
};

bool list_orbbec_cameras(std::vector<OrbbecCameraDevice>* devices, std::string* error);
int find_orbbec_camera(const std::vector<OrbbecCameraDevice>& devices,
                       const char* selector, bool* ambiguous);

class OrbbecCameraCapture {
public:
    OrbbecCameraCapture();
    ~OrbbecCameraCapture();

    bool open(int deviceIndex, int requestedWidth, int requestedHeight,
              int requestedFps, std::string* error);
    bool readBgr(unsigned char* destination, int destinationStride,
                 unsigned int timeoutMs, std::string* error);
    void close();

    int width() const;
    int height() const;
    int fps() const;
    const std::string& name() const;
    const std::string& serialNumber() const;

private:
    OrbbecCameraCapture(const OrbbecCameraCapture&);
    OrbbecCameraCapture& operator=(const OrbbecCameraCapture&);

    struct Impl;
    std::unique_ptr<Impl> impl_;
};

#endif
