// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'appointment_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppointmentFormEventTearOff {
  const _$AppointmentFormEventTearOff();

  _PatientDetailsInitialized patientDetailsInitialized(
      Option<Patient> initialPatientDetails) {
    return _PatientDetailsInitialized(
      initialPatientDetails,
    );
  }

  _PatientChanged patientChanged(PatientDto patientDto) {
    return _PatientChanged(
      patientDto,
    );
  }

  _PatientNameChanged patientNameChanged(String patientName) {
    return _PatientNameChanged(
      patientName,
    );
  }

  _AppointmentDateChanged appointmentDateChanged(DateTime appointmentDate) {
    return _AppointmentDateChanged(
      appointmentDate,
    );
  }

  _TimeSlotsChanged timeSlotsChanged(TimeSlotsDto timeSlotsDto) {
    return _TimeSlotsChanged(
      timeSlotsDto,
    );
  }

  _Saved saved() {
    return const _Saved();
  }
}

/// @nodoc
const $AppointmentFormEvent = _$AppointmentFormEventTearOff();

/// @nodoc
mixin _$AppointmentFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Patient> initialPatientDetails)
        patientDetailsInitialized,
    required TResult Function(PatientDto patientDto) patientChanged,
    required TResult Function(String patientName) patientNameChanged,
    required TResult Function(DateTime appointmentDate) appointmentDateChanged,
    required TResult Function(TimeSlotsDto timeSlotsDto) timeSlotsChanged,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Patient> initialPatientDetails)?
        patientDetailsInitialized,
    TResult Function(PatientDto patientDto)? patientChanged,
    TResult Function(String patientName)? patientNameChanged,
    TResult Function(DateTime appointmentDate)? appointmentDateChanged,
    TResult Function(TimeSlotsDto timeSlotsDto)? timeSlotsChanged,
    TResult Function()? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Patient> initialPatientDetails)?
        patientDetailsInitialized,
    TResult Function(PatientDto patientDto)? patientChanged,
    TResult Function(String patientName)? patientNameChanged,
    TResult Function(DateTime appointmentDate)? appointmentDateChanged,
    TResult Function(TimeSlotsDto timeSlotsDto)? timeSlotsChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PatientDetailsInitialized value)
        patientDetailsInitialized,
    required TResult Function(_PatientChanged value) patientChanged,
    required TResult Function(_PatientNameChanged value) patientNameChanged,
    required TResult Function(_AppointmentDateChanged value)
        appointmentDateChanged,
    required TResult Function(_TimeSlotsChanged value) timeSlotsChanged,
    required TResult Function(_Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PatientDetailsInitialized value)?
        patientDetailsInitialized,
    TResult Function(_PatientChanged value)? patientChanged,
    TResult Function(_PatientNameChanged value)? patientNameChanged,
    TResult Function(_AppointmentDateChanged value)? appointmentDateChanged,
    TResult Function(_TimeSlotsChanged value)? timeSlotsChanged,
    TResult Function(_Saved value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PatientDetailsInitialized value)?
        patientDetailsInitialized,
    TResult Function(_PatientChanged value)? patientChanged,
    TResult Function(_PatientNameChanged value)? patientNameChanged,
    TResult Function(_AppointmentDateChanged value)? appointmentDateChanged,
    TResult Function(_TimeSlotsChanged value)? timeSlotsChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentFormEventCopyWith<$Res> {
  factory $AppointmentFormEventCopyWith(AppointmentFormEvent value,
          $Res Function(AppointmentFormEvent) then) =
      _$AppointmentFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppointmentFormEventCopyWithImpl<$Res>
    implements $AppointmentFormEventCopyWith<$Res> {
  _$AppointmentFormEventCopyWithImpl(this._value, this._then);

  final AppointmentFormEvent _value;
  // ignore: unused_field
  final $Res Function(AppointmentFormEvent) _then;
}

/// @nodoc
abstract class _$PatientDetailsInitializedCopyWith<$Res> {
  factory _$PatientDetailsInitializedCopyWith(_PatientDetailsInitialized value,
          $Res Function(_PatientDetailsInitialized) then) =
      __$PatientDetailsInitializedCopyWithImpl<$Res>;
  $Res call({Option<Patient> initialPatientDetails});
}

/// @nodoc
class __$PatientDetailsInitializedCopyWithImpl<$Res>
    extends _$AppointmentFormEventCopyWithImpl<$Res>
    implements _$PatientDetailsInitializedCopyWith<$Res> {
  __$PatientDetailsInitializedCopyWithImpl(_PatientDetailsInitialized _value,
      $Res Function(_PatientDetailsInitialized) _then)
      : super(_value, (v) => _then(v as _PatientDetailsInitialized));

  @override
  _PatientDetailsInitialized get _value =>
      super._value as _PatientDetailsInitialized;

  @override
  $Res call({
    Object? initialPatientDetails = freezed,
  }) {
    return _then(_PatientDetailsInitialized(
      initialPatientDetails == freezed
          ? _value.initialPatientDetails
          : initialPatientDetails // ignore: cast_nullable_to_non_nullable
              as Option<Patient>,
    ));
  }
}

/// @nodoc

class _$_PatientDetailsInitialized implements _PatientDetailsInitialized {
  const _$_PatientDetailsInitialized(this.initialPatientDetails);

  @override
  final Option<Patient> initialPatientDetails;

  @override
  String toString() {
    return 'AppointmentFormEvent.patientDetailsInitialized(initialPatientDetails: $initialPatientDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PatientDetailsInitialized &&
            (identical(other.initialPatientDetails, initialPatientDetails) ||
                other.initialPatientDetails == initialPatientDetails));
  }

  @override
  int get hashCode => Object.hash(runtimeType, initialPatientDetails);

  @JsonKey(ignore: true)
  @override
  _$PatientDetailsInitializedCopyWith<_PatientDetailsInitialized>
      get copyWith =>
          __$PatientDetailsInitializedCopyWithImpl<_PatientDetailsInitialized>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Patient> initialPatientDetails)
        patientDetailsInitialized,
    required TResult Function(PatientDto patientDto) patientChanged,
    required TResult Function(String patientName) patientNameChanged,
    required TResult Function(DateTime appointmentDate) appointmentDateChanged,
    required TResult Function(TimeSlotsDto timeSlotsDto) timeSlotsChanged,
    required TResult Function() saved,
  }) {
    return patientDetailsInitialized(initialPatientDetails);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Patient> initialPatientDetails)?
        patientDetailsInitialized,
    TResult Function(PatientDto patientDto)? patientChanged,
    TResult Function(String patientName)? patientNameChanged,
    TResult Function(DateTime appointmentDate)? appointmentDateChanged,
    TResult Function(TimeSlotsDto timeSlotsDto)? timeSlotsChanged,
    TResult Function()? saved,
  }) {
    return patientDetailsInitialized?.call(initialPatientDetails);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Patient> initialPatientDetails)?
        patientDetailsInitialized,
    TResult Function(PatientDto patientDto)? patientChanged,
    TResult Function(String patientName)? patientNameChanged,
    TResult Function(DateTime appointmentDate)? appointmentDateChanged,
    TResult Function(TimeSlotsDto timeSlotsDto)? timeSlotsChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (patientDetailsInitialized != null) {
      return patientDetailsInitialized(initialPatientDetails);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PatientDetailsInitialized value)
        patientDetailsInitialized,
    required TResult Function(_PatientChanged value) patientChanged,
    required TResult Function(_PatientNameChanged value) patientNameChanged,
    required TResult Function(_AppointmentDateChanged value)
        appointmentDateChanged,
    required TResult Function(_TimeSlotsChanged value) timeSlotsChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return patientDetailsInitialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PatientDetailsInitialized value)?
        patientDetailsInitialized,
    TResult Function(_PatientChanged value)? patientChanged,
    TResult Function(_PatientNameChanged value)? patientNameChanged,
    TResult Function(_AppointmentDateChanged value)? appointmentDateChanged,
    TResult Function(_TimeSlotsChanged value)? timeSlotsChanged,
    TResult Function(_Saved value)? saved,
  }) {
    return patientDetailsInitialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PatientDetailsInitialized value)?
        patientDetailsInitialized,
    TResult Function(_PatientChanged value)? patientChanged,
    TResult Function(_PatientNameChanged value)? patientNameChanged,
    TResult Function(_AppointmentDateChanged value)? appointmentDateChanged,
    TResult Function(_TimeSlotsChanged value)? timeSlotsChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (patientDetailsInitialized != null) {
      return patientDetailsInitialized(this);
    }
    return orElse();
  }
}

