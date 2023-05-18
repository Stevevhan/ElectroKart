import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PurchasedRecord extends FirestoreRecord {
  PurchasedRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "productid" field.
  DocumentReference? _productid;
  DocumentReference? get productid => _productid;
  bool hasProductid() => _productid != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "ts" field.
  DateTime? _ts;
  DateTime? get ts => _ts;
  bool hasTs() => _ts != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _productid = snapshotData['productid'] as DocumentReference?;
    _price = castToType<double>(snapshotData['price']);
    _ts = snapshotData['ts'] as DateTime?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('purchased')
          : FirebaseFirestore.instance.collectionGroup('purchased');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('purchased').doc();

  static Stream<PurchasedRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PurchasedRecord.fromSnapshot(s));

  static Future<PurchasedRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PurchasedRecord.fromSnapshot(s));

  static PurchasedRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PurchasedRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PurchasedRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PurchasedRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PurchasedRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createPurchasedRecordData({
  DocumentReference? productid,
  double? price,
  DateTime? ts,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'productid': productid,
      'price': price,
      'ts': ts,
    }.withoutNulls,
  );

  return firestoreData;
}
