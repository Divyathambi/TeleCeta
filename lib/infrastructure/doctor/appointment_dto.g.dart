// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AppointmentDto _$$_AppointmentDtoFromJson(Map<String, dynamic> json) =>
    _$_AppointmentDto(
      patient: json['patient'] == null
          ? null
          : PatientDto.fromJson(json['patient'] as Map<String, dynamic>),
      patientName: json['patientName'] as String?,
      appointmentDate: json['appointmentDate'] == null
          ? null
          : DateTime.parse(json['appointmentDate'] as String),
      timeSlots: json['timeSlots'] == null
          ? null
          : TimeSlotsDto.fromJson(json['timeSlots'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AppointmentDtoToJson(_$_AppointmentDto instance) =>
    <String, dynamic>{
      'patient': instance.patient,
      'patientName': instance.patientName,
      'appointmentDate': instance.appointmentDate?.toIso8601String(),
      'timeSlots': instance.timeSlots,
    };