abstract class _PatientDetailsInitialized implements AppointmentFormEvent {
  const factory _PatientDetailsInitialized(
      Option<Patient> initialPatientDetails) = _$_PatientDetailsInitialized;

  Option<Patient> get initialPatientDetails;
  @JsonKey(ignore: true)
  _$PatientDetailsInitializedCopyWith<_PatientDetailsInitialized>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PatientChangedCopyWith<$Res> {
  factory _$PatientChangedCopyWith(
          _PatientChanged value, $Res Function(_PatientChanged) then) =
      __$PatientChangedCopyWithImpl<$Res>;
  $Res call({PatientDto patientDto});

  $PatientDtoCopyWith<$Res> get patientDto;
}

/// @nodoc
class __$PatientChangedCopyWithImpl<$Res>
    extends _$AppointmentFormEventCopyWithImpl<$Res>
    implements _$PatientChangedCopyWith<$Res> {
  __$PatientChangedCopyWithImpl(
      _PatientChanged _value, $Res Function(_PatientChanged) _then)
      : super(_value, (v) => _then(v as _PatientChanged));

  @override
  _PatientChanged get _value => super._value as _PatientChanged;

  @override
  $Res call({
    Object? patientDto = freezed,
  }) {
    return _then(_PatientChanged(
      patientDto == freezed
          ? _value.patientDto
          : patientDto // ignore: cast_nullable_to_non_nullable
              as PatientDto,
    ));
  }

  @override
  $PatientDtoCopyWith<$Res> get patientDto {
    return $PatientDtoCopyWith<$Res>(_value.patientDto, (value) {
      return _then(_value.copyWith(patientDto: value));
    });
  }
}

/// @nodoc

class _$_PatientChanged implements _PatientChanged {
  const _$_PatientChanged(this.patientDto);

