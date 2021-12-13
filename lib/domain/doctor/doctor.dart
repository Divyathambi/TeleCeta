import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:teleceta_patients/domain/core/value_objects.dart';
import 'package:teleceta_patients/domain/doctor/reviews.dart';
import 'package:teleceta_patients/domain/doctor/time_slots.dart';

part 'doctor.freezed.dart';

@freezed
class Doctor with _$Doctor {
  const Doctor._();

  const factory Doctor(
      {@required UniqueId? id,
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
      @required List<TimeSlots>? timeSlots,
      @required List<Reviews>? reviews}) = _Doctor;

  factory Doctor.empty() => Doctor(
      id: UniqueId(),
      name: '',
      email: '',
      phoneNumber: '',
      age: 0,
      gender: '',
      residentialAddress: '',
      speciality: '',
      highestQualification: '',
      nameOfClinic: '',
      location: '',
      experience: 0,
      profilePic: '',
      certificatePics: [],
      description: '',
      timeSlots: [],
      reviews: []);
}
