//
// This file is auto-generated. Please don't modify it!
//

#import "Videoio.h"
#import "CVObjcUtil.h"



@implementation Videoio

+ (int)CAP_PROP_DC1394_OFF {
    return -4;
}

+ (int)CAP_PROP_DC1394_MODE_MANUAL {
    return -3;
}

+ (int)CAP_PROP_DC1394_MODE_AUTO {
    return -2;
}

+ (int)CAP_PROP_DC1394_MODE_ONE_PUSH_AUTO {
    return -1;
}

+ (int)CAP_PROP_DC1394_MAX {
    return 31;
}

+ (int)CAP_OPENNI_DEPTH_GENERATOR {
    return 1 << 31;
}

+ (int)CAP_OPENNI_IMAGE_GENERATOR {
    return 1 << 30;
}

+ (int)CAP_OPENNI_IR_GENERATOR {
    return 1 << 29;
}

+ (int)CAP_OPENNI_GENERATORS_MASK {
    return Videoio.CAP_OPENNI_DEPTH_GENERATOR + Videoio.CAP_OPENNI_IMAGE_GENERATOR + Videoio.CAP_OPENNI_IR_GENERATOR;
}

+ (int)CAP_PROP_OPENNI_OUTPUT_MODE {
    return 100;
}

+ (int)CAP_PROP_OPENNI_FRAME_MAX_DEPTH {
    return 101;
}

+ (int)CAP_PROP_OPENNI_BASELINE {
    return 102;
}

+ (int)CAP_PROP_OPENNI_FOCAL_LENGTH {
    return 103;
}

+ (int)CAP_PROP_OPENNI_REGISTRATION {
    return 104;
}

+ (int)CAP_PROP_OPENNI_REGISTRATION_ON {
    return Videoio.CAP_PROP_OPENNI_REGISTRATION;
}

+ (int)CAP_PROP_OPENNI_APPROX_FRAME_SYNC {
    return 105;
}

+ (int)CAP_PROP_OPENNI_MAX_BUFFER_SIZE {
    return 106;
}

+ (int)CAP_PROP_OPENNI_CIRCLE_BUFFER {
    return 107;
}

+ (int)CAP_PROP_OPENNI_MAX_TIME_DURATION {
    return 108;
}

+ (int)CAP_PROP_OPENNI_GENERATOR_PRESENT {
    return 109;
}

+ (int)CAP_PROP_OPENNI2_SYNC {
    return 110;
}

+ (int)CAP_PROP_OPENNI2_MIRROR {
    return 111;
}

+ (int)CAP_OPENNI_IMAGE_GENERATOR_PRESENT {
    return Videoio.CAP_OPENNI_IMAGE_GENERATOR + Videoio.CAP_PROP_OPENNI_GENERATOR_PRESENT;
}

+ (int)CAP_OPENNI_IMAGE_GENERATOR_OUTPUT_MODE {
    return Videoio.CAP_OPENNI_IMAGE_GENERATOR + Videoio.CAP_PROP_OPENNI_OUTPUT_MODE;
}

+ (int)CAP_OPENNI_DEPTH_GENERATOR_PRESENT {
    return Videoio.CAP_OPENNI_DEPTH_GENERATOR + Videoio.CAP_PROP_OPENNI_GENERATOR_PRESENT;
}

+ (int)CAP_OPENNI_DEPTH_GENERATOR_BASELINE {
    return Videoio.CAP_OPENNI_DEPTH_GENERATOR + Videoio.CAP_PROP_OPENNI_BASELINE;
}

+ (int)CAP_OPENNI_DEPTH_GENERATOR_FOCAL_LENGTH {
    return Videoio.CAP_OPENNI_DEPTH_GENERATOR + Videoio.CAP_PROP_OPENNI_FOCAL_LENGTH;
}

+ (int)CAP_OPENNI_DEPTH_GENERATOR_REGISTRATION {
    return Videoio.CAP_OPENNI_DEPTH_GENERATOR + Videoio.CAP_PROP_OPENNI_REGISTRATION;
}

+ (int)CAP_OPENNI_DEPTH_GENERATOR_REGISTRATION_ON {
    return Videoio.CAP_OPENNI_DEPTH_GENERATOR_REGISTRATION;
}

