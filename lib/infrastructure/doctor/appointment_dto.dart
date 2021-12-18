import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:teleceta_patients/domain/core/value_objects.dart';
import 'package:teleceta_patients/domain/doctor/appointment.dart';
import 'package:teleceta_patients/domain/patient/patient.dart';
import 'package:teleceta_patients/infrastructure/doctor/doctor_dto.dart';
import 'package:teleceta_patients/infrastructure/patient/patient_dto.dart';

part 'appointment_dto.freezed.dart';
part 'appointment_dto.g.dart';

@freezed
class AppointmentDto with _$AppointmentDto {
  const AppointmentDto._();

  const factory AppointmentDto(
      {@JsonKey(ignore: true) String? id,
      @required PatientDto? patient,
      @required String? patientName,
      @required DateTime? appointmentDate,
      @required TimeSlotsDto? timeSlots}) = _AppointmentDto;

  factory AppointmentDto.fromDomain(Appointment appointment) {
    return AppointmentDto(
        patient: PatientDto.fromDomain(appointment.patient!),
        patientName: appointment.patientName!,
        appointmentDate: appointment.appointmentDate,
        timeSlots: TimeSlotsDto.fromDomain(appointment.timeSlots!));
  }

  Appointment toDomain() {
    return Appointment(
        id: UniqueId.fromUniqueString(id!),
        patient: patient!.toDomain(),
        patientName: patientName!,
        appointmentDate: appointmentDate!,
        timeSlots: timeSlots!.toDomain());
  }

  factory AppointmentDto.fromJson(Map<String, dynamic> json) =>
      _$AppointmentDtoFromJson(json);

  factory AppointmentDto.fromFirestore(DocumentSnapshot doc) {
    return AppointmentDto.fromJson(doc.data() as Map<String, dynamic>)
        .copyWith(id: doc.id);
  }
}
