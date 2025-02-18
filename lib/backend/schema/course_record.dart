import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CourseRecord extends FirestoreRecord {
  CourseRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "course_image_big" field.
  String? _courseImageBig;
  String get courseImageBig => _courseImageBig ?? '';
  bool hasCourseImageBig() => _courseImageBig != null;

  // "course_image_small" field.
  String? _courseImageSmall;
  String get courseImageSmall => _courseImageSmall ?? '';
  bool hasCourseImageSmall() => _courseImageSmall != null;

  // "course_name" field.
  String? _courseName;
  String get courseName => _courseName ?? '';
  bool hasCourseName() => _courseName != null;

  // "desc" field.
  String? _desc;
  String get desc => _desc ?? '';
  bool hasDesc() => _desc != null;

  void _initializeFields() {
    _id = snapshotData['id'] as String?;
    _courseImageBig = snapshotData['course_image_big'] as String?;
    _courseImageSmall = snapshotData['course_image_small'] as String?;
    _courseName = snapshotData['course_name'] as String?;
    _desc = snapshotData['desc'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('COURSE');

  static Stream<CourseRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CourseRecord.fromSnapshot(s));

  static Future<CourseRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CourseRecord.fromSnapshot(s));

  static CourseRecord fromSnapshot(DocumentSnapshot snapshot) => CourseRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CourseRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CourseRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CourseRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CourseRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCourseRecordData({
  String? id,
  String? courseImageBig,
  String? courseImageSmall,
  String? courseName,
  String? desc,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'course_image_big': courseImageBig,
      'course_image_small': courseImageSmall,
      'course_name': courseName,
      'desc': desc,
    }.withoutNulls,
  );

  return firestoreData;
}

class CourseRecordDocumentEquality implements Equality<CourseRecord> {
  const CourseRecordDocumentEquality();

  @override
  bool equals(CourseRecord? e1, CourseRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.courseImageBig == e2?.courseImageBig &&
        e1?.courseImageSmall == e2?.courseImageSmall &&
        e1?.courseName == e2?.courseName &&
        e1?.desc == e2?.desc;
  }

  @override
  int hash(CourseRecord? e) => const ListEquality().hash(
      [e?.id, e?.courseImageBig, e?.courseImageSmall, e?.courseName, e?.desc]);

  @override
  bool isValidKey(Object? o) => o is CourseRecord;
}
