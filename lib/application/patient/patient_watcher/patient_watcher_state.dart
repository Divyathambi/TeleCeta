part of 'patient_watcher_bloc.dart';

@freezed
class PatientWatcherState with _$PatientWatcherState {
  const factory PatientWatcherState.initial() = _Initial;
  const factory PatientWatcherState.loadInProgress() = _LoadInProgress; 
  const factory PatientWatcherState.loadFailure(PatientFailure patientFailure) = _LoadFailure; 
  const factory PatientWatcherState.loadSuccess(Patient patient) = _LoadSuccess;
}
