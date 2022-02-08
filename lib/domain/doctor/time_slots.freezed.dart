// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'time_slots.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TimeSlotsTearOff {
  const _$TimeSlotsTearOff();

  _TimeSlots call(
      {UniqueId? id,
      DateTime? beginningTime,
      DateTime? endingTime,
      List<String>? days}) {
    return _TimeSlots(
      id: id,
      beginningTime: beginningTime,
      endingTime: endingTime,
      days: days,
    );
  }
}

/// @nodoc
const $TimeSlots = _$TimeSlotsTearOff();

/// @nodoc
mixin _$TimeSlots {
  UniqueId? get id => throw _privateConstructorUsedError;
  DateTime? get beginningTime => throw _privateConstructorUsedError;
  DateTime? get endingTime => throw _privateConstructorUsedError;
  List<String>? get days => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TimeSlotsCopyWith<TimeSlots> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeSlotsCopyWith<$Res> {
  factory $TimeSlotsCopyWith(TimeSlots value, $Res Function(TimeSlots) then) =
      _$TimeSlotsCopyWithImpl<$Res>;
  $Res call(
      {UniqueId? id,
      DateTime? beginningTime,
      DateTime? endingTime,
      List<String>? days});
}

/// @nodoc
class _$TimeSlotsCopyWithImpl<$Res> implements $TimeSlotsCopyWith<$Res> {
  _$TimeSlotsCopyWithImpl(this._value, this._then);

  final TimeSlots _value;
  // ignore: unused_field
  final $Res Function(TimeSlots) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? beginningTime = freezed,
    Object? endingTime = freezed,
    Object? days = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId?,
      beginningTime: beginningTime == freezed
          ? _value.beginningTime
          : beginningTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endingTime: endingTime == freezed
          ? _value.endingTime
          : endingTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      days: days == freezed
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
abstract class _$TimeSlotsCopyWith<$Res> implements $TimeSlotsCopyWith<$Res> {
  factory _$TimeSlotsCopyWith(
          _TimeSlots value, $Res Function(_TimeSlots) then) =
      __$TimeSlotsCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId? id,
      DateTime? beginningTime,
      DateTime? endingTime,
      List<String>? days});
}

/// @nodoc
class __$TimeSlotsCopyWithImpl<$Res> extends _$TimeSlotsCopyWithImpl<$Res>
    implements _$TimeSlotsCopyWith<$Res> {
  __$TimeSlotsCopyWithImpl(_TimeSlots _value, $Res Function(_TimeSlots) _then)
      : super(_value, (v) => _then(v as _TimeSlots));

  @override
  _TimeSlots get _value => super._value as _TimeSlots;

  @override
  $Res call({
    Object? id = freezed,
    Object? beginningTime = freezed,
    Object? endingTime = freezed,
    Object? days = freezed,
  }) {
    return _then(_TimeSlots(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId?,
      beginningTime: beginningTime == freezed
          ? _value.beginningTime
          : beginningTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endingTime: endingTime == freezed
          ? _value.endingTime
          : endingTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      days: days == freezed
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

class _$_TimeSlots extends _TimeSlots {
  const _$_TimeSlots({this.id, this.beginningTime, this.endingTime, this.days})
      : super._();

  @override
  final UniqueId? id;
  @override
  final DateTime? beginningTime;
  @override
  final DateTime? endingTime;
  @override
  final List<String>? days;

  @override
  String toString() {
    return 'TimeSlots(id: $id, beginningTime: $beginningTime, endingTime: $endingTime, days: $days)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TimeSlots &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.beginningTime, beginningTime) &&
            const DeepCollectionEquality()
                .equals(other.endingTime, endingTime) &&
            const DeepCollectionEquality().equals(other.days, days));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(beginningTime),
      const DeepCollectionEquality().hash(endingTime),
      const DeepCollectionEquality().hash(days));

  @JsonKey(ignore: true)
  @override
  _$TimeSlotsCopyWith<_TimeSlots> get copyWith =>
      __$TimeSlotsCopyWithImpl<_TimeSlots>(this, _$identity);
}

abstract class _TimeSlots extends TimeSlots {
  const factory _TimeSlots(
      {UniqueId? id,
      DateTime? beginningTime,
      DateTime? endingTime,
      List<String>? days}) = _$_TimeSlots;
  const _TimeSlots._() : super._();

  @override
  UniqueId? get id;
  @override
  DateTime? get beginningTime;
  @override
  DateTime? get endingTime;
  @override
  List<String>? get days;
  @override
  @JsonKey(ignore: true)
  _$TimeSlotsCopyWith<_TimeSlots> get copyWith =>
      throw _privateConstructorUsedError;
}