+ (int)CAP_OPENNI_IR_GENERATOR_PRESENT {
    return Videoio.CAP_OPENNI_IR_GENERATOR + Videoio.CAP_PROP_OPENNI_GENERATOR_PRESENT;
}

+ (int)CAP_OPENNI_DEPTH_MAP {
    return 0;
}

+ (int)CAP_OPENNI_POINT_CLOUD_MAP {
    return 1;
}

+ (int)CAP_OPENNI_DISPARITY_MAP {
    return 2;
}

+ (int)CAP_OPENNI_DISPARITY_MAP_32F {
    return 3;
}

+ (int)CAP_OPENNI_VALID_DEPTH_MASK {
    return 4;
}

+ (int)CAP_OPENNI_BGR_IMAGE {
    return 5;
}

+ (int)CAP_OPENNI_GRAY_IMAGE {
    return 6;
}

+ (int)CAP_OPENNI_IR_IMAGE {
    return 7;
}

+ (int)CAP_OPENNI_VGA_30HZ {
    return 0;
}

+ (int)CAP_OPENNI_SXGA_15HZ {
    return 1;
}

+ (int)CAP_OPENNI_SXGA_30HZ {
    return 2;
}

+ (int)CAP_OPENNI_QVGA_30HZ {
    return 3;
}

+ (int)CAP_OPENNI_QVGA_60HZ {
    return 4;
}

+ (int)CAP_PROP_GSTREAMER_QUEUE_LENGTH {
    return 200;
}

+ (int)CAP_PROP_PVAPI_MULTICASTIP {
    return 300;
}

+ (int)CAP_PROP_PVAPI_FRAMESTARTTRIGGERMODE {
    return 301;
}

+ (int)CAP_PROP_PVAPI_DECIMATIONHORIZONTAL {
    return 302;
}

+ (int)CAP_PROP_PVAPI_DECIMATIONVERTICAL {
    return 303;
}

+ (int)CAP_PROP_PVAPI_BINNINGX {
    return 304;
}

+ (int)CAP_PROP_PVAPI_BINNINGY {
    return 305;
}

+ (int)CAP_PROP_PVAPI_PIXELFORMAT {
    return 306;
}

+ (int)CAP_PVAPI_FSTRIGMODE_FREERUN {
    return 0;
}

+ (int)CAP_PVAPI_FSTRIGMODE_SYNCIN1 {
    return 1;
}

+ (int)CAP_PVAPI_FSTRIGMODE_SYNCIN2 {
    return 2;
}

+ (int)CAP_PVAPI_FSTRIGMODE_FIXEDRATE {
    return 3;
}

+ (int)CAP_PVAPI_FSTRIGMODE_SOFTWARE {
    return 4;
}

+ (int)CAP_PVAPI_DECIMATION_OFF {
    return 1;
}

+ (int)CAP_PVAPI_DECIMATION_2OUTOF4 {
    return 2;
}

+ (int)CAP_PVAPI_DECIMATION_2OUTOF8 {
    return 4;
}

+ (int)CAP_PVAPI_DECIMATION_2OUTOF16 {
    return 8;
}

+ (int)CAP_PVAPI_PIXELFORMAT_MONO8 {
    return 1;
}

+ (int)CAP_PVAPI_PIXELFORMAT_MONO16 {
    return 2;
}

+ (int)CAP_PVAPI_PIXELFORMAT_BAYER8 {
    return 3;
}

+ (int)CAP_PVAPI_PIXELFORMAT_BAYER16 {
    return 4;
}

+ (int)CAP_PVAPI_PIXELFORMAT_RGB24 {
    return 5;
}

+ (int)CAP_PVAPI_PIXELFORMAT_BGR24 {
    return 6;
}

+ (int)CAP_PVAPI_PIXELFORMAT_RGBA32 {
    return 7;
}

+ (int)CAP_PVAPI_PIXELFORMAT_BGRA32 {
    return 8;
}

+ (int)CAP_PROP_XI_DOWNSAMPLING {
    return 400;
}

+ (int)CAP_PROP_XI_DATA_FORMAT {
    return 401;
}

+ (int)CAP_PROP_XI_OFFSET_X {
    return 402;
}

+ (int)CAP_PROP_XI_OFFSET_Y {
    return 403;
}

