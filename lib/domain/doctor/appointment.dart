import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:teleceta_patients/domain/core/value_objects.dart';
import 'package:teleceta_patients/domain/doctor/time_slots.dart';
import 'package:teleceta_patients/domain/patient/patient.dart';

part 'appointment.freezed.dart';

@freezed
abstract class Appointment with _$Appointment {
  const Appointment._();

  const factory Appointment(
      {@required UniqueId? id,
      @required Patient? patient,
      @required String? patientName,
      @required DateTime? appointmentDate,
      @required TimeSlots? timeSlots}) = _Appointment;

  factory Appointment.empty() => Appointment(
      id: UniqueId(),
      patient: Patient.empty(),
      patientName: '',
      appointmentDate: DateTime.now(),
      timeSlots: TimeSlots.empty());
}