  @override
  final PatientDto patientDto;

  @override
  String toString() {
    return 'AppointmentFormEvent.patientChanged(patientDto: $patientDto)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PatientChanged &&
            (identical(other.patientDto, patientDto) ||
                other.patientDto == patientDto));
  }

  @override
  int get hashCode => Object.hash(runtimeType, patientDto);

  @JsonKey(ignore: true)
  @override
  _$PatientChangedCopyWith<_PatientChanged> get copyWith =>
      __$PatientChangedCopyWithImpl<_PatientChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Patient> initialPatientDetails)
        patientDetailsInitialized,
    required TResult Function(PatientDto patientDto) patientChanged,
    required TResult Function(String patientName) patientNameChanged,
    required TResult Function(DateTime appointmentDate) appointmentDateChanged,
    required TResult Function(TimeSlotsDto timeSlotsDto) timeSlotsChanged,
    required TResult Function() saved,
  }) {
    return patientChanged(patientDto);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Patient> initialPatientDetails)?
        patientDetailsInitialized,
    TResult Function(PatientDto patientDto)? patientChanged,
    TResult Function(String patientName)? patientNameChanged,
    TResult Function(DateTime appointmentDate)? appointmentDateChanged,
    TResult Function(TimeSlotsDto timeSlotsDto)? timeSlotsChanged,
    TResult Function()? saved,
  }) {
    return patientChanged?.call(patientDto);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Patient> initialPatientDetails)?
        patientDetailsInitialized,
    TResult Function(PatientDto patientDto)? patientChanged,
    TResult Function(String patientName)? patientNameChanged,
    TResult Function(DateTime appointmentDate)? appointmentDateChanged,
    TResult Function(TimeSlotsDto timeSlotsDto)? timeSlotsChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (patientChanged != null) {
      return patientChanged(patientDto);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PatientDetailsInitialized value)
        patientDetailsInitialized,
    required TResult Function(_PatientChanged value) patientChanged,
    required TResult Function(_PatientNameChanged value) patientNameChanged,
    required TResult Function(_AppointmentDateChanged value)
        appointmentDateChanged,
    required TResult Function(_TimeSlotsChanged value) timeSlotsChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return patientChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PatientDetailsInitialized value)?
        patientDetailsInitialized,
    TResult Function(_PatientChanged value)? patientChanged,
    TResult Function(_PatientNameChanged value)? patientNameChanged,
    TResult Function(_AppointmentDateChanged value)? appointmentDateChanged,
    TResult Function(_TimeSlotsChanged value)? timeSlotsChanged,
    TResult Function(_Saved value)? saved,
  }) {
    return patientChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PatientDetailsInitialized value)?
        patientDetailsInitialized,
    TResult Function(_PatientChanged value)? patientChanged,
    TResult Function(_PatientNameChanged value)? patientNameChanged,
    TResult Function(_AppointmentDateChanged value)? appointmentDateChanged,
    TResult Function(_TimeSlotsChanged value)? timeSlotsChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (patientChanged != null) {
      return patientChanged(this);
    }
    return orElse();
  }
}

abstract class _PatientChanged implements AppointmentFormEvent {
  const factory _PatientChanged(PatientDto patientDto) = _$_PatientChanged;

