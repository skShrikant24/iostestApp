import '/backend/backend.dart';
import '/components/questionbank2_copy_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'question_bank_list_widget.dart' show QuestionBankListWidget;
import 'package:flutter/material.dart';

class QuestionBankListModel extends FlutterFlowModel<QuestionBankListWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in QuestionBankList widget.
  List<CoursePracticeTestRecord>? list2;
  // Stores action output result for [Custom Action - newCustomAction] action in QuestionBankList widget.
  List<QuestionStruct>? datatype;
  // Model for questionbank2Copy component.
  late Questionbank2CopyModel questionbank2CopyModel;

  @override
  void initState(BuildContext context) {
    questionbank2CopyModel =
        createModel(context, () => Questionbank2CopyModel());
  }

  @override
  void dispose() {
    questionbank2CopyModel.dispose();
  }
}
