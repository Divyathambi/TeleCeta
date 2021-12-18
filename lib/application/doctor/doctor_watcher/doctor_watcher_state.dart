part of 'doctor_watcher_bloc.dart';

@freezed
class DoctorWatcherState with _$DoctorWatcherState {
  const factory DoctorWatcherState.initial() = _Initial;
  const factory DoctorWatcherState.loadInProgress() = _LoadInProgress;
  const factory DoctorWatcherState.loadSuccess(List<Doctor> doctor) =
      _LoadSuccess;
  const factory DoctorWatcherState.loadFailure(DoctorFailures doctorFailures) =
      _LoadFailure;
}