  PatientDto get patientDto;
  @JsonKey(ignore: true)
  _$PatientChangedCopyWith<_PatientChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PatientNameChangedCopyWith<$Res> {
  factory _$PatientNameChangedCopyWith(
          _PatientNameChanged value, $Res Function(_PatientNameChanged) then) =
      __$PatientNameChangedCopyWithImpl<$Res>;
  $Res call({String patientName});
}

/// @nodoc
class __$PatientNameChangedCopyWithImpl<$Res>
    extends _$AppointmentFormEventCopyWithImpl<$Res>
    implements _$PatientNameChangedCopyWith<$Res> {
  __$PatientNameChangedCopyWithImpl(
      _PatientNameChanged _value, $Res Function(_PatientNameChanged) _then)
      : super(_value, (v) => _then(v as _PatientNameChanged));

  @override
  _PatientNameChanged get _value => super._value as _PatientNameChanged;

  @override
  $Res call({
    Object? patientName = freezed,
  }) {
    return _then(_PatientNameChanged(
      patientName == freezed
          ? _value.patientName
          : patientName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_PatientNameChanged implements _PatientNameChanged {
  const _$_PatientNameChanged(this.patientName);

  @override
  final String patientName;

  @override
  String toString() {
    return 'AppointmentFormEvent.patientNameChanged(patientName: $patientName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PatientNameChanged &&
            (identical(other.patientName, patientName) ||
                other.patientName == patientName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, patientName);

  @JsonKey(ignore: true)
  @override
  _$PatientNameChangedCopyWith<_PatientNameChanged> get copyWith =>
      __$PatientNameChangedCopyWithImpl<_PatientNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Patient> initialPatientDetails)
        patientDetailsInitialized,
    required TResult Function(PatientDto patientDto) patientChanged,
    required TResult Function(String patientName) patientNameChanged,
    required TResult Function(DateTime appointmentDate) appointmentDateChanged,
    required TResult Function(TimeSlotsDto timeSlotsDto) timeSlotsChanged,
    required TResult Function() saved,
  }) {
    return patientNameChanged(patientName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Patient> initialPatientDetails)?
        patientDetailsInitialized,
    TResult Function(PatientDto patientDto)? patientChanged,
    TResult Function(String patientName)? patientNameChanged,
    TResult Function(DateTime appointmentDate)? appointmentDateChanged,
    TResult Function(TimeSlotsDto timeSlotsDto)? timeSlotsChanged,
    TResult Function()? saved,
  }) {
    return patientNameChanged?.call(patientName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Patient> initialPatientDetails)?
        patientDetailsInitialized,
    TResult Function(PatientDto patientDto)? patientChanged,
    TResult Function(String patientName)? patientNameChanged,
    TResult Function(DateTime appointmentDate)? appointmentDateChanged,
    TResult Function(TimeSlotsDto timeSlotsDto)? timeSlotsChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (patientNameChanged != null) {
      return patientNameChanged(patientName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PatientDetailsInitialized value)
        patientDetailsInitialized,
    required TResult Function(_PatientChanged value) patientChanged,
    required TResult Function(_PatientNameChanged value) patientNameChanged,
    required TResult Function(_AppointmentDateChanged value)
        appointmentDateChanged,
    required TResult Function(_TimeSlotsChanged value) timeSlotsChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return patientNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PatientDetailsInitialized value)?
        patientDetailsInitialized,
    TResult Function(_PatientChanged value)? patientChanged,
    TResult Function(_PatientNameChanged value)? patientNameChanged,
    TResult Function(_AppointmentDateChanged value)? appointmentDateChanged,
    TResult Function(_TimeSlotsChanged value)? timeSlotsChanged,
    TResult Function(_Saved value)? saved,
  }) {
    return patientNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PatientDetailsInitialized value)?
        patientDetailsInitialized,
    TResult Function(_PatientChanged value)? patientChanged,
    TResult Function(_PatientNameChanged value)? patientNameChanged,
    TResult Function(_AppointmentDateChanged value)? appointmentDateChanged,
    TResult Function(_TimeSlotsChanged value)? timeSlotsChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (patientNameChanged != null) {
      return patientNameChanged(this);
    }
    return orElse();
  }
}

abstract class _PatientNameChanged implements AppointmentFormEvent {
  const factory _PatientNameChanged(String patientName) = _$_PatientNameChanged;

