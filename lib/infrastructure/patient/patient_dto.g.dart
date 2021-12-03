// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PatientDto _$$_PatientDtoFromJson(Map<String, dynamic> json) =>
    _$_PatientDto(
      name: json['name'] as String?,
      emailAddress: json['emailAddress'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      gender: json['gender'] as String?,
      dateOfBirth: json['dateOfBirth'] == null
          ? null
          : DateTime.parse(json['dateOfBirth'] as String),
      bloodGroup: json['bloodGroup'] as String?,
      height: (json['height'] as num?)?.toDouble(),
      weight: (json['weight'] as num?)?.toDouble(),
      location: json['location'] as String?,
      haveAllergies: json['haveAllergies'] as bool?,
      allergies: (json['allergies'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      takesMedication: json['takesMedication'] as bool?,
      medications: (json['medications'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      haveInjuries: json['haveInjuries'] as bool?,
      haveChronicIllnesses: json['haveChronicIllnesses'] as bool?,
      wasHospitalized: json['wasHospitalized'] as bool?,
      injuries: (json['injuries'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      familyHealthIssue: json['familyHealthIssue'] as bool?,
      occupation: json['occupation'] as String?,
      workout: json['workout'] as String?,
      stress: json['stress'] as String?,
      diet: json['diet'] as String?,
      alcohol: json['alcohol'] as String?,
      smoke: json['smoke'] as String?,
    );

Map<String, dynamic> _$$_PatientDtoToJson(_$_PatientDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'emailAddress': instance.emailAddress,
      'phoneNumber': instance.phoneNumber,
      'gender': instance.gender,
      'dateOfBirth': instance.dateOfBirth?.toIso8601String(),
      'bloodGroup': instance.bloodGroup,
      'height': instance.height,
      'weight': instance.weight,
      'location': instance.location,
      'haveAllergies': instance.haveAllergies,
      'allergies': instance.allergies,
      'takesMedication': instance.takesMedication,
      'medications': instance.medications,
      'haveInjuries': instance.haveInjuries,
      'haveChronicIllnesses': instance.haveChronicIllnesses,
      'wasHospitalized': instance.wasHospitalized,
      'injuries': instance.injuries,
      'familyHealthIssue': instance.familyHealthIssue,
      'occupation': instance.occupation,
      'workout': instance.workout,
      'stress': instance.stress,
      'diet': instance.diet,
      'alcohol': instance.alcohol,
      'smoke': instance.smoke,
    };