+ (int)CAP_PROP_XI_TRG_SOURCE {
    return 404;
}

+ (int)CAP_PROP_XI_TRG_SOFTWARE {
    return 405;
}

+ (int)CAP_PROP_XI_GPI_SELECTOR {
    return 406;
}

+ (int)CAP_PROP_XI_GPI_MODE {
    return 407;
}

+ (int)CAP_PROP_XI_GPI_LEVEL {
    return 408;
}

+ (int)CAP_PROP_XI_GPO_SELECTOR {
    return 409;
}

+ (int)CAP_PROP_XI_GPO_MODE {
    return 410;
}

+ (int)CAP_PROP_XI_LED_SELECTOR {
    return 411;
}

+ (int)CAP_PROP_XI_LED_MODE {
    return 412;
}

+ (int)CAP_PROP_XI_MANUAL_WB {
    return 413;
}

+ (int)CAP_PROP_XI_AUTO_WB {
    return 414;
}

+ (int)CAP_PROP_XI_AEAG {
    return 415;
}

+ (int)CAP_PROP_XI_EXP_PRIORITY {
    return 416;
}

+ (int)CAP_PROP_XI_AE_MAX_LIMIT {
    return 417;
}

+ (int)CAP_PROP_XI_AG_MAX_LIMIT {
    return 418;
}

+ (int)CAP_PROP_XI_AEAG_LEVEL {
    return 419;
}

+ (int)CAP_PROP_XI_TIMEOUT {
    return 420;
}

+ (int)CAP_PROP_XI_EXPOSURE {
    return 421;
}

+ (int)CAP_PROP_XI_EXPOSURE_BURST_COUNT {
    return 422;
}

+ (int)CAP_PROP_XI_GAIN_SELECTOR {
    return 423;
}

+ (int)CAP_PROP_XI_GAIN {
    return 424;
}

+ (int)CAP_PROP_XI_DOWNSAMPLING_TYPE {
    return 426;
}

+ (int)CAP_PROP_XI_BINNING_SELECTOR {
    return 427;
}

+ (int)CAP_PROP_XI_BINNING_VERTICAL {
    return 428;
}

+ (int)CAP_PROP_XI_BINNING_HORIZONTAL {
    return 429;
}

+ (int)CAP_PROP_XI_BINNING_PATTERN {
    return 430;
}

+ (int)CAP_PROP_XI_DECIMATION_SELECTOR {
    return 431;
}

+ (int)CAP_PROP_XI_DECIMATION_VERTICAL {
    return 432;
}

+ (int)CAP_PROP_XI_DECIMATION_HORIZONTAL {
    return 433;
}

+ (int)CAP_PROP_XI_DECIMATION_PATTERN {
    return 434;
}

+ (int)CAP_PROP_XI_TEST_PATTERN_GENERATOR_SELECTOR {
    return 587;
}

+ (int)CAP_PROP_XI_TEST_PATTERN {
    return 588;
}

+ (int)CAP_PROP_XI_IMAGE_DATA_FORMAT {
    return 435;
}

+ (int)CAP_PROP_XI_SHUTTER_TYPE {
    return 436;
}

+ (int)CAP_PROP_XI_SENSOR_TAPS {
    return 437;
}

+ (int)CAP_PROP_XI_AEAG_ROI_OFFSET_X {
    return 439;
}

+ (int)CAP_PROP_XI_AEAG_ROI_OFFSET_Y {
    return 440;
}

+ (int)CAP_PROP_XI_AEAG_ROI_WIDTH {
    return 441;
}

+ (int)CAP_PROP_XI_AEAG_ROI_HEIGHT {
    return 442;
}

+ (int)CAP_PROP_XI_BPC {
    return 445;
}

+ (int)CAP_PROP_XI_WB_KR {
    return 448;
}

+ (int)CAP_PROP_XI_WB_KG {
    return 449;
}

+ (int)CAP_PROP_XI_WB_KB {
    return 450;
}

+ (int)CAP_PROP_XI_WIDTH {
    return 451;
}

+ (int)CAP_PROP_XI_HEIGHT {
    return 452;
}

+ (int)CAP_PROP_XI_REGION_SELECTOR {
    return 589;
}

