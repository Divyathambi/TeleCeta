import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:teleceta_patients/domain/core/value_objects.dart';
import 'package:teleceta_patients/domain/patient/patient.dart';

part 'patient_dto.freezed.dart';

part 'patient_dto.g.dart';

@freezed 
class PatientDto with _$PatientDto {
  const PatientDto._(); 

  const factory PatientDto({
    // patient basic details
    @JsonKey(ignore: true) String? id,
    @required String? name, 
    @required String? emailAddress, 
    @required String? phoneNumber, 
    @required String? gender, 
    @required DateTime? dateOfBirth, 
    @required String? bloodGroup, 
    @required double? height, 
    @required double? weight, 
    @required String? location,

    // patient medical details 

    @required bool? haveAllergies, 
    @required List<String>? allergies, 
    @required bool? takesMedication, 
    @required List<String>? medications, 
    @required bool? haveInjuries, 
    @required bool? haveChronicIllnesses,
    @required bool? wasHospitalized, 
    @required List<String>? injuries, 
    @required bool? familyHealthIssue, 

    // patient lifestyle details 

    @required String? occupation, 
    @required String? workout, 
    @required String? stress, 
    @required String? diet, 
    @required String? alcohol, 
    @required String? smoke

  }) = _PatientDto;

  factory PatientDto.fromDomain(Patient patient) {
    return PatientDto(
      id: patient.id!.getOrCrash(),
      name: patient.name!, 
      emailAddress: patient.emailAddress!, 
      phoneNumber: patient.phoneNumber!, 
      gender: patient.gender!, 
      dateOfBirth: patient.dateOfBirth!, 
      bloodGroup: patient.bloodGroup!, 
      height: patient.height!, 
      weight: patient.weight!, 
      location: patient.location!, 
      haveAllergies: patient.haveAllergies!, 
      allergies: patient.allergies!, 
      takesMedication: patient.takesMedication!, 
      medications: patient.medications!, 
      haveInjuries: patient.haveInjuries!, 
      haveChronicIllnesses: patient.haveChronicIllnesses!, 
      wasHospitalized: patient.wasHospitalized!, 
      injuries: patient.injuries!, 
      familyHealthIssue: patient.familyHealthIssue!, 
      occupation: patient.occupation!, 
      workout: patient.workout!, 
      stress: patient.stress!, 
      diet: patient.diet!, 
      alcohol: patient.alcohol!, 
      smoke: patient.smoke!
    );
  }

  Patient toDomain() {
    return Patient(
      id: UniqueId.fromUniqueString(id!), 
      name: name, 
      emailAddress: emailAddress, 
      phoneNumber: phoneNumber, 
      gender: gender, 
      dateOfBirth: dateOfBirth, 
      bloodGroup: bloodGroup, 
      height: height, 
      weight: weight, 
      location: location, 
      haveAllergies: haveAllergies, 
      allergies: allergies, 
      takesMedication: takesMedication, 
      medications: medications, 
      haveInjuries: haveInjuries, 
      haveChronicIllnesses: haveChronicIllnesses, 
      wasHospitalized: wasHospitalized,  
      injuries: injuries, 
      familyHealthIssue: familyHealthIssue, 
      occupation: occupation, 
      workout: workout, 
      stress: stress, 
      diet: diet, 
      alcohol: alcohol, 
      smoke: smoke
    );
  }

  factory PatientDto.fromJson(Map<String, dynamic> json) => _$PatientDtoFromJson(json);

  factory PatientDto.fromFirestore(DocumentSnapshot doc) {
    return PatientDto.fromJson(doc.data() as Map<String, dynamic>).copyWith(id: doc.id);
  }
}