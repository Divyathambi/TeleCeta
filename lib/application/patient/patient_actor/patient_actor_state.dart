part of 'patient_actor_bloc.dart';

@freezed
class PatientActorState with _$PatientActorState {
  const factory PatientActorState.initial() = _Initial;
  const factory PatientActorState.actionInProgress() = _ActionInProgress; 
  const factory PatientActorState.deleteFailure(PatientFailure patientFailure) = _DeleteFailure; 
  const factory PatientActorState.deleteSuccess() = _DeleteSuccess;
}