+ (int)CAP_PROP_XI_REGION_MODE {
    return 595;
}

+ (int)CAP_PROP_XI_LIMIT_BANDWIDTH {
    return 459;
}

+ (int)CAP_PROP_XI_SENSOR_DATA_BIT_DEPTH {
    return 460;
}

+ (int)CAP_PROP_XI_OUTPUT_DATA_BIT_DEPTH {
    return 461;
}

+ (int)CAP_PROP_XI_IMAGE_DATA_BIT_DEPTH {
    return 462;
}

+ (int)CAP_PROP_XI_OUTPUT_DATA_PACKING {
    return 463;
}

+ (int)CAP_PROP_XI_OUTPUT_DATA_PACKING_TYPE {
    return 464;
}

+ (int)CAP_PROP_XI_IS_COOLED {
    return 465;
}

+ (int)CAP_PROP_XI_COOLING {
    return 466;
}

+ (int)CAP_PROP_XI_TARGET_TEMP {
    return 467;
}

+ (int)CAP_PROP_XI_CHIP_TEMP {
    return 468;
}

+ (int)CAP_PROP_XI_HOUS_TEMP {
    return 469;
}

+ (int)CAP_PROP_XI_HOUS_BACK_SIDE_TEMP {
    return 590;
}

+ (int)CAP_PROP_XI_SENSOR_BOARD_TEMP {
    return 596;
}

+ (int)CAP_PROP_XI_CMS {
    return 470;
}

+ (int)CAP_PROP_XI_APPLY_CMS {
    return 471;
}

+ (int)CAP_PROP_XI_IMAGE_IS_COLOR {
    return 474;
}

+ (int)CAP_PROP_XI_COLOR_FILTER_ARRAY {
    return 475;
}

+ (int)CAP_PROP_XI_GAMMAY {
    return 476;
}

+ (int)CAP_PROP_XI_GAMMAC {
    return 477;
}

+ (int)CAP_PROP_XI_SHARPNESS {
    return 478;
}

+ (int)CAP_PROP_XI_CC_MATRIX_00 {
    return 479;
}

+ (int)CAP_PROP_XI_CC_MATRIX_01 {
    return 480;
}

+ (int)CAP_PROP_XI_CC_MATRIX_02 {
    return 481;
}

+ (int)CAP_PROP_XI_CC_MATRIX_03 {
    return 482;
}

+ (int)CAP_PROP_XI_CC_MATRIX_10 {
    return 483;
}

+ (int)CAP_PROP_XI_CC_MATRIX_11 {
    return 484;
}

+ (int)CAP_PROP_XI_CC_MATRIX_12 {
    return 485;
}

+ (int)CAP_PROP_XI_CC_MATRIX_13 {
    return 486;
}

+ (int)CAP_PROP_XI_CC_MATRIX_20 {
    return 487;
}

+ (int)CAP_PROP_XI_CC_MATRIX_21 {
    return 488;
}

+ (int)CAP_PROP_XI_CC_MATRIX_22 {
    return 489;
}

+ (int)CAP_PROP_XI_CC_MATRIX_23 {
    return 490;
}

+ (int)CAP_PROP_XI_CC_MATRIX_30 {
    return 491;
}

+ (int)CAP_PROP_XI_CC_MATRIX_31 {
    return 492;
}

+ (int)CAP_PROP_XI_CC_MATRIX_32 {
    return 493;
}

+ (int)CAP_PROP_XI_CC_MATRIX_33 {
    return 494;
}

+ (int)CAP_PROP_XI_DEFAULT_CC_MATRIX {
    return 495;
}

+ (int)CAP_PROP_XI_TRG_SELECTOR {
    return 498;
}

+ (int)CAP_PROP_XI_ACQ_FRAME_BURST_COUNT {
    return 499;
}

+ (int)CAP_PROP_XI_DEBOUNCE_EN {
    return 507;
}

+ (int)CAP_PROP_XI_DEBOUNCE_T0 {
    return 508;
}

+ (int)CAP_PROP_XI_DEBOUNCE_T1 {
    return 509;
}

+ (int)CAP_PROP_XI_DEBOUNCE_POL {
    return 510;
}

+ (int)CAP_PROP_XI_LENS_MODE {
    return 511;
}

