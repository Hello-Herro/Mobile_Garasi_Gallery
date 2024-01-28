import 'dart:io' show Platform;

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart' show kIsWeb, defaultTargetPlatform;
import 'package:my_app_btw/src/config/constants/strings.dart';
import 'package:package_info_plus/package_info_plus.dart';

Future<void> initializePlatform() async {
  PackageInfo packageInfo = await PackageInfo.fromPlatform();
  version = packageInfo.version;

  final deviceInfo = DeviceInfoPlugin();
  if(kIsWeb){
    var browserInfo = await deviceInfo.webBrowserInfo;
    platform = browserInfo.browserName.toString().split(".")[1];
    device = defaultTargetPlatform.name;
  } else if (Platform.isAndroid) {
    AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
    platform = "Android";
    device = androidInfo.model;
  } else if (Platform.isIOS) {
    IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
    platform = "iOS";
    device = iosInfo.model;
  }
}