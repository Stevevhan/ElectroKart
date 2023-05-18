import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductsRecord extends FirestoreRecord {
  ProductsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "Category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "Thumb" field.
  String? _thumb;
  String get thumb => _thumb ?? '';
  bool hasThumb() => _thumb != null;

  // "Desc" field.
  String? _desc;
  String get desc => _desc ?? '';
  bool hasDesc() => _desc != null;

  // "Cost" field.
  int? _cost;
  int get cost => _cost ?? 0;
  bool hasCost() => _cost != null;

  // "sellerid" field.
  DocumentReference? _sellerid;
  DocumentReference? get sellerid => _sellerid;
  bool hasSellerid() => _sellerid != null;

  // "parish" field.
  String? _parish;
  String get parish => _parish ?? '';
  bool hasParish() => _parish != null;

  // "liked_by" field.
  List<DocumentReference>? _likedBy;
  List<DocumentReference> get likedBy => _likedBy ?? const [];
  bool hasLikedBy() => _likedBy != null;

  // "cart" field.
  List<bool>? _cart;
  List<bool> get cart => _cart ?? const [];
  bool hasCart() => _cart != null;

  // "Status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  // "Quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;

  // "Condition" field.
  String? _condition;
  String get condition => _condition ?? '';
  bool hasCondition() => _condition != null;

  void _initializeFields() {
    _name = snapshotData['Name'] as String?;
    _category = snapshotData['Category'] as String?;
    _thumb = snapshotData['Thumb'] as String?;
    _desc = snapshotData['Desc'] as String?;
    _cost = snapshotData['Cost'] as int?;
    _sellerid = snapshotData['sellerid'] as DocumentReference?;
    _parish = snapshotData['parish'] as String?;
    _likedBy = getDataList(snapshotData['liked_by']);
    _cart = getDataList(snapshotData['cart']);
    _status = snapshotData['Status'] as String?;
    _quantity = snapshotData['Quantity'] as int?;
    _condition = snapshotData['Condition'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Products');

  static Stream<ProductsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductsRecord.fromSnapshot(s));

  static Future<ProductsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProductsRecord.fromSnapshot(s));

  static ProductsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductsRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createProductsRecordData({
  String? name,
  String? category,
  String? thumb,
  String? desc,
  int? cost,
  DocumentReference? sellerid,
  String? parish,
  String? status,
  int? quantity,
  String? condition,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Name': name,
      'Category': category,
      'Thumb': thumb,
      'Desc': desc,
      'Cost': cost,
      'sellerid': sellerid,
      'parish': parish,
      'Status': status,
      'Quantity': quantity,
      'Condition': condition,
    }.withoutNulls,
  );

  return firestoreData;
}
