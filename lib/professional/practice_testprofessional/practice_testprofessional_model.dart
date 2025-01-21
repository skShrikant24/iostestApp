import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'practice_testprofessional_widget.dart'
    show PracticeTestprofessionalWidget;
import 'package:flutter/material.dart';

class PracticeTestprofessionalModel
    extends FlutterFlowModel<PracticeTestprofessionalWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (getMocktestquestion)] action in Container widget.
  ApiCallResponse? questionlist;
  // Stores action output result for [Custom Action - getquestionMockTest] action in Container widget.
  List<dynamic>? list;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
