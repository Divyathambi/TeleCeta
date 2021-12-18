part of 'appointment_actor_bloc.dart';

@freezed
class AppointmentActorEvent with _$AppointmentActorEvent {
  const factory AppointmentActorEvent.deleted(Appointment appointment) =
      _Deleted;
}