+ (int)CAP_PROP_XI_LENS_APERTURE_VALUE {
    return 512;
}

+ (int)CAP_PROP_XI_LENS_FOCUS_MOVEMENT_VALUE {
    return 513;
}

+ (int)CAP_PROP_XI_LENS_FOCUS_MOVE {
    return 514;
}

+ (int)CAP_PROP_XI_LENS_FOCUS_DISTANCE {
    return 515;
}

+ (int)CAP_PROP_XI_LENS_FOCAL_LENGTH {
    return 516;
}

+ (int)CAP_PROP_XI_LENS_FEATURE_SELECTOR {
    return 517;
}

+ (int)CAP_PROP_XI_LENS_FEATURE {
    return 518;
}

+ (int)CAP_PROP_XI_DEVICE_MODEL_ID {
    return 521;
}

+ (int)CAP_PROP_XI_DEVICE_SN {
    return 522;
}

+ (int)CAP_PROP_XI_IMAGE_DATA_FORMAT_RGB32_ALPHA {
    return 529;
}

+ (int)CAP_PROP_XI_IMAGE_PAYLOAD_SIZE {
    return 530;
}

+ (int)CAP_PROP_XI_TRANSPORT_PIXEL_FORMAT {
    return 531;
}

+ (int)CAP_PROP_XI_SENSOR_CLOCK_FREQ_HZ {
    return 532;
}

+ (int)CAP_PROP_XI_SENSOR_CLOCK_FREQ_INDEX {
    return 533;
}

+ (int)CAP_PROP_XI_SENSOR_OUTPUT_CHANNEL_COUNT {
    return 534;
}

+ (int)CAP_PROP_XI_FRAMERATE {
    return 535;
}

+ (int)CAP_PROP_XI_COUNTER_SELECTOR {
    return 536;
}

+ (int)CAP_PROP_XI_COUNTER_VALUE {
    return 537;
}

+ (int)CAP_PROP_XI_ACQ_TIMING_MODE {
    return 538;
}

+ (int)CAP_PROP_XI_AVAILABLE_BANDWIDTH {
    return 539;
}

+ (int)CAP_PROP_XI_BUFFER_POLICY {
    return 540;
}

+ (int)CAP_PROP_XI_LUT_EN {
    return 541;
}

+ (int)CAP_PROP_XI_LUT_INDEX {
    return 542;
}

+ (int)CAP_PROP_XI_LUT_VALUE {
    return 543;
}

+ (int)CAP_PROP_XI_TRG_DELAY {
    return 544;
}

+ (int)CAP_PROP_XI_TS_RST_MODE {
    return 545;
}

+ (int)CAP_PROP_XI_TS_RST_SOURCE {
    return 546;
}

+ (int)CAP_PROP_XI_IS_DEVICE_EXIST {
    return 547;
}

+ (int)CAP_PROP_XI_ACQ_BUFFER_SIZE {
    return 548;
}

+ (int)CAP_PROP_XI_ACQ_BUFFER_SIZE_UNIT {
    return 549;
}

+ (int)CAP_PROP_XI_ACQ_TRANSPORT_BUFFER_SIZE {
    return 550;
}

+ (int)CAP_PROP_XI_BUFFERS_QUEUE_SIZE {
    return 551;
}

+ (int)CAP_PROP_XI_ACQ_TRANSPORT_BUFFER_COMMIT {
    return 552;
}

+ (int)CAP_PROP_XI_RECENT_FRAME {
    return 553;
}

+ (int)CAP_PROP_XI_DEVICE_RESET {
    return 554;
}

+ (int)CAP_PROP_XI_COLUMN_FPN_CORRECTION {
    return 555;
}

+ (int)CAP_PROP_XI_ROW_FPN_CORRECTION {
    return 591;
}

+ (int)CAP_PROP_XI_SENSOR_MODE {
    return 558;
}

+ (int)CAP_PROP_XI_HDR {
    return 559;
}

+ (int)CAP_PROP_XI_HDR_KNEEPOINT_COUNT {
    return 560;
}

+ (int)CAP_PROP_XI_HDR_T1 {
    return 561;
}

+ (int)CAP_PROP_XI_HDR_T2 {
    return 562;
}

