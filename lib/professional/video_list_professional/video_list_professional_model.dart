import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'video_list_professional_widget.dart' show VideoListProfessionalWidget;
import 'package:flutter/material.dart';

class VideoListProfessionalModel
    extends FlutterFlowModel<VideoListProfessionalWidget> {
  ///  Local state fields for this page.

  List<CourseVideoRecord> listpage = [];
  void addToListpage(CourseVideoRecord item) => listpage.add(item);
  void removeFromListpage(CourseVideoRecord item) => listpage.remove(item);
  void removeAtIndexFromListpage(int index) => listpage.removeAt(index);
  void insertAtIndexInListpage(int index, CourseVideoRecord item) =>
      listpage.insert(index, item);
  void updateListpageAtIndex(int index, Function(CourseVideoRecord) updateFn) =>
      listpage[index] = updateFn(listpage[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in VideoListProfessional widget.
  List<CourseVideoRecord>? list;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
