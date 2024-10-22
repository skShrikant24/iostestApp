import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<String> _productimage = [];
  List<String> get productimage => _productimage;
  set productimage(List<String> value) {
    _productimage = value;
  }

  void addToProductimage(String value) {
    productimage.add(value);
  }

  void removeFromProductimage(String value) {
    productimage.remove(value);
  }

  void removeAtIndexFromProductimage(int index) {
    productimage.removeAt(index);
  }

  void updateProductimageAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    productimage[index] = updateFn(_productimage[index]);
  }

  void insertAtIndexInProductimage(int index, String value) {
    productimage.insert(index, value);
  }

  String _videoUrl = '';
  String get videoUrl => _videoUrl;
  set videoUrl(String value) {
    _videoUrl = value;
  }

  List<QuestionStruct> _listQuestion = [];
  List<QuestionStruct> get listQuestion => _listQuestion;
  set listQuestion(List<QuestionStruct> value) {
    _listQuestion = value;
  }

  void addToListQuestion(QuestionStruct value) {
    listQuestion.add(value);
  }

  void removeFromListQuestion(QuestionStruct value) {
    listQuestion.remove(value);
  }

  void removeAtIndexFromListQuestion(int index) {
    listQuestion.removeAt(index);
  }

  void updateListQuestionAtIndex(
    int index,
    QuestionStruct Function(QuestionStruct) updateFn,
  ) {
    listQuestion[index] = updateFn(_listQuestion[index]);
  }

  void insertAtIndexInListQuestion(int index, QuestionStruct value) {
    listQuestion.insert(index, value);
  }

  String _mobileno = '';
  String get mobileno => _mobileno;
  set mobileno(String value) {
    _mobileno = value;
  }
}
