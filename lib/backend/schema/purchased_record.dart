import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'purchased_record.g.dart';

abstract class PurchasedRecord
    implements Built<PurchasedRecord, PurchasedRecordBuilder> {
  static Serializer<PurchasedRecord> get serializer =>
      _$purchasedRecordSerializer;

  DocumentReference? get productid;

  double? get price;

  DateTime? get ts;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(PurchasedRecordBuilder builder) =>
      builder..price = 0.0;

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('purchased')
          : FirebaseFirestore.instance.collectionGroup('purchased');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('purchased').doc();

  static Stream<PurchasedRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<PurchasedRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  PurchasedRecord._();
  factory PurchasedRecord([void Function(PurchasedRecordBuilder) updates]) =
      _$PurchasedRecord;

  static PurchasedRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createPurchasedRecordData({
  DocumentReference? productid,
  double? price,
  DateTime? ts,
}) {
  final firestoreData = serializers.toFirestore(
    PurchasedRecord.serializer,
    PurchasedRecord(
      (p) => p
        ..productid = productid
        ..price = price
        ..ts = ts,
    ),
  );

  return firestoreData;
}