  String get patientName;
  @JsonKey(ignore: true)
  _$PatientNameChangedCopyWith<_PatientNameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$AppointmentDateChangedCopyWith<$Res> {
  factory _$AppointmentDateChangedCopyWith(_AppointmentDateChanged value,
          $Res Function(_AppointmentDateChanged) then) =
      __$AppointmentDateChangedCopyWithImpl<$Res>;
  $Res call({DateTime appointmentDate});
}

/// @nodoc
class __$AppointmentDateChangedCopyWithImpl<$Res>
    extends _$AppointmentFormEventCopyWithImpl<$Res>
    implements _$AppointmentDateChangedCopyWith<$Res> {
  __$AppointmentDateChangedCopyWithImpl(_AppointmentDateChanged _value,
      $Res Function(_AppointmentDateChanged) _then)
      : super(_value, (v) => _then(v as _AppointmentDateChanged));

  @override
  _AppointmentDateChanged get _value => super._value as _AppointmentDateChanged;

  @override
  $Res call({
    Object? appointmentDate = freezed,
  }) {
    return _then(_AppointmentDateChanged(
      appointmentDate == freezed
          ? _value.appointmentDate
          : appointmentDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_AppointmentDateChanged implements _AppointmentDateChanged {
  const _$_AppointmentDateChanged(this.appointmentDate);

  @override
  final DateTime appointmentDate;

  @override
  String toString() {
    return 'AppointmentFormEvent.appointmentDateChanged(appointmentDate: $appointmentDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppointmentDateChanged &&
            (identical(other.appointmentDate, appointmentDate) ||
                other.appointmentDate == appointmentDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appointmentDate);

  @JsonKey(ignore: true)
  @override
  _$AppointmentDateChangedCopyWith<_AppointmentDateChanged> get copyWith =>
      __$AppointmentDateChangedCopyWithImpl<_AppointmentDateChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Patient> initialPatientDetails)
        patientDetailsInitialized,
    required TResult Function(PatientDto patientDto) patientChanged,
    required TResult Function(String patientName) patientNameChanged,
    required TResult Function(DateTime appointmentDate) appointmentDateChanged,
    required TResult Function(TimeSlotsDto timeSlotsDto) timeSlotsChanged,
    required TResult Function() saved,
  }) {
    return appointmentDateChanged(appointmentDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Patient> initialPatientDetails)?
        patientDetailsInitialized,
    TResult Function(PatientDto patientDto)? patientChanged,
    TResult Function(String patientName)? patientNameChanged,
    TResult Function(DateTime appointmentDate)? appointmentDateChanged,
    TResult Function(TimeSlotsDto timeSlotsDto)? timeSlotsChanged,
    TResult Function()? saved,
  }) {
    return appointmentDateChanged?.call(appointmentDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Patient> initialPatientDetails)?
        patientDetailsInitialized,
    TResult Function(PatientDto patientDto)? patientChanged,
    TResult Function(String patientName)? patientNameChanged,
    TResult Function(DateTime appointmentDate)? appointmentDateChanged,
    TResult Function(TimeSlotsDto timeSlotsDto)? timeSlotsChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (appointmentDateChanged != null) {
      return appointmentDateChanged(appointmentDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PatientDetailsInitialized value)
        patientDetailsInitialized,
    required TResult Function(_PatientChanged value) patientChanged,
    required TResult Function(_PatientNameChanged value) patientNameChanged,
    required TResult Function(_AppointmentDateChanged value)
        appointmentDateChanged,
    required TResult Function(_TimeSlotsChanged value) timeSlotsChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return appointmentDateChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PatientDetailsInitialized value)?
        patientDetailsInitialized,
    TResult Function(_PatientChanged value)? patientChanged,
    TResult Function(_PatientNameChanged value)? patientNameChanged,
    TResult Function(_AppointmentDateChanged value)? appointmentDateChanged,
    TResult Function(_TimeSlotsChanged value)? timeSlotsChanged,
    TResult Function(_Saved value)? saved,
  }) {
    return appointmentDateChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PatientDetailsInitialized value)?
        patientDetailsInitialized,
    TResult Function(_PatientChanged value)? patientChanged,
    TResult Function(_PatientNameChanged value)? patientNameChanged,
    TResult Function(_AppointmentDateChanged value)? appointmentDateChanged,
    TResult Function(_TimeSlotsChanged value)? timeSlotsChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (appointmentDateChanged != null) {
      return appointmentDateChanged(this);
    }
    return orElse();
  }
}

abstract class _AppointmentDateChanged implements AppointmentFormEvent {
  const factory _AppointmentDateChanged(DateTime appointmentDate) =
      _$_AppointmentDateChanged;

  DateTime get appointmentDate;
  @JsonKey(ignore: true)
  _$AppointmentDateChangedCopyWith<_AppointmentDateChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TimeSlotsChangedCopyWith<$Res> {
  factory _$TimeSlotsChangedCopyWith(
          _TimeSlotsChanged value, $Res Function(_TimeSlotsChanged) then) =
      __$TimeSlotsChangedCopyWithImpl<$Res>;
  $Res call({TimeSlotsDto timeSlotsDto});

  $TimeSlotsDtoCopyWith<$Res> get timeSlotsDto;
}

/// @nodoc
class __$TimeSlotsChangedCopyWithImpl<$Res>
    extends _$AppointmentFormEventCopyWithImpl<$Res>
    implements _$TimeSlotsChangedCopyWith<$Res> {
  __$TimeSlotsChangedCopyWithImpl(
      _TimeSlotsChanged _value, $Res Function(_TimeSlotsChanged) _then)
      : super(_value, (v) => _then(v as _TimeSlotsChanged));

  @override
  _TimeSlotsChanged get _value => super._value as _TimeSlotsChanged;

  @override
  $Res call({
    Object? timeSlotsDto = freezed,
  }) {
    return _then(_TimeSlotsChanged(
      timeSlotsDto == freezed
          ? _value.timeSlotsDto
          : timeSlotsDto // ignore: cast_nullable_to_non_nullable
              as TimeSlotsDto,
    ));
  }

  @override
  $TimeSlotsDtoCopyWith<$Res> get timeSlotsDto {
    return $TimeSlotsDtoCopyWith<$Res>(_value.timeSlotsDto, (value) {
      return _then(_value.copyWith(timeSlotsDto: value));
    });
  }
}

/// @nodoc

class _$_TimeSlotsChanged implements _TimeSlotsChanged {
  const _$_TimeSlotsChanged(this.timeSlotsDto);

