part of 'doctor_watcher_bloc.dart';

@freezed
class DoctorWatcherEvent with _$DoctorWatcherEvent {
  const factory DoctorWatcherEvent.watchAllDoctorsStarted() =
      _WatchAllDoctorsStarted;
  const factory DoctorWatcherEvent.watchAllPediatricsStarted() =
      _WatchAllPediatricsStarted;
  const factory DoctorWatcherEvent.watchAllDermatologistsStarted() =
      _WatchAllDermatologistsStarted;
  const factory DoctorWatcherEvent.watchAllGynaecologistsStarted() =
      _WatchAllGynaecologistsStarted;
  const factory DoctorWatcherEvent.watchAllOrthopaedicsStarted() =
      _WatchAllOrthopaedicsStarted;
  const factory DoctorWatcherEvent.watchAllRadiologistsStarted() =
      _WatchAllRadiologistsStarted;
  const factory DoctorWatcherEvent.watchAllOncologistsStarted() =
      _WatchAllOncologistsStarted;
  const factory DoctorWatcherEvent.watchAllUrologistsStarted() =
      _WatchAllUrologistsStarted;
  const factory DoctorWatcherEvent.watchAllCardiologistsStarted() =
      _WatchAllCardiologistsStarted;
  const factory DoctorWatcherEvent.watchAllOphthalmologistsStarted() =
      _WatchAllOphthalmologistsStarted;
  const factory DoctorWatcherEvent.watchAllFamilyMedicineDoctorsStarted() =
      _WatchAllFamilyDoctorsStarted;
  const factory DoctorWatcherEvent.watchAllNeurologistsStarted() =
      _WatchAllNeurologistsStarted;
  const factory DoctorWatcherEvent.watchAllGeneralPhysiciansStarted() =
      _WatchAllGeneralPhysiciansStarted;
  const factory DoctorWatcherEvent.watchAllPsychiatristsStarted() =
      _WatchAllPsychiatristsStarted;
  const factory DoctorWatcherEvent.watchAllPlasticSurgeonsStarted() =
      _WatchAllPlasticSurgeonsStarted;
  const factory DoctorWatcherEvent.watchAllEndocrinologistsStarted() =
      _WatchAllEndocrinologistsStarted;
  const factory DoctorWatcherEvent.watchAllGastroenterologistsStarted() =
      _WatchAllGastroenterologistsStarted;
  const factory DoctorWatcherEvent.watchAllNeuroSurgeonsStarted() =
      _WatchAllNeuroSurgeonsStarted;
  const factory DoctorWatcherEvent.watchAllPulmonologistsStarted() =
      _WatchAllPulmonologistsStarted;
  const factory DoctorWatcherEvent.watchAllRheumatologistsStarted() =
      _WatchAllRheumatologistsStarted;
  const factory DoctorWatcherEvent.watchAllGeriatricsStarted() =
      _WatchAllGeriatricsStarted;
  const factory DoctorWatcherEvent.watchAllDentistsStarted() =
      _WatchAllDentistsStarted;
  const factory DoctorWatcherEvent.watchAllOsteopathsStarted() =
      _WatchAllOsteopathsStarted;
  const factory DoctorWatcherEvent.watchAllEntsStarted() = _WatchAllEntsStarted;
  const factory DoctorWatcherEvent.watchAllPodiatristsStarted() =
      _WatchAllPodiatristsStarted;
  const factory DoctorWatcherEvent.doctorsReceived(
      Either<DoctorFailures, List<Doctor>> failureOrDoctors) = _DoctorsReceived;
}