+ (int)CAP_PROP_XI_KNEEPOINT1 {
    return 563;
}

+ (int)CAP_PROP_XI_KNEEPOINT2 {
    return 564;
}

+ (int)CAP_PROP_XI_IMAGE_BLACK_LEVEL {
    return 565;
}

+ (int)CAP_PROP_XI_HW_REVISION {
    return 571;
}

+ (int)CAP_PROP_XI_DEBUG_LEVEL {
    return 572;
}

+ (int)CAP_PROP_XI_AUTO_BANDWIDTH_CALCULATION {
    return 573;
}

+ (int)CAP_PROP_XI_FFS_FILE_ID {
    return 594;
}

+ (int)CAP_PROP_XI_FFS_FILE_SIZE {
    return 580;
}

+ (int)CAP_PROP_XI_FREE_FFS_SIZE {
    return 581;
}

+ (int)CAP_PROP_XI_USED_FFS_SIZE {
    return 582;
}

+ (int)CAP_PROP_XI_FFS_ACCESS_KEY {
    return 583;
}

+ (int)CAP_PROP_XI_SENSOR_FEATURE_SELECTOR {
    return 585;
}

+ (int)CAP_PROP_XI_SENSOR_FEATURE_VALUE {
    return 586;
}

+ (int)CAP_PROP_ARAVIS_AUTOTRIGGER {
    return 600;
}

+ (int)CAP_PROP_IOS_DEVICE_FOCUS {
    return 9001;
}

+ (int)CAP_PROP_IOS_DEVICE_EXPOSURE {
    return 9002;
}

+ (int)CAP_PROP_IOS_DEVICE_FLASH {
    return 9003;
}

+ (int)CAP_PROP_IOS_DEVICE_WHITEBALANCE {
    return 9004;
}

+ (int)CAP_PROP_IOS_DEVICE_TORCH {
    return 9005;
}

+ (int)CAP_PROP_GIGA_FRAME_OFFSET_X {
    return 10001;
}

+ (int)CAP_PROP_GIGA_FRAME_OFFSET_Y {
    return 10002;
}

+ (int)CAP_PROP_GIGA_FRAME_WIDTH_MAX {
    return 10003;
}

+ (int)CAP_PROP_GIGA_FRAME_HEIGH_MAX {
    return 10004;
}

+ (int)CAP_PROP_GIGA_FRAME_SENS_WIDTH {
    return 10005;
}

+ (int)CAP_PROP_GIGA_FRAME_SENS_HEIGH {
    return 10006;
}

+ (int)CAP_PROP_INTELPERC_PROFILE_COUNT {
    return 11001;
}

+ (int)CAP_PROP_INTELPERC_PROFILE_IDX {
    return 11002;
}

+ (int)CAP_PROP_INTELPERC_DEPTH_LOW_CONFIDENCE_VALUE {
    return 11003;
}

+ (int)CAP_PROP_INTELPERC_DEPTH_SATURATION_VALUE {
    return 11004;
}

+ (int)CAP_PROP_INTELPERC_DEPTH_CONFIDENCE_THRESHOLD {
    return 11005;
}

+ (int)CAP_PROP_INTELPERC_DEPTH_FOCAL_LENGTH_HORZ {
    return 11006;
}

+ (int)CAP_PROP_INTELPERC_DEPTH_FOCAL_LENGTH_VERT {
    return 11007;
}

+ (int)CAP_INTELPERC_DEPTH_GENERATOR {
    return 1 << 29;
}

+ (int)CAP_INTELPERC_IMAGE_GENERATOR {
    return 1 << 28;
}

+ (int)CAP_INTELPERC_IR_GENERATOR {
    return 1 << 27;
}

+ (int)CAP_INTELPERC_GENERATORS_MASK {
    return Videoio.CAP_INTELPERC_DEPTH_GENERATOR + Videoio.CAP_INTELPERC_IMAGE_GENERATOR + Videoio.CAP_INTELPERC_IR_GENERATOR;
}

+ (int)CAP_INTELPERC_DEPTH_MAP {
    return 0;
}

+ (int)CAP_INTELPERC_UVDEPTH_MAP {
    return 1;
}

+ (int)CAP_INTELPERC_IR_MAP {
    return 2;
}

