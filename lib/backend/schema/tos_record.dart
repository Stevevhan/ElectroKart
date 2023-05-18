import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TosRecord extends FirestoreRecord {
  TosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "termsofservice" field.
  bool? _termsofservice;
  bool get termsofservice => _termsofservice ?? false;
  bool hasTermsofservice() => _termsofservice != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _termsofservice = snapshotData['termsofservice'] as bool?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('TOS')
          : FirebaseFirestore.instance.collectionGroup('TOS');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('TOS').doc();

  static Stream<TosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TosRecord.fromSnapshot(s));

  static Future<TosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TosRecord.fromSnapshot(s));

  static TosRecord fromSnapshot(DocumentSnapshot snapshot) => TosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TosRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createTosRecordData({
  bool? termsofservice,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'termsofservice': termsofservice,
    }.withoutNulls,
  );

  return firestoreData;
}
