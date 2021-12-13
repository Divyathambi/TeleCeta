import 'package:dartz/dartz.dart';
import 'package:teleceta_patients/domain/doctor/doctor.dart';
import 'package:teleceta_patients/domain/doctor/doctor_failures.dart';

abstract class IDoctorRepository {
  Stream<Either<DoctorFailures, List<Doctor>>> watchAllDoctors();
  Stream<Either<DoctorFailures, Doctor>> watchDoctor();
  Stream<Either<DoctorFailures, List<Doctor>>> watchAllPediatrics();
  Stream<Either<DoctorFailures, List<Doctor>>> watchAllDermatologists();
  Stream<Either<DoctorFailures, List<Doctor>>> watchAllGynaecologists();
  Stream<Either<DoctorFailures, List<Doctor>>> watchAllOrthopaedics();
  Stream<Either<DoctorFailures, List<Doctor>>> watchAllRadiologists();
  Stream<Either<DoctorFailures, List<Doctor>>> watchAllOncologists();
  Stream<Either<DoctorFailures, List<Doctor>>> watchAllUrologists();
  Stream<Either<DoctorFailures, List<Doctor>>> watchAllCardiologists();
  Stream<Either<DoctorFailures, List<Doctor>>> watchAllOphthalmologists();
  Stream<Either<DoctorFailures, List<Doctor>>> watchAllFamilyMedicineDoctors();
  Stream<Either<DoctorFailures, List<Doctor>>> watchAllNeurologists();
  Stream<Either<DoctorFailures, List<Doctor>>> watchAllGeneralPhysicians();
  Stream<Either<DoctorFailures, List<Doctor>>> watchAllPsychiatrists();
  Stream<Either<DoctorFailures, List<Doctor>>> watchAllPlasticSurgeons();
  Stream<Either<DoctorFailures, List<Doctor>>> watchAllEndocrinologists();
  Stream<Either<DoctorFailures, List<Doctor>>> watchAllGastroenterologists();
  Stream<Either<DoctorFailures, List<Doctor>>> watchAllNeuroSurgeons();
  Stream<Either<DoctorFailures, List<Doctor>>> watchAllPulmonologists();
  Stream<Either<DoctorFailures, List<Doctor>>> watchAllRheumatologists();
  Stream<Either<DoctorFailures, List<Doctor>>> watchAllGeriatrics();
  Stream<Either<DoctorFailures, List<Doctor>>> watchAllDentists();
  Stream<Either<DoctorFailures, List<Doctor>>> watchAllOsteopaths();
  Stream<Either<DoctorFailures, List<Doctor>>> watchAllEnts();
  Stream<Either<DoctorFailures, List<Doctor>>> watchAllPodiatrists();
  Stream<Either<DoctorFailures, List<Doctor>>> watchAllDoctorsByLocation();
  Stream<Either<DoctorFailures, List<Doctor>>> watchAllDoctorsByAvailableDays();
}
