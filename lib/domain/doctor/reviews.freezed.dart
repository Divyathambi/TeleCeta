// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'reviews.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ReviewsTearOff {
  const _$ReviewsTearOff();

  _Reviews call({UniqueId? id, String? name, int? rating, String? content}) {
    return _Reviews(
      id: id,
      name: name,
      rating: rating,
      content: content,
    );
  }
}

/// @nodoc
const $Reviews = _$ReviewsTearOff();

/// @nodoc
mixin _$Reviews {
  UniqueId? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get rating => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReviewsCopyWith<Reviews> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewsCopyWith<$Res> {
  factory $ReviewsCopyWith(Reviews value, $Res Function(Reviews) then) =
      _$ReviewsCopyWithImpl<$Res>;
  $Res call({UniqueId? id, String? name, int? rating, String? content});
}

/// @nodoc
class _$ReviewsCopyWithImpl<$Res> implements $ReviewsCopyWith<$Res> {
  _$ReviewsCopyWithImpl(this._value, this._then);

  final Reviews _value;
  // ignore: unused_field
  final $Res Function(Reviews) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? rating = freezed,
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ReviewsCopyWith<$Res> implements $ReviewsCopyWith<$Res> {
  factory _$ReviewsCopyWith(_Reviews value, $Res Function(_Reviews) then) =
      __$ReviewsCopyWithImpl<$Res>;
  @override
  $Res call({UniqueId? id, String? name, int? rating, String? content});
}

/// @nodoc
class __$ReviewsCopyWithImpl<$Res> extends _$ReviewsCopyWithImpl<$Res>
    implements _$ReviewsCopyWith<$Res> {
  __$ReviewsCopyWithImpl(_Reviews _value, $Res Function(_Reviews) _then)
      : super(_value, (v) => _then(v as _Reviews));

  @override
  _Reviews get _value => super._value as _Reviews;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? rating = freezed,
    Object? content = freezed,
  }) {
    return _then(_Reviews(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Reviews extends _Reviews {
  const _$_Reviews({this.id, this.name, this.rating, this.content}) : super._();

  @override
  final UniqueId? id;
  @override
  final String? name;
  @override
  final int? rating;
  @override
  final String? content;

  @override
  String toString() {
    return 'Reviews(id: $id, name: $name, rating: $rating, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Reviews &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.rating, rating) &&
            const DeepCollectionEquality().equals(other.content, content));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(rating),
      const DeepCollectionEquality().hash(content));

  @JsonKey(ignore: true)
  @override
  _$ReviewsCopyWith<_Reviews> get copyWith =>
      __$ReviewsCopyWithImpl<_Reviews>(this, _$identity);
}

abstract class _Reviews extends Reviews {
  const factory _Reviews(
      {UniqueId? id, String? name, int? rating, String? content}) = _$_Reviews;
  const _Reviews._() : super._();

  @override
  UniqueId? get id;
  @override
  String? get name;
  @override
  int? get rating;
  @override
  String? get content;
  @override
  @JsonKey(ignore: true)
  _$ReviewsCopyWith<_Reviews> get copyWith =>
      throw _privateConstructorUsedError;
}
