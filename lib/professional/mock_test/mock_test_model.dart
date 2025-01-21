import '/flutter_flow/flutter_flow_util.dart';
import '/professional/mocktest_p_l/mocktest_p_l_widget.dart';
import 'mock_test_widget.dart' show MockTestWidget;
import 'package:flutter/material.dart';

class MockTestModel extends FlutterFlowModel<MockTestWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for mocktestPL component.
  late MocktestPLModel mocktestPLModel;

  @override
  void initState(BuildContext context) {
    mocktestPLModel = createModel(context, () => MocktestPLModel());
  }

  @override
  void dispose() {
    mocktestPLModel.dispose();
  }
}
