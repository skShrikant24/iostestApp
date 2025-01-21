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

import 'package:xml/xml.dart';
import 'dart:convert';

Future<List<dynamic>> parseXmlTocourselist(String xmlString) async {
  // Parse the XML string
  print(xmlString);
  final document = XmlDocument.parse(xmlString);

  // Extract the data from the XML
  final jsonString = document.findAllElements('string').first.text;

  // Convert the extracted data to JSON
  final List<dynamic> jsonData = jsonDecode(jsonString);

  // Process JSON data
  final List<dynamic> result = jsonData.map((item) {
    return {
      'CourseCode': item['CourseCode'],
      'ImageName': item['ImageName'],
      'CDet': item['CDet'],
      'Sid': item['Sid'],
    };
  }).toList();
  print(result);
  return result;
}
