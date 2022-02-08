import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:teleceta_patients/domain/core/value_objects.dart';
import 'package:teleceta_patients/domain/doctor/doctor.dart';
import 'package:teleceta_patients/domain/doctor/reviews.dart';
import 'package:teleceta_patients/domain/doctor/time_slots.dart';

part 'doctor_dto.freezed.dart';
part 'doctor_dto.g.dart';

@freezed
class DoctorDto with _$DoctorDto {
  const DoctorDto._();

  const factory DoctorDto(
      {@JsonKey(ignore: true) String? id,
      @required String? name,
      @required String? email,
      @required String? phoneNumber,
      @required int? age,
      @required String? gender,
      @required String? residentialAddress,
      @required String? speciality,
      @required String? highestQualification,
      @required String? nameOfClinic,
      @required String? location,
      @required int? experience,
      @required String? profilePic,
      @required List<String>? certificatePics,
      @required String? description,
      @required List<TimeSlotsDto>? timeSlots,
      @required List<ReviewsDto>? reviews}) = _DoctorDto;

  factory DoctorDto.fromDomain(Doctor doctor) {
    return DoctorDto(
        id: doctor.id!.getOrCrash(),
        name: doctor.name!,
        email: doctor.email!,
        phoneNumber: doctor.phoneNumber!,
        age: doctor.age!,
        gender: doctor.gender!,
        residentialAddress: doctor.residentialAddress!,
        speciality: doctor.speciality!,
        highestQualification: doctor.highestQualification!,
        nameOfClinic: doctor.nameOfClinic!,
        location: doctor.location!,
        experience: doctor.experience!,
        profilePic: doctor.profilePic!,
        certificatePics: doctor.certificatePics!,
        description: doctor.description!,
        timeSlots: doctor.timeSlots!
            .map((timeSlot) => TimeSlotsDto.fromDomain(timeSlot))
            .toList(),
        reviews: doctor.reviews!
            .map((review) => ReviewsDto.fromDomain(review))
            .toList());
  }

  Doctor toDomain() {
    return Doctor(
        id: UniqueId.fromUniqueString(id!),
        name: name!,
        email: email!,
        phoneNumber: phoneNumber!,
        age: age!,
        gender: gender!,
        residentialAddress: residentialAddress!,
        speciality: speciality!,
        highestQualification: highestQualification!,
        nameOfClinic: nameOfClinic!,
        location: location!,
        experience: experience!,
        profilePic: profilePic!,
        certificatePics: certificatePics!,
        description: description!,
        timeSlots: timeSlots!.map((dto) => dto.toDomain()).toList(),
        reviews: reviews!.map((dto) => dto.toDomain()).toList());
  }

  factory DoctorDto.fromJson(Map<String, dynamic> json) =>
      _$DoctorDtoFromJson(json);

  factory DoctorDto.fromFirestore(DocumentSnapshot doc) {
    return DoctorDto.fromJson(doc.data() as Map<String, dynamic>)
        .copyWith(id: doc.id);
  }
}

class TimestampConverter implements JsonConverter<DateTime?, Timestamp?> {
  const TimestampConverter();

  @override
  DateTime fromJson(Timestamp? timestamp) {
    return timestamp!.toDate();
  }

  @override
  Timestamp toJson(DateTime? date) => Timestamp.fromDate(date!);
}

@freezed
class TimeSlotsDto with _$TimeSlotsDto {
  const TimeSlotsDto._();

  const factory TimeSlotsDto(
      {@required String? id,
      @required @TimestampConverter() DateTime? beginningTime,
      @required @TimestampConverter() DateTime? endingTime,
      @required List<String>? days}) = _TimeSlotsDto;

  factory TimeSlotsDto.fromDomain(TimeSlots timeSlots) {
    return TimeSlotsDto(
        id: timeSlots.id!.getOrCrash(),
        beginningTime: timeSlots.beginningTime!,
        endingTime: timeSlots.endingTime!,
        days: timeSlots.days!);
  }

  TimeSlots toDomain() {
    return TimeSlots(
        id: UniqueId.fromUniqueString(id!),
        beginningTime: beginningTime!,
        endingTime: endingTime!,
        days: days!);
  }

  factory TimeSlotsDto.fromJson(Map<String, dynamic> json) =>
      _$TimeSlotsDtoFromJson(json);
}

@freezed
class ReviewsDto with _$ReviewsDto {
  const ReviewsDto._();

  const factory ReviewsDto(
      {@required String? id,
      @required String? name,
      @required int? rating,
      @required String? content}) = _ReviewsDto;

  factory ReviewsDto.fromDomain(Reviews reviews) {
    return ReviewsDto(
        id: reviews.id!.getOrCrash(),
        name: reviews.name!,
        rating: reviews.rating!,
        content: reviews.content!);
  }

  Reviews toDomain() {
    return Reviews(
        id: UniqueId.fromUniqueString(id!),
        name: name!,
        rating: rating!,
        content: content!);
  }

  factory ReviewsDto.fromJson(Map<String, dynamic> json) =>
      _$ReviewsDtoFromJson(json);
}
