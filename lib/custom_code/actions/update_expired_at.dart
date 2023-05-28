// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> updateExpiredAt(String docId) async {
  final chatsCollection = FirebaseFirestore.instance.collection('chats');
  final DateTime expirationDate = DateTime.now().add(Duration(days: 30));

  await chatsCollection.doc(docId).update({'expiredAt': expirationDate});
}
