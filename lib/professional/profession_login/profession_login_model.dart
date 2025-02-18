import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'profession_login_widget.dart' show ProfessionLoginWidget;
import 'package:flutter/material.dart';

class ProfessionLoginModel extends FlutterFlowModel<ProfessionLoginWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for eapcode widget.
  FocusNode? eapcodeFocusNode1;
  TextEditingController? eapcodeTextController1;
  String? Function(BuildContext, String?)? eapcodeTextController1Validator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode1;
  TextEditingController? passwordTextController1;
  late bool passwordVisibility1;
  String? Function(BuildContext, String?)? passwordTextController1Validator;
  // State field(s) for mobile widget.
  FocusNode? mobileFocusNode1;
  TextEditingController? mobileTextController1;
  String? Function(BuildContext, String?)? mobileTextController1Validator;
  // Stores action output result for [Custom Action - getDeviceId] action in Button widget.
  String? did;
  // Stores action output result for [Backend Call - API (LoginEap)] action in Button widget.
  ApiCallResponse? apiResultsav;
  // Stores action output result for [Backend Call - API (getCnameforPl)] action in Button widget.
  ApiCallResponse? cname;
  // Stores action output result for [Custom Action - getcNamePl] action in Button widget.
  List<dynamic>? datajson;
  // State field(s) for eapcode widget.
  FocusNode? eapcodeFocusNode2;
  TextEditingController? eapcodeTextController2;
  String? Function(BuildContext, String?)? eapcodeTextController2Validator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode2;
  TextEditingController? passwordTextController2;
  late bool passwordVisibility2;
  String? Function(BuildContext, String?)? passwordTextController2Validator;
  // State field(s) for mobile widget.
  FocusNode? mobileFocusNode2;
  TextEditingController? mobileTextController2;
  String? Function(BuildContext, String?)? mobileTextController2Validator;
  // Stores action output result for [Custom Action - getDeviceId] action in Button widget.
  String? did2;
  // Stores action output result for [Backend Call - API (LoginEap)] action in Button widget.
  ApiCallResponse? apiResultsav2;
  // Stores action output result for [Backend Call - API (getCnameforPl)] action in Button widget.
  ApiCallResponse? cname2;
  // Stores action output result for [Custom Action - getcNamePl] action in Button widget.
  List<dynamic>? datajson2;

  @override
  void initState(BuildContext context) {
    passwordVisibility1 = false;
    passwordVisibility2 = false;
  }

  @override
  void dispose() {
    eapcodeFocusNode1?.dispose();
    eapcodeTextController1?.dispose();

    passwordFocusNode1?.dispose();
    passwordTextController1?.dispose();

    mobileFocusNode1?.dispose();
    mobileTextController1?.dispose();

    eapcodeFocusNode2?.dispose();
    eapcodeTextController2?.dispose();

    passwordFocusNode2?.dispose();
    passwordTextController2?.dispose();

    mobileFocusNode2?.dispose();
    mobileTextController2?.dispose();
  }
}
