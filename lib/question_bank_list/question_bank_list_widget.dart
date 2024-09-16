import '/backend/backend.dart';
import '/components/questionbank2_copy_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'question_bank_list_model.dart';
export 'question_bank_list_model.dart';

class QuestionBankListWidget extends StatefulWidget {
  const QuestionBankListWidget({
    super.key,
    this.courseName,
  });

  final String? courseName;

  @override
  State<QuestionBankListWidget> createState() => _QuestionBankListWidgetState();
}

class _QuestionBankListWidgetState extends State<QuestionBankListWidget> {
  late QuestionBankListModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => QuestionBankListModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      if (FFAppState().listQuestion.length >= 0) {
        _model.list2 = await queryCoursePracticeTestRecordOnce(
          queryBuilder: (coursePracticeTestRecord) =>
              coursePracticeTestRecord.where(
            'course_name',
            isEqualTo: widget.courseName,
          ),
        );
        _model.datatype = await actions.newCustomAction(
          _model.list2!.toList(),
        );
        FFAppState().listQuestion =
            _model.datatype!.toList().cast<QuestionStruct>();
        safeSetState(() {});
      }
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            valueOrDefault<String>(
              widget.courseName,
              'null',
            ),
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(),
            child: wrapWithModel(
              model: _model.questionbank2CopyModel,
              updateCallback: () => safeSetState(() {}),
              child: Questionbank2CopyWidget(
                parameter1: widget.courseName,
                list: _model.list2,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
