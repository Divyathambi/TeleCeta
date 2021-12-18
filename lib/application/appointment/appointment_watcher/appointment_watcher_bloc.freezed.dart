// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'appointment_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppointmentWatcherEventTearOff {
  const _$AppointmentWatcherEventTearOff();

  _WatchAllAppointmentsStarted watchAllAppointmentsStarted() {
    return const _WatchAllAppointmentsStarted();
  }

  _AppointmentsReceived appointmentsReceived(
      Either<DoctorFailures, List<Appointment>> failureOrAppointments) {
    return _AppointmentsReceived(
      failureOrAppointments,
    );
  }
}

/// @nodoc
const $AppointmentWatcherEvent = _$AppointmentWatcherEventTearOff();

/// @nodoc
mixin _$AppointmentWatcherEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllAppointmentsStarted,
    required TResult Function(
            Either<DoctorFailures, List<Appointment>> failureOrAppointments)
        appointmentsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchAllAppointmentsStarted,
    TResult Function(
            Either<DoctorFailures, List<Appointment>> failureOrAppointments)?
        appointmentsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllAppointmentsStarted,
    TResult Function(
            Either<DoctorFailures, List<Appointment>> failureOrAppointments)?
        appointmentsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllAppointmentsStarted value)
        watchAllAppointmentsStarted,
    required TResult Function(_AppointmentsReceived value) appointmentsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchAllAppointmentsStarted value)?
        watchAllAppointmentsStarted,
    TResult Function(_AppointmentsReceived value)? appointmentsReceived,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllAppointmentsStarted value)?
        watchAllAppointmentsStarted,
    TResult Function(_AppointmentsReceived value)? appointmentsReceived,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentWatcherEventCopyWith<$Res> {
  factory $AppointmentWatcherEventCopyWith(AppointmentWatcherEvent value,
          $Res Function(AppointmentWatcherEvent) then) =
      _$AppointmentWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppointmentWatcherEventCopyWithImpl<$Res>
    implements $AppointmentWatcherEventCopyWith<$Res> {
  _$AppointmentWatcherEventCopyWithImpl(this._value, this._then);

  final AppointmentWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(AppointmentWatcherEvent) _then;
}

/// @nodoc
abstract class _$WatchAllAppointmentsStartedCopyWith<$Res> {
  factory _$WatchAllAppointmentsStartedCopyWith(
          _WatchAllAppointmentsStarted value,
          $Res Function(_WatchAllAppointmentsStarted) then) =
      __$WatchAllAppointmentsStartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$WatchAllAppointmentsStartedCopyWithImpl<$Res>
    extends _$AppointmentWatcherEventCopyWithImpl<$Res>
    implements _$WatchAllAppointmentsStartedCopyWith<$Res> {
  __$WatchAllAppointmentsStartedCopyWithImpl(
      _WatchAllAppointmentsStarted _value,
      $Res Function(_WatchAllAppointmentsStarted) _then)
      : super(_value, (v) => _then(v as _WatchAllAppointmentsStarted));

  @override
  _WatchAllAppointmentsStarted get _value =>
      super._value as _WatchAllAppointmentsStarted;
}

/// @nodoc

class _$_WatchAllAppointmentsStarted implements _WatchAllAppointmentsStarted {
  const _$_WatchAllAppointmentsStarted();

  @override
  String toString() {
    return 'AppointmentWatcherEvent.watchAllAppointmentsStarted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _WatchAllAppointmentsStarted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllAppointmentsStarted,
    required TResult Function(
            Either<DoctorFailures, List<Appointment>> failureOrAppointments)
        appointmentsReceived,
  }) {
    return watchAllAppointmentsStarted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchAllAppointmentsStarted,
    TResult Function(
            Either<DoctorFailures, List<Appointment>> failureOrAppointments)?
        appointmentsReceived,
  }) {
    return watchAllAppointmentsStarted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllAppointmentsStarted,
    TResult Function(
            Either<DoctorFailures, List<Appointment>> failureOrAppointments)?
        appointmentsReceived,
    required TResult orElse(),
  }) {
    if (watchAllAppointmentsStarted != null) {
      return watchAllAppointmentsStarted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllAppointmentsStarted value)
        watchAllAppointmentsStarted,
    required TResult Function(_AppointmentsReceived value) appointmentsReceived,
  }) {
    return watchAllAppointmentsStarted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchAllAppointmentsStarted value)?
        watchAllAppointmentsStarted,
    TResult Function(_AppointmentsReceived value)? appointmentsReceived,
  }) {
    return watchAllAppointmentsStarted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllAppointmentsStarted value)?
        watchAllAppointmentsStarted,
    TResult Function(_AppointmentsReceived value)? appointmentsReceived,
    required TResult orElse(),
  }) {
    if (watchAllAppointmentsStarted != null) {
      return watchAllAppointmentsStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllAppointmentsStarted implements AppointmentWatcherEvent {
  const factory _WatchAllAppointmentsStarted() = _$_WatchAllAppointmentsStarted;
}

/// @nodoc
abstract class _$AppointmentsReceivedCopyWith<$Res> {
  factory _$AppointmentsReceivedCopyWith(_AppointmentsReceived value,
          $Res Function(_AppointmentsReceived) then) =
      __$AppointmentsReceivedCopyWithImpl<$Res>;
  $Res call({Either<DoctorFailures, List<Appointment>> failureOrAppointments});
}

/// @nodoc
class __$AppointmentsReceivedCopyWithImpl<$Res>
    extends _$AppointmentWatcherEventCopyWithImpl<$Res>
    implements _$AppointmentsReceivedCopyWith<$Res> {
  __$AppointmentsReceivedCopyWithImpl(
      _AppointmentsReceived _value, $Res Function(_AppointmentsReceived) _then)
      : super(_value, (v) => _then(v as _AppointmentsReceived));

  @override
  _AppointmentsReceived get _value => super._value as _AppointmentsReceived;

  @override
  $Res call({
    Object? failureOrAppointments = freezed,
  }) {
    return _then(_AppointmentsReceived(
      failureOrAppointments == freezed
          ? _value.failureOrAppointments
          : failureOrAppointments // ignore: cast_nullable_to_non_nullable
              as Either<DoctorFailures, List<Appointment>>,
    ));
  }
}

/// @nodoc

class _$_AppointmentsReceived implements _AppointmentsReceived {
  const _$_AppointmentsReceived(this.failureOrAppointments);

  @override
  final Either<DoctorFailures, List<Appointment>> failureOrAppointments;

  @override
  String toString() {
    return 'AppointmentWatcherEvent.appointmentsReceived(failureOrAppointments: $failureOrAppointments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppointmentsReceived &&
            (identical(other.failureOrAppointments, failureOrAppointments) ||
                other.failureOrAppointments == failureOrAppointments));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failureOrAppointments);

  @JsonKey(ignore: true)
  @override
  _$AppointmentsReceivedCopyWith<_AppointmentsReceived> get copyWith =>
      __$AppointmentsReceivedCopyWithImpl<_AppointmentsReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() watchAllAppointmentsStarted,
    required TResult Function(
            Either<DoctorFailures, List<Appointment>> failureOrAppointments)
        appointmentsReceived,
  }) {
    return appointmentsReceived(failureOrAppointments);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? watchAllAppointmentsStarted,
    TResult Function(
            Either<DoctorFailures, List<Appointment>> failureOrAppointments)?
        appointmentsReceived,
  }) {
    return appointmentsReceived?.call(failureOrAppointments);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? watchAllAppointmentsStarted,
    TResult Function(
            Either<DoctorFailures, List<Appointment>> failureOrAppointments)?
        appointmentsReceived,
    required TResult orElse(),
  }) {
    if (appointmentsReceived != null) {
      return appointmentsReceived(failureOrAppointments);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WatchAllAppointmentsStarted value)
        watchAllAppointmentsStarted,
    required TResult Function(_AppointmentsReceived value) appointmentsReceived,
  }) {
    return appointmentsReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WatchAllAppointmentsStarted value)?
        watchAllAppointmentsStarted,
    TResult Function(_AppointmentsReceived value)? appointmentsReceived,
  }) {
    return appointmentsReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WatchAllAppointmentsStarted value)?
        watchAllAppointmentsStarted,
    TResult Function(_AppointmentsReceived value)? appointmentsReceived,
    required TResult orElse(),
  }) {
    if (appointmentsReceived != null) {
      return appointmentsReceived(this);
    }
    return orElse();
  }
}

