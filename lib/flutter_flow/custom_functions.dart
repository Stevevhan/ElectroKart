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

bool? showmultipleSearchResult(
  String textSearchfor,
  String textSearchln,
  String? textSearchln2,
) {
  return textSearchln.toLowerCase().contains(textSearchfor.toLowerCase()) ||
      (textSearchln2 != null &&
          textSearchln2.toLowerCase().contains(textSearchfor.toLowerCase()));
}

bool? combinedSearchResult(
  String textSearchfor,
  String textSearchln,
  String? textSearchln2,
  String? textSearchln3,
  String? textSearchln4,
) {
  String sanitizedSearchText = textSearchfor.toLowerCase().replaceAll(' ', '');
  String sanitizedTextSearchln = textSearchln.toLowerCase().replaceAll(' ', '');
  List<String> sortedSearchFor = sanitizedSearchText.split('')..sort();
  List<String> sortedTextSearchln = sanitizedTextSearchln.split('')..sort();
  bool containsText = sortedSearchFor.every(sortedTextSearchln.contains);

  if (textSearchln2 != null) {
    String sanitizedTextSearchln2 =
        textSearchln2.toLowerCase().replaceAll(' ', '');
    List<String> sortedTextSearchln2 = sanitizedTextSearchln2.split('')..sort();
    containsText =
        containsText || sortedSearchFor.every(sortedTextSearchln2.contains);
  }

  if (textSearchln3 != null) {
    String sanitizedTextSearchln3 =
        textSearchln3.toLowerCase().replaceAll(' ', '');
    List<String> sortedTextSearchln3 = sanitizedTextSearchln3.split('')..sort();
    containsText =
        containsText || sortedSearchFor.every(sortedTextSearchln3.contains);
  }

  if (containsText) {
    String combinedResult = textSearchln +
        (textSearchln2 != null ? ' ' + textSearchln2 : '') +
        (textSearchln3 != null ? ' ' + textSearchln3 : '');
    print(combinedResult);
    return true;
  }

  return false;
}

int? priceFilterMethod(String? priceFilterValue) {
  if (priceFilterValue == null || priceFilterValue.isEmpty) {
    return 0;
  } else {
    return int.parse(priceFilterValue);
  }
}
