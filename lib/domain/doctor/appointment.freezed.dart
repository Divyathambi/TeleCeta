// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'appointment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppointmentTearOff {
  const _$AppointmentTearOff();

  _Appointment call(
      {UniqueId? id,
      Patient? patient,
      String? patientName,
      DateTime? appointmentDate,
      TimeSlots? timeSlots}) {
    return _Appointment(
      id: id,
      patient: patient,
      patientName: patientName,
      appointmentDate: appointmentDate,
      timeSlots: timeSlots,
    );
  }
}

/// @nodoc
const $Appointment = _$AppointmentTearOff();

/// @nodoc
mixin _$Appointment {
  UniqueId? get id => throw _privateConstructorUsedError;
  Patient? get patient => throw _privateConstructorUsedError;
  String? get patientName => throw _privateConstructorUsedError;
  DateTime? get appointmentDate => throw _privateConstructorUsedError;
  TimeSlots? get timeSlots => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppointmentCopyWith<Appointment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentCopyWith<$Res> {
  factory $AppointmentCopyWith(
          Appointment value, $Res Function(Appointment) then) =
      _$AppointmentCopyWithImpl<$Res>;
  $Res call(
      {UniqueId? id,
      Patient? patient,
      String? patientName,
      DateTime? appointmentDate,
      TimeSlots? timeSlots});

  $PatientCopyWith<$Res>? get patient;
  $TimeSlotsCopyWith<$Res>? get timeSlots;
}

/// @nodoc
class _$AppointmentCopyWithImpl<$Res> implements $AppointmentCopyWith<$Res> {
  _$AppointmentCopyWithImpl(this._value, this._then);

  final Appointment _value;
  // ignore: unused_field
  final $Res Function(Appointment) _then;

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
              as UniqueId?,
      patient: patient == freezed
          ? _value.patient
          : patient // ignore: cast_nullable_to_non_nullable
              as Patient?,
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
              as TimeSlots?,
    ));
  }

  @override
  $PatientCopyWith<$Res>? get patient {
    if (_value.patient == null) {
      return null;
    }

    return $PatientCopyWith<$Res>(_value.patient!, (value) {
      return _then(_value.copyWith(patient: value));
    });
  }

  @override
  $TimeSlotsCopyWith<$Res>? get timeSlots {
    if (_value.timeSlots == null) {
      return null;
    }

    return $TimeSlotsCopyWith<$Res>(_value.timeSlots!, (value) {
      return _then(_value.copyWith(timeSlots: value));
    });
  }
}

/// @nodoc
abstract class _$AppointmentCopyWith<$Res>
    implements $AppointmentCopyWith<$Res> {
  factory _$AppointmentCopyWith(
          _Appointment value, $Res Function(_Appointment) then) =
      __$AppointmentCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId? id,
      Patient? patient,
      String? patientName,
      DateTime? appointmentDate,
      TimeSlots? timeSlots});

  @override
  $PatientCopyWith<$Res>? get patient;
  @override
  $TimeSlotsCopyWith<$Res>? get timeSlots;
}

/// @nodoc
class __$AppointmentCopyWithImpl<$Res> extends _$AppointmentCopyWithImpl<$Res>
    implements _$AppointmentCopyWith<$Res> {
  __$AppointmentCopyWithImpl(
      _Appointment _value, $Res Function(_Appointment) _then)
      : super(_value, (v) => _then(v as _Appointment));

  @override
  _Appointment get _value => super._value as _Appointment;

  @override
  $Res call({
    Object? id = freezed,
    Object? patient = freezed,
    Object? patientName = freezed,
    Object? appointmentDate = freezed,
    Object? timeSlots = freezed,
  }) {
    return _then(_Appointment(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId?,
      patient: patient == freezed
          ? _value.patient
          : patient // ignore: cast_nullable_to_non_nullable
              as Patient?,
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
              as TimeSlots?,
    ));
  }
}

/// @nodoc

class _$_Appointment extends _Appointment {
  const _$_Appointment(
      {this.id,
      this.patient,
      this.patientName,
      this.appointmentDate,
      this.timeSlots})
      : super._();

  @override
  final UniqueId? id;
  @override
  final Patient? patient;
  @override
  final String? patientName;
  @override
  final DateTime? appointmentDate;
  @override
  final TimeSlots? timeSlots;

  @override
  String toString() {
    return 'Appointment(id: $id, patient: $patient, patientName: $patientName, appointmentDate: $appointmentDate, timeSlots: $timeSlots)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Appointment &&
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
  _$AppointmentCopyWith<_Appointment> get copyWith =>
      __$AppointmentCopyWithImpl<_Appointment>(this, _$identity);
}

abstract class _Appointment extends Appointment {
  const factory _Appointment(
      {UniqueId? id,
      Patient? patient,
      String? patientName,
      DateTime? appointmentDate,
      TimeSlots? timeSlots}) = _$_Appointment;
  const _Appointment._() : super._();

  @override
  UniqueId? get id;
  @override
  Patient? get patient;
  @override
  String? get patientName;
  @override
  DateTime? get appointmentDate;
  @override
  TimeSlots? get timeSlots;
  @override
  @JsonKey(ignore: true)
  _$AppointmentCopyWith<_Appointment> get copyWith =>
      throw _privateConstructorUsedError;
}
