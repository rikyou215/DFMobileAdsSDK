{
  "name": "DFMobileAds",
  "version": "0.1.0",
  "summary": "init",
  "description": "蒲公英SDk，支持Crash日志收集，用户反馈和数据分析功能。如何项目里引用了CrashReporter需要去掉，否则会导致编译错误。",
  "homepage": "http://www.pgyer.com/doc/view/sdk_ios_guide",
  "license": {
    "type": "Copyright",
    "text": "Copyright 2017 pgyer.com. All rights reserved.\n"
  },
  "authors": {
    "pgyer": "support@pgyer.com"
  },
  "platforms": {
    "ios": "4.3"
  },
  "source": {
    "http": "http://www.pgyer.com/download/pgyer_sdk_ios_2.8.9.zip"
  },
  "vendored_frameworks": [
    "PgySDK/sdk/PgySDK.framework"
  ],
  "frameworks": [
    "CoreTelephony",
    "OpenGLES",
    "CoreMotion",
    "AudioToolbox",
    "AvFoundation",
    "SystemConfiguration"
  ],
  "requires_arc": false
}