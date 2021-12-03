import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:teleceta_patients/domain/patient/i_patient_repository.dart';
import 'package:teleceta_patients/domain/patient/patient_failures.dart';
import 'package:teleceta_patients/domain/patient/patient.dart';
import 'package:teleceta_patients/infrastructure/core/firestore_helpers.dart';
import 'package:teleceta_patients/infrastructure/patient/patient_dto.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: IPatientRepository)
class PatientRepository implements IPatientRepository {

  final FirebaseFirestore _firestore;

  PatientRepository(this._firestore);

  @override
  Stream<Either<PatientFailure, Patient>> watchPatientDetails() async* {

    final patientDoc = await _firestore.patientDocument(); 

    yield* patientDoc.snapshots().map(
      (snapshot) => right<PatientFailure, Patient>( 
        PatientDto.fromFirestore(snapshot).toDomain()
      )
    ).onErrorReturnWith((e, _) {
      if(e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const PatientFailure.insufficientPermissions());
      } else {
        return left(const PatientFailure.unexpected()); 
      }
    });
  } 

  @override
  Future<Either<PatientFailure, Unit>> createPatient(Patient patient) async {
    try {
      final patientDoc = await _firestore.patientDocument(); 
      final patientDto = PatientDto.fromDomain(patient); 

      await patientDoc.set(patientDto.toJson());
      return right(unit);
    } on FirebaseException catch (e) {
      if(e.message!.contains('PERMISSION_DENIED')) {
        return left(const PatientFailure.insufficientPermissions());
      } else {
        return left(const PatientFailure.unexpected());
      }
    }
  }


  @override
  Future<Either<PatientFailure, Unit>> updatePatient(Patient patient) async {
    try {
      final patientDoc = await _firestore.patientDocument();
      final patientDto = PatientDto.fromDomain(patient);

      await patientDoc.update(patientDto.toJson());
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const PatientFailure.insufficientPermissions());
      } else {
        return left(const PatientFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<PatientFailure, Unit>> deletePatient(Patient patient) async {
    try {
      final patientDoc = await _firestore.patientDocument(); 

      await patientDoc.delete();
      return right(unit);
    } on FirebaseException catch (e) {
      if(e.message!.contains('PERMISSION_DENIED')) {
        return left(const PatientFailure.insufficientPermissions());
      } else {
        return left(const PatientFailure.unexpected());
      }
    }
  }

}