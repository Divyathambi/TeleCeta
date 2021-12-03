import 'package:freezed_annotation/freezed_annotation.dart';

part 'patient_failures.freezed.dart';

@freezed 
class PatientFailure with _$PatientFailure {
  const factory PatientFailure.unexpected() = _Unexpected; 
  const factory PatientFailure.insufficientPermissions() = _InsufficientPermissions; 
  const factory PatientFailure.unableToUpdate() = _UnableToUpdate;
}