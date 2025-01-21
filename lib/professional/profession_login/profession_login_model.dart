import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'profession_login_widget.dart' show ProfessionLoginWidget;
import 'package:flutter/material.dart';

class ProfessionLoginModel extends FlutterFlowModel<ProfessionLoginWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for eapcode widget.
  FocusNode? eapcodeFocusNode;
  TextEditingController? eapcodeTextController;
  String? Function(BuildContext, String?)? eapcodeTextControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  // State field(s) for mobile widget.
  FocusNode? mobileFocusNode;
  TextEditingController? mobileTextController;
  String? Function(BuildContext, String?)? mobileTextControllerValidator;
  // Stores action output result for [Custom Action - getDeviceId] action in Button widget.
  String? did;
  // Stores action output result for [Backend Call - API (LoginEap)] action in Button widget.
  ApiCallResponse? apiResultsav;
  // Stores action output result for [Backend Call - API (getCnameforPl)] action in Button widget.
  ApiCallResponse? cname;
  // Stores action output result for [Custom Action - getcNamePl] action in Button widget.
  List<dynamic>? datajson;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
  }

  @override
  void dispose() {
    eapcodeFocusNode?.dispose();
    eapcodeTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    mobileFocusNode?.dispose();
    mobileTextController?.dispose();
  }
}
