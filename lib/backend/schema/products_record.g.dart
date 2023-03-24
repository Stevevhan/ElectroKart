// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProductsRecord> _$productsRecordSerializer =
    new _$ProductsRecordSerializer();

class _$ProductsRecordSerializer
    implements StructuredSerializer<ProductsRecord> {
  @override
  final Iterable<Type> types = const [ProductsRecord, _$ProductsRecord];
  @override
  final String wireName = 'ProductsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ProductsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('Name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.category;
    if (value != null) {
      result
        ..add('Category')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.thumb;
    if (value != null) {
      result
        ..add('Thumb')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.desc;
    if (value != null) {
      result
        ..add('Desc')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cost;
    if (value != null) {
      result
        ..add('Cost')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.sellerid;
    if (value != null) {
      result
        ..add('sellerid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.parish;
    if (value != null) {
      result
        ..add('parish')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.likedBy;
    if (value != null) {
      result
        ..add('liked_by')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.cart;
    if (value != null) {
      result
        ..add('cart')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(bool)])));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('Status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.quantity;
    if (value != null) {
      result
        ..add('Quantity')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.condition;
    if (value != null) {
      result
        ..add('Condition')
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
  ProductsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProductsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Category':
          result.category = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Thumb':
          result.thumb = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Desc':
          result.desc = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Cost':
          result.cost = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'sellerid':
          result.sellerid = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'parish':
          result.parish = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'liked_by':
          result.likedBy.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'cart':
          result.cart.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(bool)]))!
              as BuiltList<Object?>);
          break;
        case 'Status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Quantity':
          result.quantity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Condition':
          result.condition = serializers.deserialize(value,
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

class _$ProductsRecord extends ProductsRecord {
  @override
  final String? name;
  @override
  final String? category;
  @override
  final String? thumb;
  @override
  final String? desc;
  @override
  final int? cost;
  @override
  final DocumentReference<Object?>? sellerid;
  @override
  final String? parish;
  @override
  final BuiltList<DocumentReference<Object?>>? likedBy;
  @override
  final BuiltList<bool>? cart;
  @override
  final String? status;
  @override
  final int? quantity;
  @override
  final String? condition;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ProductsRecord([void Function(ProductsRecordBuilder)? updates]) =>
      (new ProductsRecordBuilder()..update(updates))._build();

  _$ProductsRecord._(
      {this.name,
      this.category,
      this.thumb,
      this.desc,
      this.cost,
      this.sellerid,
      this.parish,
      this.likedBy,
      this.cart,
      this.status,
      this.quantity,
      this.condition,
      this.ffRef})
      : super._();

  @override
  ProductsRecord rebuild(void Function(ProductsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductsRecordBuilder toBuilder() =>
      new ProductsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductsRecord &&
        name == other.name &&
        category == other.category &&
        thumb == other.thumb &&
        desc == other.desc &&
        cost == other.cost &&
        sellerid == other.sellerid &&
        parish == other.parish &&
        likedBy == other.likedBy &&
        cart == other.cart &&
        status == other.status &&
        quantity == other.quantity &&
        condition == other.condition &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, category.hashCode);
    _$hash = $jc(_$hash, thumb.hashCode);
    _$hash = $jc(_$hash, desc.hashCode);
    _$hash = $jc(_$hash, cost.hashCode);
    _$hash = $jc(_$hash, sellerid.hashCode);
    _$hash = $jc(_$hash, parish.hashCode);
    _$hash = $jc(_$hash, likedBy.hashCode);
    _$hash = $jc(_$hash, cart.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, quantity.hashCode);
    _$hash = $jc(_$hash, condition.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ProductsRecord')
          ..add('name', name)
          ..add('category', category)
          ..add('thumb', thumb)
          ..add('desc', desc)
          ..add('cost', cost)
          ..add('sellerid', sellerid)
          ..add('parish', parish)
          ..add('likedBy', likedBy)
          ..add('cart', cart)
          ..add('status', status)
          ..add('quantity', quantity)
          ..add('condition', condition)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ProductsRecordBuilder
    implements Builder<ProductsRecord, ProductsRecordBuilder> {
  _$ProductsRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _category;
  String? get category => _$this._category;
  set category(String? category) => _$this._category = category;

  String? _thumb;
  String? get thumb => _$this._thumb;
  set thumb(String? thumb) => _$this._thumb = thumb;

  String? _desc;
  String? get desc => _$this._desc;
  set desc(String? desc) => _$this._desc = desc;

  int? _cost;
  int? get cost => _$this._cost;
  set cost(int? cost) => _$this._cost = cost;

  DocumentReference<Object?>? _sellerid;
  DocumentReference<Object?>? get sellerid => _$this._sellerid;
  set sellerid(DocumentReference<Object?>? sellerid) =>
      _$this._sellerid = sellerid;

  String? _parish;
  String? get parish => _$this._parish;
  set parish(String? parish) => _$this._parish = parish;

  ListBuilder<DocumentReference<Object?>>? _likedBy;
  ListBuilder<DocumentReference<Object?>> get likedBy =>
      _$this._likedBy ??= new ListBuilder<DocumentReference<Object?>>();
  set likedBy(ListBuilder<DocumentReference<Object?>>? likedBy) =>
      _$this._likedBy = likedBy;

  ListBuilder<bool>? _cart;
  ListBuilder<bool> get cart => _$this._cart ??= new ListBuilder<bool>();
  set cart(ListBuilder<bool>? cart) => _$this._cart = cart;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  int? _quantity;
  int? get quantity => _$this._quantity;
  set quantity(int? quantity) => _$this._quantity = quantity;

  String? _condition;
  String? get condition => _$this._condition;
  set condition(String? condition) => _$this._condition = condition;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ProductsRecordBuilder() {
    ProductsRecord._initializeBuilder(this);
  }

  ProductsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _category = $v.category;
      _thumb = $v.thumb;
      _desc = $v.desc;
      _cost = $v.cost;
      _sellerid = $v.sellerid;
      _parish = $v.parish;
      _likedBy = $v.likedBy?.toBuilder();
      _cart = $v.cart?.toBuilder();
      _status = $v.status;
      _quantity = $v.quantity;
      _condition = $v.condition;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ProductsRecord;
  }

  @override
  void update(void Function(ProductsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ProductsRecord build() => _build();

  _$ProductsRecord _build() {
    _$ProductsRecord _$result;
    try {
      _$result = _$v ??
          new _$ProductsRecord._(
              name: name,
              category: category,
              thumb: thumb,
              desc: desc,
              cost: cost,
              sellerid: sellerid,
              parish: parish,
              likedBy: _likedBy?.build(),
              cart: _cart?.build(),
              status: status,
              quantity: quantity,
              condition: condition,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'likedBy';
        _likedBy?.build();
        _$failedField = 'cart';
        _cart?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ProductsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
