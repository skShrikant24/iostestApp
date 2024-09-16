import '/components/list_question_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'question_bank_model.dart';
export 'question_bank_model.dart';

class QuestionBankWidget extends StatefulWidget {
  const QuestionBankWidget({
    super.key,
    this.course,
  });

  final String? course;

  @override
  State<QuestionBankWidget> createState() => _QuestionBankWidgetState();
}

class _QuestionBankWidgetState extends State<QuestionBankWidget> {
  late QuestionBankModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => QuestionBankModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: wrapWithModel(
            model: _model.listQuestionModel,
            updateCallback: () => safeSetState(() {}),
            child: ListQuestionWidget(
              cName: valueOrDefault<String>(
                widget.course,
                '0',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
