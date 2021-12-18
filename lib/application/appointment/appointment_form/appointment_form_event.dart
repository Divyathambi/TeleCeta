part of 'appointment_form_bloc.dart';

@freezed
class AppointmentFormEvent with _$AppointmentFormEvent {
  const factory AppointmentFormEvent.patientDetailsInitialized(
      Option<Patient> initialPatientDetails) = _PatientDetailsInitialized;
  const factory AppointmentFormEvent.patientChanged(PatientDto patientDto) =
      _PatientChanged;
  const factory AppointmentFormEvent.patientNameChanged(String patientName) =
      _PatientNameChanged;
  const factory AppointmentFormEvent.appointmentDateChanged(
      DateTime appointmentDate) = _AppointmentDateChanged;
  const factory AppointmentFormEvent.timeSlotsChanged(
      TimeSlotsDto timeSlotsDto) = _TimeSlotsChanged;
  const factory AppointmentFormEvent.saved() = _Saved;
}
