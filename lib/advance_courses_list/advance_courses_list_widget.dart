import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'advance_courses_list_model.dart';
export 'advance_courses_list_model.dart';

class AdvanceCoursesListWidget extends StatefulWidget {
  const AdvanceCoursesListWidget({super.key});

  @override
  State<AdvanceCoursesListWidget> createState() =>
      _AdvanceCoursesListWidgetState();
}

class _AdvanceCoursesListWidgetState extends State<AdvanceCoursesListWidget> {
  late AdvanceCoursesListModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AdvanceCoursesListModel());
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
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primary,
          automaticallyImplyLeading: true,
          title: Text(
            'Advance Courses',
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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color(0xFFEEE8E8),
                  ),
                  child: StreamBuilder<List<AdvanceCourseRecord>>(
                    stream: queryAdvanceCourseRecord(),
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
                      List<AdvanceCourseRecord>
                          listViewAdvanceCourseRecordList = snapshot.data!;

                      return ListView.builder(
                        padding: EdgeInsets.zero,
                        scrollDirection: Axis.vertical,
                        itemCount: listViewAdvanceCourseRecordList.length,
                        itemBuilder: (context, listViewIndex) {
                          final listViewAdvanceCourseRecord =
                              listViewAdvanceCourseRecordList[listViewIndex];
                          return Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed(
                                  'QuestionBankList',
                                  queryParameters: {
                                    'courseName': serializeParam(
                                      listViewAdvanceCourseRecord.courseName,
                                      ParamType.String,
                                    ),
                                  }.withoutNulls,
                                );
                              },
                              child: Container(
                                width: double.infinity,
                                height: 100.0,
                                decoration: BoxDecoration(
                                  color: const Color(0xFFE9CECE),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: Text(
                                    listViewAdvanceCourseRecord.courseName,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          fontSize: 25.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
