// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'appointment_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppointmentDto _$AppointmentDtoFromJson(Map<String, dynamic> json) {
  return _AppointmentDto.fromJson(json);
}

/// @nodoc
class _$AppointmentDtoTearOff {
  const _$AppointmentDtoTearOff();

  _AppointmentDto call(
      {@JsonKey(ignore: true) String? id,
      PatientDto? patient,
      String? patientName,
      DateTime? appointmentDate,
      TimeSlotsDto? timeSlots}) {
    return _AppointmentDto(
      id: id,
      patient: patient,
      patientName: patientName,
      appointmentDate: appointmentDate,
      timeSlots: timeSlots,
    );
  }

  AppointmentDto fromJson(Map<String, Object?> json) {
    return AppointmentDto.fromJson(json);
  }
}

/// @nodoc
const $AppointmentDto = _$AppointmentDtoTearOff();

/// @nodoc
mixin _$AppointmentDto {
  @JsonKey(ignore: true)
  String? get id => throw _privateConstructorUsedError;
  PatientDto? get patient => throw _privateConstructorUsedError;
  String? get patientName => throw _privateConstructorUsedError;
  DateTime? get appointmentDate => throw _privateConstructorUsedError;
  TimeSlotsDto? get timeSlots => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppointmentDtoCopyWith<AppointmentDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentDtoCopyWith<$Res> {
  factory $AppointmentDtoCopyWith(
          AppointmentDto value, $Res Function(AppointmentDto) then) =
      _$AppointmentDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String? id,
      PatientDto? patient,
      String? patientName,
      DateTime? appointmentDate,
      TimeSlotsDto? timeSlots});

  $PatientDtoCopyWith<$Res>? get patient;
  $TimeSlotsDtoCopyWith<$Res>? get timeSlots;
}

/// @nodoc
class _$AppointmentDtoCopyWithImpl<$Res>
    implements $AppointmentDtoCopyWith<$Res> {
  _$AppointmentDtoCopyWithImpl(this._value, this._then);

  final AppointmentDto _value;
  // ignore: unused_field
  final $Res Function(AppointmentDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? patient = freezed,
    Object? patientName = freezed,
    Object? appointmentDate = freezed,
    Object? timeSlots = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      patient: patient == freezed
          ? _value.patient
          : patient // ignore: cast_nullable_to_non_nullable
              as PatientDto?,
      patientName: patientName == freezed
          ? _value.patientName
          : patientName // ignore: cast_nullable_to_non_nullable
              as String?,
      appointmentDate: appointmentDate == freezed
          ? _value.appointmentDate
          : appointmentDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      timeSlots: timeSlots == freezed
          ? _value.timeSlots
          : timeSlots // ignore: cast_nullable_to_non_nullable
              as TimeSlotsDto?,
    ));
  }

  @override
  $PatientDtoCopyWith<$Res>? get patient {
    if (_value.patient == null) {
      return null;
    }

    return $PatientDtoCopyWith<$Res>(_value.patient!, (value) {
      return _then(_value.copyWith(patient: value));
    });
  }

  @override
  $TimeSlotsDtoCopyWith<$Res>? get timeSlots {
    if (_value.timeSlots == null) {
      return null;
    }

    return $TimeSlotsDtoCopyWith<$Res>(_value.timeSlots!, (value) {
      return _then(_value.copyWith(timeSlots: value));
    });
  }
}

/// @nodoc
abstract class _$AppointmentDtoCopyWith<$Res>
    implements $AppointmentDtoCopyWith<$Res> {
  factory _$AppointmentDtoCopyWith(
          _AppointmentDto value, $Res Function(_AppointmentDto) then) =
      __$AppointmentDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(ignore: true) String? id,
      PatientDto? patient,
      String? patientName,
      DateTime? appointmentDate,
      TimeSlotsDto? timeSlots});

  @override
  $PatientDtoCopyWith<$Res>? get patient;
  @override
  $TimeSlotsDtoCopyWith<$Res>? get timeSlots;
}

/// @nodoc
class __$AppointmentDtoCopyWithImpl<$Res>
    extends _$AppointmentDtoCopyWithImpl<$Res>
    implements _$AppointmentDtoCopyWith<$Res> {
  __$AppointmentDtoCopyWithImpl(
      _AppointmentDto _value, $Res Function(_AppointmentDto) _then)
      : super(_value, (v) => _then(v as _AppointmentDto));

  @override
  _AppointmentDto get _value => super._value as _AppointmentDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? patient = freezed,
    Object? patientName = freezed,
    Object? appointmentDate = freezed,
    Object? timeSlots = freezed,
  }) {
    return _then(_AppointmentDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      patient: patient == freezed
          ? _value.patient
          : patient // ignore: cast_nullable_to_non_nullable
              as PatientDto?,
      patientName: patientName == freezed
          ? _value.patientName
          : patientName // ignore: cast_nullable_to_non_nullable
              as String?,
      appointmentDate: appointmentDate == freezed
          ? _value.appointmentDate
          : appointmentDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      timeSlots: timeSlots == freezed
          ? _value.timeSlots
          : timeSlots // ignore: cast_nullable_to_non_nullable
              as TimeSlotsDto?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppointmentDto extends _AppointmentDto {
  const _$_AppointmentDto(
      {@JsonKey(ignore: true) this.id,
      this.patient,
      this.patientName,
      this.appointmentDate,
      this.timeSlots})
      : super._();

  factory _$_AppointmentDto.fromJson(Map<String, dynamic> json) =>
      _$$_AppointmentDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String? id;
  @override
  final PatientDto? patient;
  @override
  final String? patientName;
  @override
  final DateTime? appointmentDate;
  @override
  final TimeSlotsDto? timeSlots;

  @override
  String toString() {
    return 'AppointmentDto(id: $id, patient: $patient, patientName: $patientName, appointmentDate: $appointmentDate, timeSlots: $timeSlots)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppointmentDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.patient, patient) || other.patient == patient) &&
            (identical(other.patientName, patientName) ||
                other.patientName == patientName) &&
            (identical(other.appointmentDate, appointmentDate) ||
                other.appointmentDate == appointmentDate) &&
            (identical(other.timeSlots, timeSlots) ||
                other.timeSlots == timeSlots));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, patient, patientName, appointmentDate, timeSlots);

  @JsonKey(ignore: true)
  @override
  _$AppointmentDtoCopyWith<_AppointmentDto> get copyWith =>
      __$AppointmentDtoCopyWithImpl<_AppointmentDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppointmentDtoToJson(this);
  }
}

abstract class _AppointmentDto extends AppointmentDto {
  const factory _AppointmentDto(
      {@JsonKey(ignore: true) String? id,
      PatientDto? patient,
      String? patientName,
      DateTime? appointmentDate,
      TimeSlotsDto? timeSlots}) = _$_AppointmentDto;
  const _AppointmentDto._() : super._();

  factory _AppointmentDto.fromJson(Map<String, dynamic> json) =
      _$_AppointmentDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String? get id;
  @override
  PatientDto? get patient;
  @override
  String? get patientName;
  @override
  DateTime? get appointmentDate;
  @override
  TimeSlotsDto? get timeSlots;
  @override
  @JsonKey(ignore: true)
  _$AppointmentDtoCopyWith<_AppointmentDto> get copyWith =>
      throw _privateConstructorUsedError;
}
