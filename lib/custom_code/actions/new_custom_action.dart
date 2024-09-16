// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<List<QuestionStruct>> newCustomAction(
    List<CoursePracticeTestRecord> list1) async {
  // convert list of document to kis of datatype
  List<QuestionStruct> result = [];

  for (var i = 0; i < list1.length; i++) {
    CoursePracticeTestRecord record = list1[i];
    QuestionStruct question = QuestionStruct(
      cname: record.courseName,
      question: record.question,
      op1: record.option1,
      op2: record.option2,
      op3: record.option3,
      op4: record.option4,
      result: record.result,
    );
    result.add(question);
  }
  return result;
}
