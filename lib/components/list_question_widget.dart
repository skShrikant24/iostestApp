import '/backend/backend.dart';
import '/components/column_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'list_question_model.dart';
export 'list_question_model.dart';

class ListQuestionWidget extends StatefulWidget {
  const ListQuestionWidget({
    super.key,
    required this.cName,
  });

  final String? cName;

  @override
  State<ListQuestionWidget> createState() => _ListQuestionWidgetState();
}

class _ListQuestionWidgetState extends State<ListQuestionWidget> {
  late ListQuestionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListQuestionModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      child: StreamBuilder<List<CoursePracticeTestRecord>>(
        stream: queryCoursePracticeTestRecord(
          queryBuilder: (coursePracticeTestRecord) =>
              coursePracticeTestRecord.where(
            'course_name',
            isEqualTo: widget.cName,
          ),
        ),
        builder: (context, snapshot) {
          // Customize what your widget looks like when it's loading.
          if (!snapshot.hasData) {
            return Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            );
          }
          List<CoursePracticeTestRecord> listViewCoursePracticeTestRecordList =
              snapshot.data!;

          return ListView.builder(
            padding: EdgeInsets.zero,
            scrollDirection: Axis.vertical,
            itemCount: listViewCoursePracticeTestRecordList.length,
            itemBuilder: (context, listViewIndex) {
              final listViewCoursePracticeTestRecord =
                  listViewCoursePracticeTestRecordList[listViewIndex];
              return ColumnWidget(
                key: Key(
                    'Keyq55_${listViewIndex}_of_${listViewCoursePracticeTestRecordList.length}'),
                parameter1: listViewCoursePracticeTestRecord.question,
                parameter2: listViewCoursePracticeTestRecord.option1,
                parameter3: listViewCoursePracticeTestRecord.option2,
                parameter4: listViewCoursePracticeTestRecord.option3,
                parameter5: listViewCoursePracticeTestRecord.option4,
              );
            },
          );
        },
      ),
    );
  }
}
