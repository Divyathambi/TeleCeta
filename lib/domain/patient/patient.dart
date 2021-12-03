import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:teleceta_patients/domain/core/value_objects.dart';

part 'patient.freezed.dart';

@freezed
abstract class Patient implements _$Patient{
  const Patient._(); 

  const factory Patient({

    // patient basic details

    @required UniqueId? id, 
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

  }) = _Patient;

  factory Patient.empty() =>  Patient(

    id: UniqueId(), 
    name: '', 
    emailAddress: '', 
    phoneNumber: '', 
    gender: '', 
    dateOfBirth: DateTime.now(), 
    bloodGroup: '', 
    height: 0, 
    weight: 0, 
    location: '', 

    // patient medical details

    haveAllergies: false, 
    allergies: [], 
    takesMedication: false, 
    medications: [], 
    haveInjuries: false, 
    haveChronicIllnesses: false, 
    wasHospitalized: false, 
    injuries: [], 
    familyHealthIssue: false, 

    // patient lifestyle details 

    occupation: '', 
    workout: '', 
    stress: '', 
    diet: '', 
    alcohol: '', 
    smoke: ''
  );

}