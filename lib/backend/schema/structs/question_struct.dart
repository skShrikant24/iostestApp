// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class QuestionStruct extends FFFirebaseStruct {
  QuestionStruct({
    String? question,
    String? cname,
    String? op1,
    String? op2,
    String? op3,
    String? op4,
    String? result,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _question = question,
        _cname = cname,
        _op1 = op1,
        _op2 = op2,
        _op3 = op3,
        _op4 = op4,
        _result = result,
        super(firestoreUtilData);

  // "question" field.
  String? _question;
  String get question => _question ?? '';
  set question(String? val) => _question = val;

  bool hasQuestion() => _question != null;

  // "cname" field.
  String? _cname;
  String get cname => _cname ?? '';
  set cname(String? val) => _cname = val;

  bool hasCname() => _cname != null;

  // "op1" field.
  String? _op1;
  String get op1 => _op1 ?? '';
  set op1(String? val) => _op1 = val;

  bool hasOp1() => _op1 != null;

  // "op2" field.
  String? _op2;
  String get op2 => _op2 ?? '';
  set op2(String? val) => _op2 = val;

  bool hasOp2() => _op2 != null;

  // "op3" field.
  String? _op3;
  String get op3 => _op3 ?? '';
  set op3(String? val) => _op3 = val;

  bool hasOp3() => _op3 != null;

  // "op4" field.
  String? _op4;
  String get op4 => _op4 ?? '';
  set op4(String? val) => _op4 = val;

  bool hasOp4() => _op4 != null;

  // "result" field.
  String? _result;
  String get result => _result ?? '';
  set result(String? val) => _result = val;

  bool hasResult() => _result != null;

  static QuestionStruct fromMap(Map<String, dynamic> data) => QuestionStruct(
        question: data['question'] as String?,
        cname: data['cname'] as String?,
        op1: data['op1'] as String?,
        op2: data['op2'] as String?,
        op3: data['op3'] as String?,
        op4: data['op4'] as String?,
        result: data['result'] as String?,
      );

  static QuestionStruct? maybeFromMap(dynamic data) =>
      data is Map ? QuestionStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'question': _question,
        'cname': _cname,
        'op1': _op1,
        'op2': _op2,
        'op3': _op3,
        'op4': _op4,
        'result': _result,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'question': serializeParam(
          _question,
          ParamType.String,
        ),
        'cname': serializeParam(
          _cname,
          ParamType.String,
        ),
        'op1': serializeParam(
          _op1,
          ParamType.String,
        ),
        'op2': serializeParam(
          _op2,
          ParamType.String,
        ),
        'op3': serializeParam(
          _op3,
          ParamType.String,
        ),
        'op4': serializeParam(
          _op4,
          ParamType.String,
        ),
        'result': serializeParam(
          _result,
          ParamType.String,
        ),
      }.withoutNulls;

  static QuestionStruct fromSerializableMap(Map<String, dynamic> data) =>
      QuestionStruct(
        question: deserializeParam(
          data['question'],
          ParamType.String,
          false,
        ),
        cname: deserializeParam(
          data['cname'],
          ParamType.String,
          false,
        ),
        op1: deserializeParam(
          data['op1'],
          ParamType.String,
          false,
        ),
        op2: deserializeParam(
          data['op2'],
          ParamType.String,
          false,
        ),
        op3: deserializeParam(
          data['op3'],
          ParamType.String,
          false,
        ),
        op4: deserializeParam(
          data['op4'],
          ParamType.String,
          false,
        ),
        result: deserializeParam(
          data['result'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'QuestionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is QuestionStruct &&
        question == other.question &&
        cname == other.cname &&
        op1 == other.op1 &&
        op2 == other.op2 &&
        op3 == other.op3 &&
        op4 == other.op4 &&
        result == other.result;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([question, cname, op1, op2, op3, op4, result]);
}

QuestionStruct createQuestionStruct({
  String? question,
  String? cname,
  String? op1,
  String? op2,
  String? op3,
  String? op4,
  String? result,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    QuestionStruct(
      question: question,
      cname: cname,
      op1: op1,
      op2: op2,
      op3: op3,
      op4: op4,
      result: result,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

QuestionStruct? updateQuestionStruct(
  QuestionStruct? questionStruct, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    questionStruct
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addQuestionStructData(
  Map<String, dynamic> firestoreData,
  QuestionStruct? questionStruct,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (questionStruct == null) {
    return;
  }
  if (questionStruct.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && questionStruct.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final questionStructData =
      getQuestionFirestoreData(questionStruct, forFieldValue);
  final nestedData =
      questionStructData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = questionStruct.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getQuestionFirestoreData(
  QuestionStruct? questionStruct, [
  bool forFieldValue = false,
]) {
  if (questionStruct == null) {
    return {};
  }
  final firestoreData = mapToFirestore(questionStruct.toMap());

  // Add any Firestore field values
  questionStruct.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getQuestionListFirestoreData(
  List<QuestionStruct>? questionStructs,
) =>
    questionStructs?.map((e) => getQuestionFirestoreData(e, true)).toList() ??
    [];