abstract class _AppointmentsReceived implements AppointmentWatcherEvent {
  const factory _AppointmentsReceived(
          Either<DoctorFailures, List<Appointment>> failureOrAppointments) =
      _$_AppointmentsReceived;

  Either<DoctorFailures, List<Appointment>> get failureOrAppointments;
  @JsonKey(ignore: true)
  _$AppointmentsReceivedCopyWith<_AppointmentsReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AppointmentWatcherStateTearOff {
  const _$AppointmentWatcherStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

  _LoadFailure loadFailure(DoctorFailures doctorFailures) {
    return _LoadFailure(
      doctorFailures,
    );
  }

  _LoadSuccess loadSuccess(List<Appointment> appointment) {
    return _LoadSuccess(
      appointment,
    );
  }
}

/// @nodoc
const $AppointmentWatcherState = _$AppointmentWatcherStateTearOff();

/// @nodoc
mixin _$AppointmentWatcherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(DoctorFailures doctorFailures) loadFailure,
    required TResult Function(List<Appointment> appointment) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(DoctorFailures doctorFailures)? loadFailure,
    TResult Function(List<Appointment> appointment)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(DoctorFailures doctorFailures)? loadFailure,
    TResult Function(List<Appointment> appointment)? loadSuccess,
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
abstract class $AppointmentWatcherStateCopyWith<$Res> {
  factory $AppointmentWatcherStateCopyWith(AppointmentWatcherState value,
          $Res Function(AppointmentWatcherState) then) =
      _$AppointmentWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppointmentWatcherStateCopyWithImpl<$Res>
    implements $AppointmentWatcherStateCopyWith<$Res> {
  _$AppointmentWatcherStateCopyWithImpl(this._value, this._then);

  final AppointmentWatcherState _value;
  // ignore: unused_field
  final $Res Function(AppointmentWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$AppointmentWatcherStateCopyWithImpl<$Res>
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
    return 'AppointmentWatcherState.initial()';
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
    required TResult Function(DoctorFailures doctorFailures) loadFailure,
    required TResult Function(List<Appointment> appointment) loadSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(DoctorFailures doctorFailures)? loadFailure,
    TResult Function(List<Appointment> appointment)? loadSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(DoctorFailures doctorFailures)? loadFailure,
    TResult Function(List<Appointment> appointment)? loadSuccess,
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

abstract class _Initial implements AppointmentWatcherState {
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
    extends _$AppointmentWatcherStateCopyWithImpl<$Res>
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
    return 'AppointmentWatcherState.loadInProgress()';
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
    required TResult Function(DoctorFailures doctorFailures) loadFailure,
    required TResult Function(List<Appointment> appointment) loadSuccess,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(DoctorFailures doctorFailures)? loadFailure,
    TResult Function(List<Appointment> appointment)? loadSuccess,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(DoctorFailures doctorFailures)? loadFailure,
    TResult Function(List<Appointment> appointment)? loadSuccess,
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

abstract class _LoadInProgress implements AppointmentWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({DoctorFailures doctorFailures});

  $DoctorFailuresCopyWith<$Res> get doctorFailures;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$AppointmentWatcherStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object? doctorFailures = freezed,
  }) {
    return _then(_LoadFailure(
      doctorFailures == freezed
          ? _value.doctorFailures
          : doctorFailures // ignore: cast_nullable_to_non_nullable
              as DoctorFailures,
    ));
  }

  @override
  $DoctorFailuresCopyWith<$Res> get doctorFailures {
    return $DoctorFailuresCopyWith<$Res>(_value.doctorFailures, (value) {
      return _then(_value.copyWith(doctorFailures: value));
    });
  }
}

/// @nodoc

class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.doctorFailures);

