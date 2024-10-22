import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

String? imgStrtoimagePath(String? imageLink) {
  return imageLink;
}

String? imagePatToString(String? imagePath) {
  return imagePath;
}

String? returnlink(String? string) {
  // return video url link
  if (string == null) {
    return null;
  }
  final regex = RegExp(
      r'(?:http:\/\/|https:\/\/)?(?:www\.)?(?:youtube\.com|youtu\.be)\/(?:watch\?v=)?(.{11})');
  final match = regex.firstMatch(string);
  if (match != null) {
    final videoId = match.group(1);
    return 'https://www.youtube.com/watch?v=$videoId';
  }
  return null;
}

String vidurl(String linkvid) {
  return linkvid;
}
