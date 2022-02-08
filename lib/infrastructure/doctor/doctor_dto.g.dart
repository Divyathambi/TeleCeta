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
      timeSlots: (json['timeSlots'] as List<dynamic>?)
          ?.map((e) => TimeSlotsDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      reviews: (json['reviews'] as List<dynamic>?)
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
      'timeSlots': instance.timeSlots,
      'reviews': instance.reviews,
    };

_$_TimeSlotsDto _$$_TimeSlotsDtoFromJson(Map<String, dynamic> json) =>
    _$_TimeSlotsDto(
      id: json['id'] as String?,
      beginningTime: const TimestampConverter()
          .fromJson(json['beginningTime'] as Timestamp?),
      endingTime:
          const TimestampConverter().fromJson(json['endingTime'] as Timestamp?),
      days: (json['days'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_TimeSlotsDtoToJson(_$_TimeSlotsDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'beginningTime':
          const TimestampConverter().toJson(instance.beginningTime),
      'endingTime': const TimestampConverter().toJson(instance.endingTime),
      'days': instance.days,
    };

_$_ReviewsDto _$$_ReviewsDtoFromJson(Map<String, dynamic> json) =>
    _$_ReviewsDto(
      id: json['id'] as String?,
      name: json['name'] as String?,
      rating: json['rating'] as int?,
      content: json['content'] as String?,
    );

Map<String, dynamic> _$$_ReviewsDtoToJson(_$_ReviewsDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'rating': instance.rating,
      'content': instance.content,
    };
