// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'patient_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PatientWatcherEventTearOff {
  const _$PatientWatcherEventTearOff();

  _WatchPatientStarted watchPatientStarted() {
    return const _WatchPatientStarted();
  }

  _PatientReceived patientReceived(
      Either<PatientFailure, Patient> failureOrPatient) {
    return _PatientReceived(
      failureOrPatient,
    );
  }
}

/// @nodoc
const $PatientWatcherEvent = _$PatientWatcherEventTearOff();

/// @nodoc
mixin _$PatientWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchPatientStarted,
    required TResult Function(Either<PatientFailure, Patient> failureOrPatient)
        patientReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchPatientStarted,
    TResult Function(Either<PatientFailure, Patient> failureOrPatient)?
        patientReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchPatientStarted,
    TResult Function(Either<PatientFailure, Patient> failureOrPatient)?
        patientReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchPatientStarted value) watchPatientStarted,
    required TResult Function(_PatientReceived value) patientReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchPatientStarted value)? watchPatientStarted,
    TResult Function(_PatientReceived value)? patientReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchPatientStarted value)? watchPatientStarted,
    TResult Function(_PatientReceived value)? patientReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientWatcherEventCopyWith<$Res> {
  factory $PatientWatcherEventCopyWith(
          PatientWatcherEvent value, $Res Function(PatientWatcherEvent) then) =
      _$PatientWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$PatientWatcherEventCopyWithImpl<$Res>
    implements $PatientWatcherEventCopyWith<$Res> {
  _$PatientWatcherEventCopyWithImpl(this._value, this._then);

  final PatientWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(PatientWatcherEvent) _then;
}

/// @nodoc
abstract class _$WatchPatientStartedCopyWith<$Res> {
  factory _$WatchPatientStartedCopyWith(_WatchPatientStarted value,
          $Res Function(_WatchPatientStarted) then) =
      __$WatchPatientStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchPatientStartedCopyWithImpl<$Res>
    extends _$PatientWatcherEventCopyWithImpl<$Res>
    implements _$WatchPatientStartedCopyWith<$Res> {
  __$WatchPatientStartedCopyWithImpl(
      _WatchPatientStarted _value, $Res Function(_WatchPatientStarted) _then)
      : super(_value, (v) => _then(v as _WatchPatientStarted));

  @override
  _WatchPatientStarted get _value => super._value as _WatchPatientStarted;
}

/// @nodoc

class _$_WatchPatientStarted implements _WatchPatientStarted {
  const _$_WatchPatientStarted();

  @override
  String toString() {
    return 'PatientWatcherEvent.watchPatientStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _WatchPatientStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchPatientStarted,
    required TResult Function(Either<PatientFailure, Patient> failureOrPatient)
        patientReceived,
  }) {
    return watchPatientStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchPatientStarted,
    TResult Function(Either<PatientFailure, Patient> failureOrPatient)?
        patientReceived,
  }) {
    return watchPatientStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchPatientStarted,
    TResult Function(Either<PatientFailure, Patient> failureOrPatient)?
        patientReceived,
    required TResult orElse(),
  }) {
    if (watchPatientStarted != null) {
      return watchPatientStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchPatientStarted value) watchPatientStarted,
    required TResult Function(_PatientReceived value) patientReceived,
  }) {
    return watchPatientStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchPatientStarted value)? watchPatientStarted,
    TResult Function(_PatientReceived value)? patientReceived,
  }) {
    return watchPatientStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchPatientStarted value)? watchPatientStarted,
    TResult Function(_PatientReceived value)? patientReceived,
    required TResult orElse(),
  }) {
    if (watchPatientStarted != null) {
      return watchPatientStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchPatientStarted implements PatientWatcherEvent {
  const factory _WatchPatientStarted() = _$_WatchPatientStarted;
}

/// @nodoc
abstract class _$PatientReceivedCopyWith<$Res> {
  factory _$PatientReceivedCopyWith(
          _PatientReceived value, $Res Function(_PatientReceived) then) =
      __$PatientReceivedCopyWithImpl<$Res>;
  $Res call({Either<PatientFailure, Patient> failureOrPatient});
}

/// @nodoc
class __$PatientReceivedCopyWithImpl<$Res>
    extends _$PatientWatcherEventCopyWithImpl<$Res>
    implements _$PatientReceivedCopyWith<$Res> {
  __$PatientReceivedCopyWithImpl(
      _PatientReceived _value, $Res Function(_PatientReceived) _then)
      : super(_value, (v) => _then(v as _PatientReceived));

  @override
  _PatientReceived get _value => super._value as _PatientReceived;

  @override
  $Res call({
    Object? failureOrPatient = freezed,
  }) {
    return _then(_PatientReceived(
      failureOrPatient == freezed
          ? _value.failureOrPatient
          : failureOrPatient // ignore: cast_nullable_to_non_nullable
              as Either<PatientFailure, Patient>,
    ));
  }
}

/// @nodoc

class _$_PatientReceived implements _PatientReceived {
  const _$_PatientReceived(this.failureOrPatient);

  @override
  final Either<PatientFailure, Patient> failureOrPatient;

  @override
  String toString() {
    return 'PatientWatcherEvent.patientReceived(failureOrPatient: $failureOrPatient)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PatientReceived &&
            const DeepCollectionEquality()
                .equals(other.failureOrPatient, failureOrPatient));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failureOrPatient));

  @JsonKey(ignore: true)
  @override
  _$PatientReceivedCopyWith<_PatientReceived> get copyWith =>
      __$PatientReceivedCopyWithImpl<_PatientReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchPatientStarted,
    required TResult Function(Either<PatientFailure, Patient> failureOrPatient)
        patientReceived,
  }) {
    return patientReceived(failureOrPatient);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchPatientStarted,
    TResult Function(Either<PatientFailure, Patient> failureOrPatient)?
        patientReceived,
  }) {
    return patientReceived?.call(failureOrPatient);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchPatientStarted,
    TResult Function(Either<PatientFailure, Patient> failureOrPatient)?
        patientReceived,
    required TResult orElse(),
  }) {
    if (patientReceived != null) {
      return patientReceived(failureOrPatient);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchPatientStarted value) watchPatientStarted,
    required TResult Function(_PatientReceived value) patientReceived,
  }) {
    return patientReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchPatientStarted value)? watchPatientStarted,
    TResult Function(_PatientReceived value)? patientReceived,
  }) {
    return patientReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchPatientStarted value)? watchPatientStarted,
    TResult Function(_PatientReceived value)? patientReceived,
    required TResult orElse(),
  }) {
    if (patientReceived != null) {
      return patientReceived(this);
    }
    return orElse();
  }
}

