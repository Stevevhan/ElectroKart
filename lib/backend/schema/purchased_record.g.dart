// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchased_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PurchasedRecord> _$purchasedRecordSerializer =
    new _$PurchasedRecordSerializer();

class _$PurchasedRecordSerializer
    implements StructuredSerializer<PurchasedRecord> {
  @override
  final Iterable<Type> types = const [PurchasedRecord, _$PurchasedRecord];
  @override
  final String wireName = 'PurchasedRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, PurchasedRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.productid;
    if (value != null) {
      result
        ..add('productid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('price')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.ts;
    if (value != null) {
      result
        ..add('ts')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  PurchasedRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PurchasedRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'productid':
          result.productid = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'ts':
          result.ts = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$PurchasedRecord extends PurchasedRecord {
  @override
  final DocumentReference<Object?>? productid;
  @override
  final double? price;
  @override
  final DateTime? ts;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PurchasedRecord([void Function(PurchasedRecordBuilder)? updates]) =>
      (new PurchasedRecordBuilder()..update(updates))._build();

  _$PurchasedRecord._({this.productid, this.price, this.ts, this.ffRef})
      : super._();

  @override
  PurchasedRecord rebuild(void Function(PurchasedRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PurchasedRecordBuilder toBuilder() =>
      new PurchasedRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PurchasedRecord &&
        productid == other.productid &&
        price == other.price &&
        ts == other.ts &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, productid.hashCode);
    _$hash = $jc(_$hash, price.hashCode);
    _$hash = $jc(_$hash, ts.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PurchasedRecord')
          ..add('productid', productid)
          ..add('price', price)
          ..add('ts', ts)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PurchasedRecordBuilder
    implements Builder<PurchasedRecord, PurchasedRecordBuilder> {
  _$PurchasedRecord? _$v;

  DocumentReference<Object?>? _productid;
  DocumentReference<Object?>? get productid => _$this._productid;
  set productid(DocumentReference<Object?>? productid) =>
      _$this._productid = productid;

  double? _price;
  double? get price => _$this._price;
  set price(double? price) => _$this._price = price;

  DateTime? _ts;
  DateTime? get ts => _$this._ts;
  set ts(DateTime? ts) => _$this._ts = ts;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PurchasedRecordBuilder() {
    PurchasedRecord._initializeBuilder(this);
  }

  PurchasedRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _productid = $v.productid;
      _price = $v.price;
      _ts = $v.ts;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PurchasedRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PurchasedRecord;
  }

  @override
  void update(void Function(PurchasedRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PurchasedRecord build() => _build();

  _$PurchasedRecord _build() {
    final _$result = _$v ??
        new _$PurchasedRecord._(
            productid: productid, price: price, ts: ts, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
