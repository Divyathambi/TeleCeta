part of 'patient_form_bloc.dart';

@freezed
class PatientFormState with _$PatientFormState {
  const factory PatientFormState({
    @required Patient? patient,
    @required bool? isSaving, 
    @required bool? isEditing, 
    @required bool? showErrorMessages, 
    @required Option<Either<PatientFailure, Unit>>? saveFailureOrSuccessOption, 
  }) = _PatientFormState;

  factory PatientFormState.initial() => PatientFormState(
    patient: Patient.empty(), 
    isSaving: false, 
    isEditing: false, 
    showErrorMessages: false, 
    saveFailureOrSuccessOption: none(),
  );
}
