import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CoursePracticeTestRecord extends FirestoreRecord {
  CoursePracticeTestRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "course_name" field.
  String? _courseName;
  String get courseName => _courseName ?? '';
  bool hasCourseName() => _courseName != null;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "option1" field.
  String? _option1;
  String get option1 => _option1 ?? '';
  bool hasOption1() => _option1 != null;

  // "option2" field.
  String? _option2;
  String get option2 => _option2 ?? '';
  bool hasOption2() => _option2 != null;

  // "option3" field.
  String? _option3;
  String get option3 => _option3 ?? '';
  bool hasOption3() => _option3 != null;

  // "option4" field.
  String? _option4;
  String get option4 => _option4 ?? '';
  bool hasOption4() => _option4 != null;

  // "question" field.
  String? _question;
  String get question => _question ?? '';
  bool hasQuestion() => _question != null;

  // "result" field.
  String? _result;
  String get result => _result ?? '';
  bool hasResult() => _result != null;

  void _initializeFields() {
    _courseName = snapshotData['course_name'] as String?;
    _id = snapshotData['id'] as String?;
    _option1 = snapshotData['option1'] as String?;
    _option2 = snapshotData['option2'] as String?;
    _option3 = snapshotData['option3'] as String?;
    _option4 = snapshotData['option4'] as String?;
    _question = snapshotData['question'] as String?;
    _result = snapshotData['result'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('COURSE_PRACTICE_TEST');

  static Stream<CoursePracticeTestRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CoursePracticeTestRecord.fromSnapshot(s));

  static Future<CoursePracticeTestRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => CoursePracticeTestRecord.fromSnapshot(s));

  static CoursePracticeTestRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CoursePracticeTestRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CoursePracticeTestRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CoursePracticeTestRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CoursePracticeTestRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CoursePracticeTestRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCoursePracticeTestRecordData({
  String? courseName,
  String? id,
  String? option1,
  String? option2,
  String? option3,
  String? option4,
  String? question,
  String? result,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'course_name': courseName,
      'id': id,
      'option1': option1,
      'option2': option2,
      'option3': option3,
      'option4': option4,
      'question': question,
      'result': result,
    }.withoutNulls,
  );

  return firestoreData;
}

class CoursePracticeTestRecordDocumentEquality
    implements Equality<CoursePracticeTestRecord> {
  const CoursePracticeTestRecordDocumentEquality();

  @override
  bool equals(CoursePracticeTestRecord? e1, CoursePracticeTestRecord? e2) {
    return e1?.courseName == e2?.courseName &&
        e1?.id == e2?.id &&
        e1?.option1 == e2?.option1 &&
        e1?.option2 == e2?.option2 &&
        e1?.option3 == e2?.option3 &&
        e1?.option4 == e2?.option4 &&
        e1?.question == e2?.question &&
        e1?.result == e2?.result;
  }

  @override
  int hash(CoursePracticeTestRecord? e) => const ListEquality().hash([
        e?.courseName,
        e?.id,
        e?.option1,
        e?.option2,
        e?.option3,
        e?.option4,
        e?.question,
        e?.result
      ]);

  @override
  bool isValidKey(Object? o) => o is CoursePracticeTestRecord;
}
