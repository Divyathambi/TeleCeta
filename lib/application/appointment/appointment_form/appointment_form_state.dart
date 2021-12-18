part of 'appointment_form_bloc.dart';

@freezed
class AppointmentFormState with _$AppointmentFormState {
  const factory AppointmentFormState({
    @required Appointment? appointment,
    @required Patient? patient,
    @required bool? isSaving,
    @required bool? isEditing,
    @required bool? showErrorMessages,
    @required Option<Either<DoctorFailures, Unit>>? saveFailureOrSuccessOption,
  }) = _AppointmentFormState;

  factory AppointmentFormState.initial() => AppointmentFormState(
      appointment: Appointment.empty(),
      patient: Patient.empty(),
      isSaving: false,
      isEditing: false,
      showErrorMessages: false,
      saveFailureOrSuccessOption: none());
}
