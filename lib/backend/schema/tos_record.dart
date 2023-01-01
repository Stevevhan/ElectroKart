import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'tos_record.g.dart';

abstract class TosRecord implements Built<TosRecord, TosRecordBuilder> {
  static Serializer<TosRecord> get serializer => _$tosRecordSerializer;

  bool? get termsofservice;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(TosRecordBuilder builder) =>
      builder..termsofservice = false;

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('TOS')
          : FirebaseFirestore.instance.collectionGroup('TOS');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('TOS').doc();

  static Stream<TosRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<TosRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  TosRecord._();
  factory TosRecord([void Function(TosRecordBuilder) updates]) = _$TosRecord;

  static TosRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createTosRecordData({
  bool? termsofservice,
}) {
  final firestoreData = serializers.toFirestore(
    TosRecord.serializer,
    TosRecord(
      (t) => t..termsofservice = termsofservice,
    ),
  );

  return firestoreData;
}