  @override
  final TimeSlotsDto timeSlotsDto;

  @override
  String toString() {
    return 'AppointmentFormEvent.timeSlotsChanged(timeSlotsDto: $timeSlotsDto)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TimeSlotsChanged &&
            (identical(other.timeSlotsDto, timeSlotsDto) ||
                other.timeSlotsDto == timeSlotsDto));
  }

  @override
  int get hashCode => Object.hash(runtimeType, timeSlotsDto);

  @JsonKey(ignore: true)
  @override
  _$TimeSlotsChangedCopyWith<_TimeSlotsChanged> get copyWith =>
      __$TimeSlotsChangedCopyWithImpl<_TimeSlotsChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Patient> initialPatientDetails)
        patientDetailsInitialized,
    required TResult Function(PatientDto patientDto) patientChanged,
    required TResult Function(String patientName) patientNameChanged,
    required TResult Function(DateTime appointmentDate) appointmentDateChanged,
    required TResult Function(TimeSlotsDto timeSlotsDto) timeSlotsChanged,
    required TResult Function() saved,
  }) {
    return timeSlotsChanged(timeSlotsDto);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Patient> initialPatientDetails)?
        patientDetailsInitialized,
    TResult Function(PatientDto patientDto)? patientChanged,
    TResult Function(String patientName)? patientNameChanged,
    TResult Function(DateTime appointmentDate)? appointmentDateChanged,
    TResult Function(TimeSlotsDto timeSlotsDto)? timeSlotsChanged,
    TResult Function()? saved,
  }) {
    return timeSlotsChanged?.call(timeSlotsDto);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Patient> initialPatientDetails)?
        patientDetailsInitialized,
    TResult Function(PatientDto patientDto)? patientChanged,
    TResult Function(String patientName)? patientNameChanged,
    TResult Function(DateTime appointmentDate)? appointmentDateChanged,
    TResult Function(TimeSlotsDto timeSlotsDto)? timeSlotsChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (timeSlotsChanged != null) {
      return timeSlotsChanged(timeSlotsDto);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PatientDetailsInitialized value)
        patientDetailsInitialized,
    required TResult Function(_PatientChanged value) patientChanged,
    required TResult Function(_PatientNameChanged value) patientNameChanged,
    required TResult Function(_AppointmentDateChanged value)
        appointmentDateChanged,
    required TResult Function(_TimeSlotsChanged value) timeSlotsChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return timeSlotsChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PatientDetailsInitialized value)?
        patientDetailsInitialized,
    TResult Function(_PatientChanged value)? patientChanged,
    TResult Function(_PatientNameChanged value)? patientNameChanged,
    TResult Function(_AppointmentDateChanged value)? appointmentDateChanged,
    TResult Function(_TimeSlotsChanged value)? timeSlotsChanged,
    TResult Function(_Saved value)? saved,
  }) {
    return timeSlotsChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PatientDetailsInitialized value)?
        patientDetailsInitialized,
    TResult Function(_PatientChanged value)? patientChanged,
    TResult Function(_PatientNameChanged value)? patientNameChanged,
    TResult Function(_AppointmentDateChanged value)? appointmentDateChanged,
    TResult Function(_TimeSlotsChanged value)? timeSlotsChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (timeSlotsChanged != null) {
      return timeSlotsChanged(this);
    }
    return orElse();
  }
}

abstract class _TimeSlotsChanged implements AppointmentFormEvent {
  const factory _TimeSlotsChanged(TimeSlotsDto timeSlotsDto) =
      _$_TimeSlotsChanged;

