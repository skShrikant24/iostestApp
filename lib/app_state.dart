import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _mobileno = prefs.getString('ff_mobileno') ?? _mobileno;
    });
    _safeInit(() {
      _dId = prefs.getString('ff_dId') ?? _dId;
    });
    _safeInit(() {
      _eapcode = prefs.getString('ff_eapcode') ?? _eapcode;
    });
    _safeInit(() {
      _password = prefs.getString('ff_password') ?? _password;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

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
    prefs.setString('ff_mobileno', value);
  }

  String _dId = '';
  String get dId => _dId;
  set dId(String value) {
    _dId = value;
    prefs.setString('ff_dId', value);
  }

  String _eapcode = '';
  String get eapcode => _eapcode;
  set eapcode(String value) {
    _eapcode = value;
    prefs.setString('ff_eapcode', value);
  }

  String _password = '';
  String get password => _password;
  set password(String value) {
    _password = value;
    prefs.setString('ff_password', value);
  }

  List<dynamic> _mocktestlist = [];
  List<dynamic> get mocktestlist => _mocktestlist;
  set mocktestlist(List<dynamic> value) {
    _mocktestlist = value;
  }

  void addToMocktestlist(dynamic value) {
    mocktestlist.add(value);
  }

  void removeFromMocktestlist(dynamic value) {
    mocktestlist.remove(value);
  }

  void removeAtIndexFromMocktestlist(int index) {
    mocktestlist.removeAt(index);
  }

  void updateMocktestlistAtIndex(
    int index,
    dynamic Function(dynamic) updateFn,
  ) {
    mocktestlist[index] = updateFn(_mocktestlist[index]);
  }

  void insertAtIndexInMocktestlist(int index, dynamic value) {
    mocktestlist.insert(index, value);
  }

  int _obtainmarks = 0;
  int get obtainmarks => _obtainmarks;
  set obtainmarks(int value) {
    _obtainmarks = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
