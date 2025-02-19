// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:client_information/client_information.dart';
import 'package:flutter/foundation.dart';
import 'package:device_info_plus/device_info_plus.dart';

import 'dart:async';

Future<String?> getDeviceId(String target) async {
  // Add your function code here!

  // List<dynamic> doc=[];
  print(target);
  print(defaultTargetPlatform);

  if (target == "false") {
    if (defaultTargetPlatform == TargetPlatform.android) {
      final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();

      //deviceData = _readAndroidBuildData(await deviceInfoPlugin.androidInfo);
      var build = await deviceInfoPlugin.androidInfo;
      var information = await ClientInformation.fetch();
      FFAppState().dId = information.deviceId;

      return FFAppState().dId;
    } else if (defaultTargetPlatform == TargetPlatform.windows) {
      final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
      //deviceData = _readAndroidBuildData(await deviceInfoPlugin.androidInfo);
      var build = await deviceInfoPlugin.windowsInfo;
      FFAppState().dId = build.deviceId;

      return FFAppState().dId;
    } else if (defaultTargetPlatform == TargetPlatform.iOS) {
      final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();

      //deviceData = _readAndroidBuildData(await deviceInfoPlugin.androidInfo);
      var build = await deviceInfoPlugin.iosInfo;
      var information = await ClientInformation.fetch();
      FFAppState().dId = information.deviceId;

      return FFAppState().dId;
    }
  } else {
    final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
    var build = await deviceInfoPlugin.webBrowserInfo;
    FFAppState().dId = build.productSub!;

    return FFAppState().dId;
  }

//  return "hi";
}
