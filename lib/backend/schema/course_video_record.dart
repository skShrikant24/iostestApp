import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CourseVideoRecord extends FirestoreRecord {
  CourseVideoRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "course_name" field.
  String? _courseName;
  String get courseName => _courseName ?? '';
  bool hasCourseName() => _courseName != null;

  // "course_title" field.
  String? _courseTitle;
  String get courseTitle => _courseTitle ?? '';
  bool hasCourseTitle() => _courseTitle != null;

  // "course_desc" field.
  String? _courseDesc;
  String get courseDesc => _courseDesc ?? '';
  bool hasCourseDesc() => _courseDesc != null;

  // "course_time" field.
  String? _courseTime;
  String get courseTime => _courseTime ?? '';
  bool hasCourseTime() => _courseTime != null;

  // "course_image" field.
  String? _courseImage;
  String get courseImage => _courseImage ?? '';
  bool hasCourseImage() => _courseImage != null;

  // "course_video_url" field.
  String? _courseVideoUrl;
  String get courseVideoUrl => _courseVideoUrl ?? '';
  bool hasCourseVideoUrl() => _courseVideoUrl != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  void _initializeFields() {
    _courseName = snapshotData['course_name'] as String?;
    _courseTitle = snapshotData['course_title'] as String?;
    _courseDesc = snapshotData['course_desc'] as String?;
    _courseTime = snapshotData['course_time'] as String?;
    _courseImage = snapshotData['course_image'] as String?;
    _courseVideoUrl = snapshotData['course_video_url'] as String?;
    _id = snapshotData['id'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('COURSE_VIDEO');

  static Stream<CourseVideoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CourseVideoRecord.fromSnapshot(s));

  static Future<CourseVideoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CourseVideoRecord.fromSnapshot(s));

  static CourseVideoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CourseVideoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CourseVideoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CourseVideoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CourseVideoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CourseVideoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCourseVideoRecordData({
  String? courseName,
  String? courseTitle,
  String? courseDesc,
  String? courseTime,
  String? courseImage,
  String? courseVideoUrl,
  String? id,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'course_name': courseName,
      'course_title': courseTitle,
      'course_desc': courseDesc,
      'course_time': courseTime,
      'course_image': courseImage,
      'course_video_url': courseVideoUrl,
      'id': id,
    }.withoutNulls,
  );

  return firestoreData;
}

class CourseVideoRecordDocumentEquality implements Equality<CourseVideoRecord> {
  const CourseVideoRecordDocumentEquality();

  @override
  bool equals(CourseVideoRecord? e1, CourseVideoRecord? e2) {
    return e1?.courseName == e2?.courseName &&
        e1?.courseTitle == e2?.courseTitle &&
        e1?.courseDesc == e2?.courseDesc &&
        e1?.courseTime == e2?.courseTime &&
        e1?.courseImage == e2?.courseImage &&
        e1?.courseVideoUrl == e2?.courseVideoUrl &&
        e1?.id == e2?.id;
  }

  @override
  int hash(CourseVideoRecord? e) => const ListEquality().hash([
        e?.courseName,
        e?.courseTitle,
        e?.courseDesc,
        e?.courseTime,
        e?.courseImage,
        e?.courseVideoUrl,
        e?.id
      ]);

  @override
  bool isValidKey(Object? o) => o is CourseVideoRecord;
}
