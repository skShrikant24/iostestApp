import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'o_t_p_activity_widget.dart' show OTPActivityWidget;
import 'package:flutter/material.dart';

class OTPActivityModel extends FlutterFlowModel<OTPActivityWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  UserPofileRecord? user;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
