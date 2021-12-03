part of 'patient_actor_bloc.dart';

@freezed
class PatientActorEvent with _$PatientActorEvent {
  const factory PatientActorEvent.deleted(Patient patient) = _Deleted;
}