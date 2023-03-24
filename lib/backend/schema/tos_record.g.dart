// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tos_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TosRecord> _$tosRecordSerializer = new _$TosRecordSerializer();

class _$TosRecordSerializer implements StructuredSerializer<TosRecord> {
  @override
  final Iterable<Type> types = const [TosRecord, _$TosRecord];
  @override
  final String wireName = 'TosRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, TosRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.termsofservice;
    if (value != null) {
      result
        ..add('termsofservice')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
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
  TosRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TosRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'termsofservice':
          result.termsofservice = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
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

class _$TosRecord extends TosRecord {
  @override
  final bool? termsofservice;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$TosRecord([void Function(TosRecordBuilder)? updates]) =>
      (new TosRecordBuilder()..update(updates))._build();

  _$TosRecord._({this.termsofservice, this.ffRef}) : super._();

  @override
  TosRecord rebuild(void Function(TosRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TosRecordBuilder toBuilder() => new TosRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TosRecord &&
        termsofservice == other.termsofservice &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, termsofservice.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TosRecord')
          ..add('termsofservice', termsofservice)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class TosRecordBuilder implements Builder<TosRecord, TosRecordBuilder> {
  _$TosRecord? _$v;

  bool? _termsofservice;
  bool? get termsofservice => _$this._termsofservice;
  set termsofservice(bool? termsofservice) =>
      _$this._termsofservice = termsofservice;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  TosRecordBuilder() {
    TosRecord._initializeBuilder(this);
  }

  TosRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _termsofservice = $v.termsofservice;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TosRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TosRecord;
  }

  @override
  void update(void Function(TosRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TosRecord build() => _build();

  _$TosRecord _build() {
    final _$result =
        _$v ?? new _$TosRecord._(termsofservice: termsofservice, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
