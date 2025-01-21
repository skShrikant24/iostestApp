import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class CallAllotmentCall {
  static Future<ApiCallResponse> call({
    String? driverMobile = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'CallAllotment',
      apiUrl: 'https://delisync.com/webservice2.asmx/CallAllotment',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'DriverMobile': "8208687436",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetVersionCall {
  static Future<ApiCallResponse> call({
    String? imei = '1',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getVersion',
      apiUrl: 'https://dishagroup.in/service.asmx?op=CheckVer',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'IMEI': "1",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class LoginCheckprofessionalCall {
  static Future<ApiCallResponse> call({
    String? imei = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'loginCheckprofessional',
      apiUrl: 'https://dishagroup.in/service.asmx/CheckProfessionalRiphone',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'IMEI': imei,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class LoginEapCall {
  static Future<ApiCallResponse> call({
    String? eApp = '',
    String? password = '',
    String? imei = '',
    String? mobile = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'LoginEap',
      apiUrl: 'https://dishagroup.in/service.asmx/ValidateEAppRiphone',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'eApp': eApp,
        'Password': password,
        'IMEI': imei,
        'Mobile': mobile,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetcourselistCall {
  static Future<ApiCallResponse> call({
    String? imei = '',
    String? cNAme = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getcourselist',
      apiUrl: 'https://dishagroup.in/service.asmx/GetExamQuesDetIphone',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'Imei': imei,
        'CNAme': cNAme,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetCnameforPlCall {
  static Future<ApiCallResponse> call({
    String? imei = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getCnameforPl',
      apiUrl: 'https://dishagroup.in/service.asmx/getCourseNameiphone',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'IMEI': imei,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetsubscribedlistCall {
  static Future<ApiCallResponse> call({
    String? imei = '',
    String? cNAme = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getsubscribedlist',
      apiUrl: 'https://dishagroup.in/service.asmx/GetCourseDetailsiphone',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'Imei': imei,
        'CNAme': cNAme,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetMocktestquestionCall {
  static Future<ApiCallResponse> call({
    String? subject = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getMocktestquestion',
      apiUrl: 'https://dishagroup.in/service.asmx/GetQuestioniphone',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'Subject': subject,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
