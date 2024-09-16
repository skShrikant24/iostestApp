import '/components/list_question_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'question_bank_widget.dart' show QuestionBankWidget;
import 'package:flutter/material.dart';

class QuestionBankModel extends FlutterFlowModel<QuestionBankWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for listQuestion component.
  late ListQuestionModel listQuestionModel;

  @override
  void initState(BuildContext context) {
    listQuestionModel = createModel(context, () => ListQuestionModel());
  }

  @override
  void dispose() {
    listQuestionModel.dispose();
  }
}