  TimeSlotsDto get timeSlotsDto;
  @JsonKey(ignore: true)
  _$TimeSlotsChangedCopyWith<_TimeSlotsChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SavedCopyWith<$Res> {
  factory _$SavedCopyWith(_Saved value, $Res Function(_Saved) then) =
      __$SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SavedCopyWithImpl<$Res>
    extends _$AppointmentFormEventCopyWithImpl<$Res>
    implements _$SavedCopyWith<$Res> {
  __$SavedCopyWithImpl(_Saved _value, $Res Function(_Saved) _then)
      : super(_value, (v) => _then(v as _Saved));

  @override
  _Saved get _value => super._value as _Saved;
}

/// @nodoc

class _$_Saved implements _Saved {
  const _$_Saved();

  @override
  String toString() {
    return 'AppointmentFormEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Patient> initialPatientDetails)
        patientDetailsInitialized,
    required TResult Function(PatientDto patientDto) patientChanged,
    required TResult Function(String patientName) patientNameChanged,
    required TResult Function(DateTime appointmentDate) appointmentDateChanged,
    required TResult Function(TimeSlotsDto timeSlotsDto) timeSlotsChanged,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Option<Patient> initialPatientDetails)?
        patientDetailsInitialized,
    TResult Function(PatientDto patientDto)? patientChanged,
    TResult Function(String patientName)? patientNameChanged,
    TResult Function(DateTime appointmentDate)? appointmentDateChanged,
    TResult Function(TimeSlotsDto timeSlotsDto)? timeSlotsChanged,
    TResult Function()? saved,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Patient> initialPatientDetails)?
        patientDetailsInitialized,
    TResult Function(PatientDto patientDto)? patientChanged,
    TResult Function(String patientName)? patientNameChanged,
    TResult Function(DateTime appointmentDate)? appointmentDateChanged,
    TResult Function(TimeSlotsDto timeSlotsDto)? timeSlotsChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PatientDetailsInitialized value)
        patientDetailsInitialized,
    required TResult Function(_PatientChanged value) patientChanged,
    required TResult Function(_PatientNameChanged value) patientNameChanged,
    required TResult Function(_AppointmentDateChanged value)
        appointmentDateChanged,
    required TResult Function(_TimeSlotsChanged value) timeSlotsChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_PatientDetailsInitialized value)?
        patientDetailsInitialized,
    TResult Function(_PatientChanged value)? patientChanged,
    TResult Function(_PatientNameChanged value)? patientNameChanged,
    TResult Function(_AppointmentDateChanged value)? appointmentDateChanged,
    TResult Function(_TimeSlotsChanged value)? timeSlotsChanged,
    TResult Function(_Saved value)? saved,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PatientDetailsInitialized value)?
        patientDetailsInitialized,
    TResult Function(_PatientChanged value)? patientChanged,
    TResult Function(_PatientNameChanged value)? patientNameChanged,
    TResult Function(_AppointmentDateChanged value)? appointmentDateChanged,
    TResult Function(_TimeSlotsChanged value)? timeSlotsChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements AppointmentFormEvent {
  const factory _Saved() = _$_Saved;
}

/// @nodoc
class _$AppointmentFormStateTearOff {
  const _$AppointmentFormStateTearOff();

