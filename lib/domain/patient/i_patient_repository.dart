import 'package:dartz/dartz.dart';
import 'package:teleceta_patients/domain/patient/patient.dart';
import 'package:teleceta_patients/domain/patient/patient_failures.dart';

abstract class IPatientRepository {
  Stream<Either<PatientFailure, Patient>> watchPatientDetails(); 
  Future<Either<PatientFailure, Unit>> createPatient(Patient patient); 
  Future<Either<PatientFailure, Unit>> updatePatient(Patient patient); 
  Future<Either<PatientFailure, Unit>> deletePatient(Patient patient);
}