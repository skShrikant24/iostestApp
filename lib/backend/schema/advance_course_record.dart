import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AdvanceCourseRecord extends FirestoreRecord {
  AdvanceCourseRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "course_name" field.
  String? _courseName;
  String get courseName => _courseName ?? '';
  bool hasCourseName() => _courseName != null;

  void _initializeFields() {
    _courseName = snapshotData['course_name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ADVANCE_COURSE');

  static Stream<AdvanceCourseRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AdvanceCourseRecord.fromSnapshot(s));

  static Future<AdvanceCourseRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AdvanceCourseRecord.fromSnapshot(s));

  static AdvanceCourseRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AdvanceCourseRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AdvanceCourseRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AdvanceCourseRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AdvanceCourseRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AdvanceCourseRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAdvanceCourseRecordData({
  String? courseName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'course_name': courseName,
    }.withoutNulls,
  );

  return firestoreData;
}

class AdvanceCourseRecordDocumentEquality
    implements Equality<AdvanceCourseRecord> {
  const AdvanceCourseRecordDocumentEquality();

  @override
  bool equals(AdvanceCourseRecord? e1, AdvanceCourseRecord? e2) {
    return e1?.courseName == e2?.courseName;
  }

  @override
  int hash(AdvanceCourseRecord? e) =>
      const ListEquality().hash([e?.courseName]);

  @override
  bool isValidKey(Object? o) => o is AdvanceCourseRecord;
}