+ (int)CAP_INTELPERC_IMAGE {
    return 3;
}

+ (int)CAP_PROP_GPHOTO2_PREVIEW {
    return 17001;
}

+ (int)CAP_PROP_GPHOTO2_WIDGET_ENUMERATE {
    return 17002;
}

+ (int)CAP_PROP_GPHOTO2_RELOAD_CONFIG {
    return 17003;
}

+ (int)CAP_PROP_GPHOTO2_RELOAD_ON_CHANGE {
    return 17004;
}

+ (int)CAP_PROP_GPHOTO2_COLLECT_MSGS {
    return 17005;
}

+ (int)CAP_PROP_GPHOTO2_FLUSH_MSGS {
    return 17006;
}

+ (int)CAP_PROP_SPEED {
    return 17007;
}

+ (int)CAP_PROP_APERTURE {
    return 17008;
}

+ (int)CAP_PROP_EXPOSUREPROGRAM {
    return 17009;
}

+ (int)CAP_PROP_VIEWFINDER {
    return 17010;
}

+ (int)CAP_PROP_IMAGES_BASE {
    return 18000;
}

+ (int)CAP_PROP_IMAGES_LAST {
    return 19000;
}


//
//  String cv::videoio_registry::getBackendName(VideoCaptureAPIs api)
//
+ (NSString*)getBackendName:(VideoCaptureAPIs)api {
    cv::String retVal = cv::videoio_registry::getBackendName((cv::VideoCaptureAPIs)api);
    return [NSString stringWithUTF8String:retVal.c_str()];
}


//
//  vector_VideoCaptureAPIs cv::videoio_registry::getBackends()
//

//
//  vector_VideoCaptureAPIs cv::videoio_registry::getCameraBackends()
//

//
//  vector_VideoCaptureAPIs cv::videoio_registry::getStreamBackends()
//

//
//  vector_VideoCaptureAPIs cv::videoio_registry::getWriterBackends()
//

//
//  bool cv::videoio_registry::hasBackend(VideoCaptureAPIs api)
//
+ (BOOL)hasBackend:(VideoCaptureAPIs)api {
    bool retVal = cv::videoio_registry::hasBackend((cv::VideoCaptureAPIs)api);
    return retVal;
}


//
//  bool cv::videoio_registry::isBackendBuiltIn(VideoCaptureAPIs api)
//
+ (BOOL)isBackendBuiltIn:(VideoCaptureAPIs)api {
    bool retVal = cv::videoio_registry::isBackendBuiltIn((cv::VideoCaptureAPIs)api);
    return retVal;
}


//
//  string cv::videoio_registry::getCameraBackendPluginVersion(VideoCaptureAPIs api, int& version_ABI, int& version_API)
//
+ (NSString*)getCameraBackendPluginVersion:(VideoCaptureAPIs)api version_ABI:(int*)version_ABI version_API:(int*)version_API {
    std::string retVal = cv::videoio_registry::getCameraBackendPluginVersion((cv::VideoCaptureAPIs)api, *(int*)(version_ABI), *(int*)(version_API));
    return [NSString stringWithUTF8String:retVal.c_str()];
}


//
//  string cv::videoio_registry::getStreamBackendPluginVersion(VideoCaptureAPIs api, int& version_ABI, int& version_API)
//
+ (NSString*)getStreamBackendPluginVersion:(VideoCaptureAPIs)api version_ABI:(int*)version_ABI version_API:(int*)version_API {
    std::string retVal = cv::videoio_registry::getStreamBackendPluginVersion((cv::VideoCaptureAPIs)api, *(int*)(version_ABI), *(int*)(version_API));
    return [NSString stringWithUTF8String:retVal.c_str()];
}


//
//  string cv::videoio_registry::getWriterBackendPluginVersion(VideoCaptureAPIs api, int& version_ABI, int& version_API)
//
+ (NSString*)getWriterBackendPluginVersion:(VideoCaptureAPIs)api version_ABI:(int*)version_ABI version_API:(int*)version_API {
    std::string retVal = cv::videoio_registry::getWriterBackendPluginVersion((cv::VideoCaptureAPIs)api, *(int*)(version_ABI), *(int*)(version_API));
    return [NSString stringWithUTF8String:retVal.c_str()];
}



@end


