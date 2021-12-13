import 'package:freezed_annotation/freezed_annotation.dart';

part 'doctor_failures.freezed.dart';

@freezed
class DoctorFailures with _$DoctorFailures {
  const factory DoctorFailures.unexpected() = _Unexpected;
  const factory DoctorFailures.insufficientPermissions() =
      _InsufficientPermissions;
  const factory DoctorFailures.unableToUpdate() = _UnableToUpdate;
}
