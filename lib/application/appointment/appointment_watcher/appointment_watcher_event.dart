part of 'appointment_watcher_bloc.dart';

@freezed
class AppointmentWatcherEvent with _$AppointmentWatcherEvent {
  const factory AppointmentWatcherEvent.watchAllAppointmentsStarted() =
      _WatchAllAppointmentsStarted;
  const factory AppointmentWatcherEvent.appointmentsReceived(
          Either<DoctorFailures, List<Appointment>> failureOrAppointments) =
      _AppointmentsReceived;
}