abstract class _PatientReceived implements PatientWatcherEvent {
  const factory _PatientReceived(
      Either<PatientFailure, Patient> failureOrPatient) = _$_PatientReceived;

  Either<PatientFailure, Patient> get failureOrPatient;
  @JsonKey(ignore: true)
  _$PatientReceivedCopyWith<_PatientReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$PatientWatcherStateTearOff {
  const _$PatientWatcherStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadFailure loadFailure(PatientFailure patientFailure) {
    return _LoadFailure(
      patientFailure,
    );
  }

  _LoadSuccess loadSuccess(Patient patient) {
    return _LoadSuccess(
      patient,
    );
  }
}

/// @nodoc
const $PatientWatcherState = _$PatientWatcherStateTearOff();

/// @nodoc
mixin _$PatientWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(PatientFailure patientFailure) loadFailure,
    required TResult Function(Patient patient) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(PatientFailure patientFailure)? loadFailure,
    TResult Function(Patient patient)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(PatientFailure patientFailure)? loadFailure,
    TResult Function(Patient patient)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_LoadSuccess value) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LoadSuccess value)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PatientWatcherStateCopyWith<$Res> {
  factory $PatientWatcherStateCopyWith(
          PatientWatcherState value, $Res Function(PatientWatcherState) then) =
      _$PatientWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$PatientWatcherStateCopyWithImpl<$Res>
    implements $PatientWatcherStateCopyWith<$Res> {
  _$PatientWatcherStateCopyWithImpl(this._value, this._then);

  final PatientWatcherState _value;
  // ignore: unused_field
  final $Res Function(PatientWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$PatientWatcherStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'PatientWatcherState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(PatientFailure patientFailure) loadFailure,
    required TResult Function(Patient patient) loadSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(PatientFailure patientFailure)? loadFailure,
    TResult Function(Patient patient)? loadSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(PatientFailure patientFailure)? loadFailure,
    TResult Function(Patient patient)? loadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_LoadSuccess value) loadSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LoadSuccess value)? loadSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements PatientWatcherState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res>
    extends _$PatientWatcherStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

/// @nodoc

class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'PatientWatcherState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(PatientFailure patientFailure) loadFailure,
    required TResult Function(Patient patient) loadSuccess,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(PatientFailure patientFailure)? loadFailure,
    TResult Function(Patient patient)? loadSuccess,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(PatientFailure patientFailure)? loadFailure,
    TResult Function(Patient patient)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_LoadSuccess value) loadSuccess,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LoadSuccess value)? loadSuccess,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements PatientWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({PatientFailure patientFailure});

  $PatientFailureCopyWith<$Res> get patientFailure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$PatientWatcherStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object? patientFailure = freezed,
  }) {
    return _then(_LoadFailure(
      patientFailure == freezed
          ? _value.patientFailure
          : patientFailure // ignore: cast_nullable_to_non_nullable
              as PatientFailure,
    ));
  }

  @override
  $PatientFailureCopyWith<$Res> get patientFailure {
    return $PatientFailureCopyWith<$Res>(_value.patientFailure, (value) {
      return _then(_value.copyWith(patientFailure: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.patientFailure);

  @override
  final PatientFailure patientFailure;

  @override
  String toString() {
    return 'PatientWatcherState.loadFailure(patientFailure: $patientFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadFailure &&
            const DeepCollectionEquality()
                .equals(other.patientFailure, patientFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(patientFailure));

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(PatientFailure patientFailure) loadFailure,
    required TResult Function(Patient patient) loadSuccess,
  }) {
    return loadFailure(patientFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(PatientFailure patientFailure)? loadFailure,
    TResult Function(Patient patient)? loadSuccess,
  }) {
    return loadFailure?.call(patientFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(PatientFailure patientFailure)? loadFailure,
    TResult Function(Patient patient)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(patientFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_LoadSuccess value) loadSuccess,
  }) {
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LoadSuccess value)? loadSuccess,
  }) {
    return loadFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements PatientWatcherState {
  const factory _LoadFailure(PatientFailure patientFailure) = _$_LoadFailure;

  PatientFailure get patientFailure;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({Patient patient});

  $PatientCopyWith<$Res> get patient;
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$PatientWatcherStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object? patient = freezed,
  }) {
    return _then(_LoadSuccess(
      patient == freezed
          ? _value.patient
          : patient // ignore: cast_nullable_to_non_nullable
              as Patient,
    ));
  }

  @override
  $PatientCopyWith<$Res> get patient {
    return $PatientCopyWith<$Res>(_value.patient, (value) {
      return _then(_value.copyWith(patient: value));
    });
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.patient);

  @override
  final Patient patient;

  @override
  String toString() {
    return 'PatientWatcherState.loadSuccess(patient: $patient)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadSuccess &&
            const DeepCollectionEquality().equals(other.patient, patient));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(patient));

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(PatientFailure patientFailure) loadFailure,
    required TResult Function(Patient patient) loadSuccess,
  }) {
    return loadSuccess(patient);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(PatientFailure patientFailure)? loadFailure,
    TResult Function(Patient patient)? loadSuccess,
  }) {
    return loadSuccess?.call(patient);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(PatientFailure patientFailure)? loadFailure,
    TResult Function(Patient patient)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(patient);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_LoadFailure value) loadFailure,
    required TResult Function(_LoadSuccess value) loadSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LoadSuccess value)? loadSuccess,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_LoadFailure value)? loadFailure,
    TResult Function(_LoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements PatientWatcherState {
  const factory _LoadSuccess(Patient patient) = _$_LoadSuccess;

  Patient get patient;
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