  @override
  final DoctorFailures doctorFailures;

  @override
  String toString() {
    return 'AppointmentWatcherState.loadFailure(doctorFailures: $doctorFailures)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadFailure &&
            (identical(other.doctorFailures, doctorFailures) ||
                other.doctorFailures == doctorFailures));
  }

  @override
  int get hashCode => Object.hash(runtimeType, doctorFailures);

  @JsonKey(ignore: true)
  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(DoctorFailures doctorFailures) loadFailure,
    required TResult Function(List<Appointment> appointment) loadSuccess,
  }) {
    return loadFailure(doctorFailures);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(DoctorFailures doctorFailures)? loadFailure,
    TResult Function(List<Appointment> appointment)? loadSuccess,
  }) {
    return loadFailure?.call(doctorFailures);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(DoctorFailures doctorFailures)? loadFailure,
    TResult Function(List<Appointment> appointment)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadFailure != null) {
      return loadFailure(doctorFailures);
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

abstract class _LoadFailure implements AppointmentWatcherState {
  const factory _LoadFailure(DoctorFailures doctorFailures) = _$_LoadFailure;

  DoctorFailures get doctorFailures;
  @JsonKey(ignore: true)
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({List<Appointment> appointment});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$AppointmentWatcherStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object? appointment = freezed,
  }) {
    return _then(_LoadSuccess(
      appointment == freezed
          ? _value.appointment
          : appointment // ignore: cast_nullable_to_non_nullable
              as List<Appointment>,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.appointment);

  @override
  final List<Appointment> appointment;

  @override
  String toString() {
    return 'AppointmentWatcherState.loadSuccess(appointment: $appointment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadSuccess &&
            const DeepCollectionEquality()
                .equals(other.appointment, appointment));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(appointment));

  @JsonKey(ignore: true)
  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(DoctorFailures doctorFailures) loadFailure,
    required TResult Function(List<Appointment> appointment) loadSuccess,
  }) {
    return loadSuccess(appointment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(DoctorFailures doctorFailures)? loadFailure,
    TResult Function(List<Appointment> appointment)? loadSuccess,
  }) {
    return loadSuccess?.call(appointment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(DoctorFailures doctorFailures)? loadFailure,
    TResult Function(List<Appointment> appointment)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(appointment);
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

abstract class _LoadSuccess implements AppointmentWatcherState {
  const factory _LoadSuccess(List<Appointment> appointment) = _$_LoadSuccess;

  List<Appointment> get appointment;
  @JsonKey(ignore: true)
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
