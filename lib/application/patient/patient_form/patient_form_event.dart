part of 'patient_form_bloc.dart';

@freezed
class PatientFormEvent with _$PatientFormEvent {
  const factory PatientFormEvent.nameChanged(String name) = _NameChanged; 
  const factory PatientFormEvent.emailAddressChanged(String emailAddress) = _EmailAddressChanged; 
  const factory PatientFormEvent.phoneNumberChanged(String phoneNumber) = _PhoneNumberChanged; 
  const factory PatientFormEvent.genderChanged(String gender) = _GenderChanged; 
  const factory PatientFormEvent.dateOfBirthChanged(DateTime dateOfBirth) = _DateOfBirthChanged; 
  const factory PatientFormEvent.bloodGroupChanged(String bloodGroup) = _BloodGroupChanged; 
  const factory PatientFormEvent.heightChanged(double height) = _HeightChanged; 
  const factory PatientFormEvent.weightChanged(double weight) = _WeightChanged; 
  const factory PatientFormEvent.locationChanged(String location) = _LocationChanged; 

  // Medical Details

  const factory PatientFormEvent.haveAllergiesChanged(bool haveAllergies) = _HaveAllergiesChanged; 
  const factory PatientFormEvent.allergiesChanged(List<String> allergies) = _AllergiesChanged; 
  const factory PatientFormEvent.takesMedicationChanged(bool takesMedication) = _TakesMedicationChanged; 
  const factory PatientFormEvent.medicationsChanged(List<String> medications) = _MedicationsChanged; 
  const factory PatientFormEvent.haveInjuriesChanged(bool haveInjuries) = _HaveInjuriesChanged; 
  const factory PatientFormEvent.haveChronicIllnessesChanged(bool haveChronicIllnesses) = _HaveChronicIllnessesChanged; 
  const factory PatientFormEvent.wasHospitalizedChanged(bool wasHospitalized) = _WasHospitalizedChanged; 
  const factory PatientFormEvent.injuriesChanged(List<String> injuries) = _InjuriesChanged; 
  const factory PatientFormEvent.familyHealthIssueChanged(bool familyHealthIssue) = _FamilyHealthIssueChanged; 

  // Lifestyle Details

  const factory PatientFormEvent.occupationChanged(String occupation) = _OccupationChanged; 
  const factory PatientFormEvent.workoutChanged(String workout) = _WorkoutChanged; 
  const factory PatientFormEvent.stressChanged(String stress) = _StressChanged; 
  const factory PatientFormEvent.dietChanged(String diet) = _DietChanged; 
  const factory PatientFormEvent.alcoholChanged(String alcohol) = _AlcoholChanged; 
  const factory PatientFormEvent.smokeChanged(String smoke) = _SmokeChanged;
  const factory PatientFormEvent.saved() = _Saved;
}