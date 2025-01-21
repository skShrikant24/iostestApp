import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'p_l_homepage_widget.dart' show PLHomepageWidget;
import 'package:flutter/material.dart';

class PLHomepageModel extends FlutterFlowModel<PLHomepageWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (getcourselist)] action in PLHomepage widget.
  ApiCallResponse? apiResult5qf;
  // Stores action output result for [Custom Action - parseXmlTocourselist] action in PLHomepage widget.
  List<dynamic>? resultlist;
  // Stores action output result for [Backend Call - API (getsubscribedlist)] action in PLHomepage widget.
  ApiCallResponse? apiResultvpq;
  // Stores action output result for [Custom Action - getsubscribedlist] action in PLHomepage widget.
  List<dynamic>? subscribedlist;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
  }
}
