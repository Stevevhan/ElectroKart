import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

int? countOfRecords(List<ReviewsRecord>? collection) {
  // return count of documents
  return collection?.length ?? 0;
}

double? getAverageFromList(List<double>? itemList) {
  // get average of a list
  var count = 0;
  var sum = 0.0;

  if (itemList == null) {
    return null;
  }

  for (var i = 0; i < itemList.length; i++) {
    sum += itemList[i];
    count++;
  }
  return (sum / count);
}

bool? showSearchResult(
  String textSearchfor,
  String textSearchln,
) {
  return textSearchln.toLowerCase().contains(textSearchfor.toLowerCase());
}

List<DocumentReference> createChatUserList(
  DocumentReference userRef1,
  DocumentReference userRef2,
) {
  return [userRef1, userRef2];
}
