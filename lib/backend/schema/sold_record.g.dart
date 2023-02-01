// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sold_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SoldRecord> _$soldRecordSerializer = new _$SoldRecordSerializer();

class _$SoldRecordSerializer implements StructuredSerializer<SoldRecord> {
  @override
  final Iterable<Type> types = const [SoldRecord, _$SoldRecord];
  @override
  final String wireName = 'SoldRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, SoldRecord object,
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
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  SoldRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SoldRecordBuilder();

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
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$SoldRecord extends SoldRecord {
  @override
  final DocumentReference<Object?>? productid;
  @override
  final double? price;
  @override
  final DateTime? ts;
  @override
  final String? status;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$SoldRecord([void Function(SoldRecordBuilder)? updates]) =>
      (new SoldRecordBuilder()..update(updates))._build();

  _$SoldRecord._({this.productid, this.price, this.ts, this.status, this.ffRef})
      : super._();

  @override
  SoldRecord rebuild(void Function(SoldRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SoldRecordBuilder toBuilder() => new SoldRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SoldRecord &&
        productid == other.productid &&
        price == other.price &&
        ts == other.ts &&
        status == other.status &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, productid.hashCode), price.hashCode), ts.hashCode),
            status.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SoldRecord')
          ..add('productid', productid)
          ..add('price', price)
          ..add('ts', ts)
          ..add('status', status)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class SoldRecordBuilder implements Builder<SoldRecord, SoldRecordBuilder> {
  _$SoldRecord? _$v;

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

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  SoldRecordBuilder() {
    SoldRecord._initializeBuilder(this);
  }

  SoldRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _productid = $v.productid;
      _price = $v.price;
      _ts = $v.ts;
      _status = $v.status;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SoldRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SoldRecord;
  }

  @override
  void update(void Function(SoldRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SoldRecord build() => _build();

  _$SoldRecord _build() {
    final _$result = _$v ??
        new _$SoldRecord._(
            productid: productid,
            price: price,
            ts: ts,
            status: status,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
