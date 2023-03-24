// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reviews_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ReviewsRecord> _$reviewsRecordSerializer =
    new _$ReviewsRecordSerializer();

class _$ReviewsRecordSerializer implements StructuredSerializer<ReviewsRecord> {
  @override
  final Iterable<Type> types = const [ReviewsRecord, _$ReviewsRecord];
  @override
  final String wireName = 'ReviewsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ReviewsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.rating;
    if (value != null) {
      result
        ..add('rating')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.review;
    if (value != null) {
      result
        ..add('review')
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
  ReviewsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReviewsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'rating':
          result.rating = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'review':
          result.review = serializers.deserialize(value,
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

class _$ReviewsRecord extends ReviewsRecord {
  @override
  final int? rating;
  @override
  final String? review;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ReviewsRecord([void Function(ReviewsRecordBuilder)? updates]) =>
      (new ReviewsRecordBuilder()..update(updates))._build();

  _$ReviewsRecord._({this.rating, this.review, this.ffRef}) : super._();

  @override
  ReviewsRecord rebuild(void Function(ReviewsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReviewsRecordBuilder toBuilder() => new ReviewsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReviewsRecord &&
        rating == other.rating &&
        review == other.review &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, rating.hashCode);
    _$hash = $jc(_$hash, review.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ReviewsRecord')
          ..add('rating', rating)
          ..add('review', review)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ReviewsRecordBuilder
    implements Builder<ReviewsRecord, ReviewsRecordBuilder> {
  _$ReviewsRecord? _$v;

  int? _rating;
  int? get rating => _$this._rating;
  set rating(int? rating) => _$this._rating = rating;

  String? _review;
  String? get review => _$this._review;
  set review(String? review) => _$this._review = review;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ReviewsRecordBuilder() {
    ReviewsRecord._initializeBuilder(this);
  }

  ReviewsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _rating = $v.rating;
      _review = $v.review;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReviewsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ReviewsRecord;
  }

  @override
  void update(void Function(ReviewsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ReviewsRecord build() => _build();

  _$ReviewsRecord _build() {
    final _$result = _$v ??
        new _$ReviewsRecord._(rating: rating, review: review, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
