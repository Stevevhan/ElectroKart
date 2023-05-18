import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SoldRecord extends FirestoreRecord {
  SoldRecord._(
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

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _productid = snapshotData['productid'] as DocumentReference?;
    _price = castToType<double>(snapshotData['price']);
    _ts = snapshotData['ts'] as DateTime?;
    _status = snapshotData['status'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('sold')
          : FirebaseFirestore.instance.collectionGroup('sold');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('sold').doc();

  static Stream<SoldRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SoldRecord.fromSnapshot(s));

  static Future<SoldRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SoldRecord.fromSnapshot(s));

  static SoldRecord fromSnapshot(DocumentSnapshot snapshot) => SoldRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SoldRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SoldRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SoldRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createSoldRecordData({
  DocumentReference? productid,
  double? price,
  DateTime? ts,
  String? status,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'productid': productid,
      'price': price,
      'ts': ts,
      'status': status,
    }.withoutNulls,
  );

  return firestoreData;
}
