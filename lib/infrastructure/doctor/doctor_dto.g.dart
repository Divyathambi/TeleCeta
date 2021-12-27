// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctor_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DoctorDto _$$_DoctorDtoFromJson(Map<String, dynamic> json) => _$_DoctorDto(
      name: json['name'] as String?,
      email: json['email'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      age: json['age'] as int?,
      gender: json['gender'] as String?,
      residentialAddress: json['residentialAddress'] as String?,
      speciality: json['speciality'] as String?,
      highestQualification: json['highestQualification'] as String?,
      nameOfClinic: json['nameOfClinic'] as String?,
      location: json['location'] as String?,
      experience: json['experience'] as int?,
      profilePic: json['profilePic'] as String?,
      certificatePics: (json['certificatePics'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      description: json['description'] as String?,
      timeSlotsDto: (json['timeSlotsDto'] as List<dynamic>?)
          ?.map((e) => TimeSlotsDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      reviewsDto: (json['reviewsDto'] as List<dynamic>?)
          ?.map((e) => ReviewsDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_DoctorDtoToJson(_$_DoctorDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'phoneNumber': instance.phoneNumber,
      'age': instance.age,
      'gender': instance.gender,
      'residentialAddress': instance.residentialAddress,
      'speciality': instance.speciality,
      'highestQualification': instance.highestQualification,
      'nameOfClinic': instance.nameOfClinic,
      'location': instance.location,
      'experience': instance.experience,
      'profilePic': instance.profilePic,
      'certificatePics': instance.certificatePics,
      'description': instance.description,
      'timeSlotsDto': instance.timeSlotsDto,
      'reviewsDto': instance.reviewsDto,
    };

_$_TimeSlotsDto _$$_TimeSlotsDtoFromJson(Map<String, dynamic> json) =>
    _$_TimeSlotsDto(
      id: json['id'] as String?,
      beginningTime: json['beginningTime'] == null
          ? null
          : DateTime.parse(json['beginningTime'] as String),
      endingTime: json['endingTime'] == null
          ? null
          : DateTime.parse(json['endingTime'] as String),
      days: (json['days'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_TimeSlotsDtoToJson(_$_TimeSlotsDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'beginningTime': instance.beginningTime?.toIso8601String(),
      'endingTime': instance.endingTime?.toIso8601String(),
      'days': instance.days,
    };

_$_ReviewsDto _$$_ReviewsDtoFromJson(Map<String, dynamic> json) =>
    _$_ReviewsDto(
      name: json['name'] as String?,
      rating: json['rating'] as int?,
      content: json['content'] as String?,
    );

Map<String, dynamic> _$$_ReviewsDtoToJson(_$_ReviewsDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'rating': instance.rating,
      'content': instance.content,
    };
