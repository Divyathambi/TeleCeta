// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'reviews_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReviewsDto _$ReviewsDtoFromJson(Map<String, dynamic> json) {
  return _ReviewsDto.fromJson(json);
}

/// @nodoc
class _$ReviewsDtoTearOff {
  const _$ReviewsDtoTearOff();

  _ReviewsDto call(
      {@JsonKey(ignore: true) String? id,
      String? name,
      int? rating,
      String? content}) {
    return _ReviewsDto(
      id: id,
      name: name,
      rating: rating,
      content: content,
    );
  }

  ReviewsDto fromJson(Map<String, Object?> json) {
    return ReviewsDto.fromJson(json);
  }
}

/// @nodoc
const $ReviewsDto = _$ReviewsDtoTearOff();

/// @nodoc
mixin _$ReviewsDto {
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int? get rating => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewsDtoCopyWith<ReviewsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewsDtoCopyWith<$Res> {
  factory $ReviewsDtoCopyWith(
          ReviewsDto value, $Res Function(ReviewsDto) then) =
      _$ReviewsDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String? name,
      int? rating,
      String? content});
}

/// @nodoc
class _$ReviewsDtoCopyWithImpl<$Res> implements $ReviewsDtoCopyWith<$Res> {
  _$ReviewsDtoCopyWithImpl(this._value, this._then);

  final ReviewsDto _value;
  // ignore: unused_field
  final $Res Function(ReviewsDto) _then;

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
              as String?,
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
abstract class _$ReviewsDtoCopyWith<$Res> implements $ReviewsDtoCopyWith<$Res> {
  factory _$ReviewsDtoCopyWith(
          _ReviewsDto value, $Res Function(_ReviewsDto) then) =
      __$ReviewsDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String? id,
      String? name,
      int? rating,
      String? content});
}

/// @nodoc
class __$ReviewsDtoCopyWithImpl<$Res> extends _$ReviewsDtoCopyWithImpl<$Res>
    implements _$ReviewsDtoCopyWith<$Res> {
  __$ReviewsDtoCopyWithImpl(
      _ReviewsDto _value, $Res Function(_ReviewsDto) _then)
      : super(_value, (v) => _then(v as _ReviewsDto));

  @override
  _ReviewsDto get _value => super._value as _ReviewsDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? rating = freezed,
    Object? content = freezed,
  }) {
    return _then(_ReviewsDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
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
@JsonSerializable()
class _$_ReviewsDto extends _ReviewsDto {
  const _$_ReviewsDto(
      {@JsonKey(ignore: true) this.id, this.name, this.rating, this.content})
      : super._();

  factory _$_ReviewsDto.fromJson(Map<String, dynamic> json) =>
      _$$_ReviewsDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? id;
  @override
  final String? name;
  @override
  final int? rating;
  @override
  final String? content;

  @override
  String toString() {
    return 'ReviewsDto(id: $id, name: $name, rating: $rating, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReviewsDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.content, content) || other.content == content));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, rating, content);

  @JsonKey(ignore: true)
  @override
  _$ReviewsDtoCopyWith<_ReviewsDto> get copyWith =>
      __$ReviewsDtoCopyWithImpl<_ReviewsDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReviewsDtoToJson(this);
  }
}

abstract class _ReviewsDto extends ReviewsDto {
  const factory _ReviewsDto(
      {@JsonKey(ignore: true) String? id,
      String? name,
      int? rating,
      String? content}) = _$_ReviewsDto;
  const _ReviewsDto._() : super._();

  factory _ReviewsDto.fromJson(Map<String, dynamic> json) =
      _$_ReviewsDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get id;
  @override
  String? get name;
  @override
  int? get rating;
  @override
  String? get content;
  @override
  @JsonKey(ignore: true)
  _$ReviewsDtoCopyWith<_ReviewsDto> get copyWith =>
      throw _privateConstructorUsedError;
}