  _AppointmentFormState call(
      {Appointment? appointment,
      Patient? patient,
      bool? isSaving,
      bool? isEditing,
      bool? showErrorMessages,
      Option<Either<DoctorFailures, Unit>>? saveFailureOrSuccessOption}) {
    return _AppointmentFormState(
      appointment: appointment,
      patient: patient,
      isSaving: isSaving,
      isEditing: isEditing,
      showErrorMessages: showErrorMessages,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $AppointmentFormState = _$AppointmentFormStateTearOff();

/// @nodoc
mixin _$AppointmentFormState {
  Appointment? get appointment => throw _privateConstructorUsedError;
  Patient? get patient => throw _privateConstructorUsedError;
  bool? get isSaving => throw _privateConstructorUsedError;
  bool? get isEditing => throw _privateConstructorUsedError;
  bool? get showErrorMessages => throw _privateConstructorUsedError;
  Option<Either<DoctorFailures, Unit>>? get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppointmentFormStateCopyWith<AppointmentFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentFormStateCopyWith<$Res> {
  factory $AppointmentFormStateCopyWith(AppointmentFormState value,
          $Res Function(AppointmentFormState) then) =
      _$AppointmentFormStateCopyWithImpl<$Res>;
  $Res call(
      {Appointment? appointment,
      Patient? patient,
      bool? isSaving,
      bool? isEditing,
      bool? showErrorMessages,
      Option<Either<DoctorFailures, Unit>>? saveFailureOrSuccessOption});

  $AppointmentCopyWith<$Res>? get appointment;
  $PatientCopyWith<$Res>? get patient;
}

/// @nodoc
class _$AppointmentFormStateCopyWithImpl<$Res>
    implements $AppointmentFormStateCopyWith<$Res> {
  _$AppointmentFormStateCopyWithImpl(this._value, this._then);

  final AppointmentFormState _value;
  // ignore: unused_field
  final $Res Function(AppointmentFormState) _then;

  @override
  $Res call({
    Object? appointment = freezed,
    Object? patient = freezed,
    Object? isSaving = freezed,
    Object? isEditing = freezed,
    Object? showErrorMessages = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      appointment: appointment == freezed
          ? _value.appointment
          : appointment // ignore: cast_nullable_to_non_nullable
              as Appointment?,
      patient: patient == freezed
          ? _value.patient
          : patient // ignore: cast_nullable_to_non_nullable
              as Patient?,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool?,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool?,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool?,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<DoctorFailures, Unit>>?,
    ));
  }

  @override
  $AppointmentCopyWith<$Res>? get appointment {
    if (_value.appointment == null) {
      return null;
    }

    return $AppointmentCopyWith<$Res>(_value.appointment!, (value) {
      return _then(_value.copyWith(appointment: value));
    });
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
}

/// @nodoc
abstract class _$AppointmentFormStateCopyWith<$Res>
    implements $AppointmentFormStateCopyWith<$Res> {
  factory _$AppointmentFormStateCopyWith(_AppointmentFormState value,
          $Res Function(_AppointmentFormState) then) =
      __$AppointmentFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Appointment? appointment,
      Patient? patient,
      bool? isSaving,
      bool? isEditing,
      bool? showErrorMessages,
      Option<Either<DoctorFailures, Unit>>? saveFailureOrSuccessOption});

  @override
  $AppointmentCopyWith<$Res>? get appointment;
  @override
  $PatientCopyWith<$Res>? get patient;
}

/// @nodoc
class __$AppointmentFormStateCopyWithImpl<$Res>
    extends _$AppointmentFormStateCopyWithImpl<$Res>
    implements _$AppointmentFormStateCopyWith<$Res> {
  __$AppointmentFormStateCopyWithImpl(
      _AppointmentFormState _value, $Res Function(_AppointmentFormState) _then)
      : super(_value, (v) => _then(v as _AppointmentFormState));

  @override
  _AppointmentFormState get _value => super._value as _AppointmentFormState;

  @override
  $Res call({
    Object? appointment = freezed,
    Object? patient = freezed,
    Object? isSaving = freezed,
    Object? isEditing = freezed,
    Object? showErrorMessages = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_AppointmentFormState(
      appointment: appointment == freezed
          ? _value.appointment
          : appointment // ignore: cast_nullable_to_non_nullable
              as Appointment?,
      patient: patient == freezed
          ? _value.patient
          : patient // ignore: cast_nullable_to_non_nullable
              as Patient?,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool?,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool?,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool?,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<DoctorFailures, Unit>>?,
    ));
  }
}

/// @nodoc

class _$_AppointmentFormState implements _AppointmentFormState {
  const _$_AppointmentFormState(
      {this.appointment,
      this.patient,
      this.isSaving,
      this.isEditing,
      this.showErrorMessages,
      this.saveFailureOrSuccessOption});

  @override
  final Appointment? appointment;
  @override
  final Patient? patient;
  @override
  final bool? isSaving;
  @override
  final bool? isEditing;
  @override
  final bool? showErrorMessages;
  @override
  final Option<Either<DoctorFailures, Unit>>? saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'AppointmentFormState(appointment: $appointment, patient: $patient, isSaving: $isSaving, isEditing: $isEditing, showErrorMessages: $showErrorMessages, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppointmentFormState &&
            (identical(other.appointment, appointment) ||
                other.appointment == appointment) &&
            (identical(other.patient, patient) || other.patient == patient) &&
            (identical(other.isSaving, isSaving) ||
                other.isSaving == isSaving) &&
            (identical(other.isEditing, isEditing) ||
                other.isEditing == isEditing) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                other.saveFailureOrSuccessOption ==
                    saveFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appointment, patient, isSaving,
      isEditing, showErrorMessages, saveFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$AppointmentFormStateCopyWith<_AppointmentFormState> get copyWith =>
      __$AppointmentFormStateCopyWithImpl<_AppointmentFormState>(
          this, _$identity);
}

abstract class _AppointmentFormState implements AppointmentFormState {
  const factory _AppointmentFormState(
          {Appointment? appointment,
          Patient? patient,
          bool? isSaving,
          bool? isEditing,
          bool? showErrorMessages,
          Option<Either<DoctorFailures, Unit>>? saveFailureOrSuccessOption}) =
      _$_AppointmentFormState;

  @override
  Appointment? get appointment;
  @override
  Patient? get patient;
  @override
  bool? get isSaving;
  @override
  bool? get isEditing;
  @override
  bool? get showErrorMessages;
  @override
  Option<Either<DoctorFailures, Unit>>? get saveFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$AppointmentFormStateCopyWith<_AppointmentFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
