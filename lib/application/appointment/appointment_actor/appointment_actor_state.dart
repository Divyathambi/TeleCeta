part of 'appointment_actor_bloc.dart';

@freezed
class AppointmentActorState with _$AppointmentActorState {
  const factory AppointmentActorState.initial() = _Initial;
  const factory AppointmentActorState.actionInProgress() = _ActionInProgress;
  const factory AppointmentActorState.deleteFailure(
      DoctorFailures doctorFailures) = _DeleteFailure;
  const factory AppointmentActorState.deleteSuccess() = _DeleteSuccess;
}
