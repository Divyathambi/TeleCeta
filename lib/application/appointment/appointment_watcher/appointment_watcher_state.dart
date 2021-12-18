part of 'appointment_watcher_bloc.dart';

@freezed
class AppointmentWatcherState with _$AppointmentWatcherState {
  const factory AppointmentWatcherState.initial() = _Initial;
  const factory AppointmentWatcherState.loadInProgress() = _LoadInProgress;
  const factory AppointmentWatcherState.loadFailure(
      DoctorFailures doctorFailures) = _LoadFailure;
  const factory AppointmentWatcherState.loadSuccess(
      List<Appointment> appointment) = _LoadSuccess;
}
