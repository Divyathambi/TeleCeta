part of 'patient_watcher_bloc.dart';

@freezed
class PatientWatcherEvent with _$PatientWatcherEvent {
  const factory PatientWatcherEvent.watchPatientStarted() = _WatchPatientStarted;
  const factory PatientWatcherEvent.patientReceived(  
    Either<PatientFailure, Patient> failureOrPatient
  ) = _PatientReceived;
}