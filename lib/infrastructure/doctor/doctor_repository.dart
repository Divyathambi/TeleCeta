import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:teleceta_patients/domain/doctor/doctor_failures.dart';
import 'package:teleceta_patients/domain/doctor/doctor.dart';
import 'package:teleceta_patients/domain/doctor/appointment.dart';
import 'package:dartz/dartz.dart';
import 'package:teleceta_patients/domain/doctor/i_doctor_repository.dart';
import 'package:teleceta_patients/infrastructure/core/firestore_helpers.dart';
import 'package:teleceta_patients/infrastructure/doctor/appointment_dto.dart';
import 'package:rxdart/rxdart.dart';
import 'package:teleceta_patients/infrastructure/doctor/doctor_dto.dart';

@LazySingleton(as: IDoctorRepository)
class DoctorRepository implements IDoctorRepository {
  final FirebaseFirestore? _firestore;

  DoctorRepository(this._firestore);

  @override
  Future<Either<DoctorFailures, Unit>> createAppointment(
      Appointment appointment) async {
    try {
      final patientDoc = await _firestore!.patientDocument();
      final doctorDoc = await _firestore!.doctorDocument();
      final appointmentDto = AppointmentDto.fromDomain(appointment);

      await patientDoc.appointmentCollection
          .doc(appointmentDto.id)
          .set(appointmentDto.toJson());
      await doctorDoc.appointmentCollection
          .doc(appointmentDto.id)
          .set(appointmentDto.toJson());
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const DoctorFailures.insufficientPermissions());
      } else {
        return left(const DoctorFailures.unexpected());
      }
    }
  }

  @override
  Future<Either<DoctorFailures, Unit>> deleteAppointment(
      Appointment appointment) async {
    try {
      final patientDoc = await _firestore!.patientDocument();
      final appointmentId = appointment.id!.getOrCrash();

      await patientDoc.appointmentCollection.doc(appointmentId).delete();
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const DoctorFailures.insufficientPermissions());
      } else {
        return left(const DoctorFailures.unexpected());
      }
    }
  }

  @override
  Future<Either<DoctorFailures, Unit>> updateAppointment(
      Appointment appointment) async {
    try {
      final patientDoc = await _firestore!.patientDocument();
      final doctorDoc = await _firestore!.doctorDocument();
      final appointmentDto = AppointmentDto.fromDomain(appointment);

      await patientDoc.appointmentCollection
          .doc(appointmentDto.id)
          .update(appointmentDto.toJson());
      await doctorDoc.appointmentCollection
          .doc(appointmentDto.id)
          .update(appointmentDto.toJson());
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message!.contains('PERMISSION_DENIED')) {
        return left(const DoctorFailures.insufficientPermissions());
      } else {
        return left(const DoctorFailures.unexpected());
      }
    }
  }

  @override
  Stream<Either<DoctorFailures, List<Appointment>>>
      watchAllAppointments() async* {
    final patientDoc = await _firestore!.patientDocument();

    yield* patientDoc.appointmentCollection
        .snapshots()
        .map((snapshot) => right<DoctorFailures, List<Appointment>>(snapshot
            .docs
            .map((doc) => AppointmentDto.fromFirestore(doc).toDomain())
            .toList()))
        .onErrorReturnWith((e, _) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const DoctorFailures.insufficientPermissions());
      } else {
        return left(const DoctorFailures.unexpected());
      }
    });
  }

  @override
  Stream<Either<DoctorFailures, List<Doctor>>>? watchAllCardiologists() async* {
    CollectionReference doctors = _firestore!.collection('doctors');

    yield* doctors
        .snapshots()
        .map((snapshot) =>
            snapshot.docs.map((doc) => DoctorDto.fromFirestore(doc).toDomain()))
        .map((doctors) => right<DoctorFailures, List<Doctor>>(doctors
            .where((doctor) => doctor.speciality == "Cardiologist")
            .toList()))
        .onErrorReturnWith((e, _) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const DoctorFailures.insufficientPermissions());
      } else {
        print(e.toString());
        return left(const DoctorFailures.unexpected());
      }
    });
  }

  @override
  Stream<Either<DoctorFailures, List<Doctor>>> watchAllDentists() async* {
    CollectionReference doctors = _firestore!.collection('doctors');

    yield* doctors
        .snapshots()
        .map((snapshot) =>
            snapshot.docs.map((doc) => DoctorDto.fromFirestore(doc).toDomain()))
        .map((doctors) => right<DoctorFailures, List<Doctor>>(
            doctors.where((doctor) => doctor.speciality == "Dentist").toList()))
        .onErrorReturnWith((e, _) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const DoctorFailures.insufficientPermissions());
      } else {
        return left(const DoctorFailures.unexpected());
      }
    });
  }

  @override
  Stream<Either<DoctorFailures, List<Doctor>>> watchAllDermatologists() async* {
    CollectionReference doctors = _firestore!.collection('doctors');

    yield* doctors
        .snapshots()
        .map((snapshot) =>
            snapshot.docs.map((doc) => DoctorDto.fromFirestore(doc).toDomain()))
        .map((doctors) => right<DoctorFailures, List<Doctor>>(doctors
            .where((doctor) => doctor.speciality == "Dermatologist")
            .toList()))
        .onErrorReturnWith((e, _) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const DoctorFailures.insufficientPermissions());
      } else {
        return left(const DoctorFailures.unexpected());
      }
    });
  }

  @override
  Stream<Either<DoctorFailures, List<Doctor>>> watchAllDoctors() async* {
    CollectionReference doctors = _firestore!.collection('doctors');

    yield* doctors
        .snapshots()
        .map((snapshot) => right<DoctorFailures, List<Doctor>>(snapshot.docs
            .map((doc) => DoctorDto.fromFirestore(doc).toDomain())
            .toList()))
        .onErrorReturnWith((e, _) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const DoctorFailures.insufficientPermissions());
      } else {
        return left(const DoctorFailures.unexpected());
      }
    });
  }

  @override
  Stream<Either<DoctorFailures, List<Doctor>>>
      watchAllEndocrinologists() async* {
    CollectionReference doctors = _firestore!.collection('doctors');

    yield* doctors
        .snapshots()
        .map((snapshot) =>
            snapshot.docs.map((doc) => DoctorDto.fromFirestore(doc).toDomain()))
        .map((doctors) => right<DoctorFailures, List<Doctor>>(doctors
            .where((doctor) => doctor.speciality == "Endocrinologist")
            .toList()))
        .onErrorReturnWith((e, _) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const DoctorFailures.insufficientPermissions());
      } else {
        return left(const DoctorFailures.unexpected());
      }
    });
  }

  @override
  Stream<Either<DoctorFailures, List<Doctor>>> watchAllEnts() async* {
    CollectionReference doctors = _firestore!.collection('doctors');

    yield* doctors
        .snapshots()
        .map((snapshot) =>
            snapshot.docs.map((doc) => DoctorDto.fromFirestore(doc).toDomain()))
        .map((doctors) => right<DoctorFailures, List<Doctor>>(
            doctors.where((doctor) => doctor.speciality == "ENT").toList()))
        .onErrorReturnWith((e, _) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const DoctorFailures.insufficientPermissions());
      } else {
        return left(const DoctorFailures.unexpected());
      }
    });
  }

  @override
  Stream<Either<DoctorFailures, List<Doctor>>>
      watchAllFamilyMedicineDoctors() async* {
    CollectionReference doctors = _firestore!.collection('doctors');

    yield* doctors
        .snapshots()
        .map((snapshot) =>
            snapshot.docs.map((doc) => DoctorDto.fromFirestore(doc).toDomain()))
        .map((doctors) => right<DoctorFailures, List<Doctor>>(doctors
            .where((doctor) => doctor.speciality == "Family Medicine")
            .toList()))
        .onErrorReturnWith((e, _) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const DoctorFailures.insufficientPermissions());
      } else {
        return left(const DoctorFailures.unexpected());
      }
    });
  }

  @override
  Stream<Either<DoctorFailures, List<Doctor>>>
      watchAllGastroenterologists() async* {
    CollectionReference doctors = _firestore!.collection('doctors');

    yield* doctors
        .snapshots()
        .map((snapshot) =>
            snapshot.docs.map((doc) => DoctorDto.fromFirestore(doc).toDomain()))
        .map((doctors) => right<DoctorFailures, List<Doctor>>(doctors
            .where((doctor) => doctor.speciality == "Gastroenterologist")
            .toList()))
        .onErrorReturnWith((e, _) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const DoctorFailures.insufficientPermissions());
      } else {
        return left(const DoctorFailures.unexpected());
      }
    });
  }

  @override
  Stream<Either<DoctorFailures, List<Doctor>>>
      watchAllGeneralPhysicians() async* {
    CollectionReference doctors = _firestore!.collection('doctors');

    yield* doctors
        .snapshots()
        .map((snapshot) =>
            snapshot.docs.map((doc) => DoctorDto.fromFirestore(doc).toDomain()))
        .map((doctors) => right<DoctorFailures, List<Doctor>>(doctors
            .where((doctor) => doctor.speciality == "General Physicians")
            .toList()))
        .onErrorReturnWith((e, _) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const DoctorFailures.insufficientPermissions());
      } else {
        return left(const DoctorFailures.unexpected());
      }
    });
  }

  @override
  Stream<Either<DoctorFailures, List<Doctor>>> watchAllGeriatrics() async* {
    CollectionReference doctors = _firestore!.collection('doctors');

    yield* doctors
        .snapshots()
        .map((snapshot) =>
            snapshot.docs.map((doc) => DoctorDto.fromFirestore(doc).toDomain()))
        .map((doctors) => right<DoctorFailures, List<Doctor>>(doctors
            .where((doctor) => doctor.speciality == "Geriatrics")
            .toList()))
        .onErrorReturnWith((e, _) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const DoctorFailures.insufficientPermissions());
      } else {
        return left(const DoctorFailures.unexpected());
      }
    });
  }

  @override
  Stream<Either<DoctorFailures, List<Doctor>>> watchAllGynaecologists() async* {
    CollectionReference doctors = _firestore!.collection('doctors');

    yield* doctors
        .snapshots()
        .map((snapshot) =>
            snapshot.docs.map((doc) => DoctorDto.fromFirestore(doc).toDomain()))
        .map((doctors) => right<DoctorFailures, List<Doctor>>(doctors
            .where((doctor) => doctor.speciality == "Gynaecologist")
            .toList()))
        .onErrorReturnWith((e, _) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const DoctorFailures.insufficientPermissions());
      } else {
        return left(const DoctorFailures.unexpected());
      }
    });
  }

  @override
  Stream<Either<DoctorFailures, List<Doctor>>> watchAllNeuroSurgeons() async* {
    CollectionReference doctors = _firestore!.collection('doctors');

    yield* doctors
        .snapshots()
        .map((snapshot) =>
            snapshot.docs.map((doc) => DoctorDto.fromFirestore(doc).toDomain()))
        .map((doctors) => right<DoctorFailures, List<Doctor>>(doctors
            .where((doctor) => doctor.speciality == "Neuro Surgeon")
            .toList()))
        .onErrorReturnWith((e, _) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const DoctorFailures.insufficientPermissions());
      } else {
        return left(const DoctorFailures.unexpected());
      }
    });
  }

  @override
  Stream<Either<DoctorFailures, List<Doctor>>> watchAllNeurologists() async* {
    CollectionReference doctors = _firestore!.collection('doctors');

    yield* doctors
        .snapshots()
        .map((snapshot) =>
            snapshot.docs.map((doc) => DoctorDto.fromFirestore(doc).toDomain()))
        .map((doctors) => right<DoctorFailures, List<Doctor>>(doctors
            .where((doctor) => doctor.speciality == "Neurologist")
            .toList()))
        .onErrorReturnWith((e, _) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const DoctorFailures.insufficientPermissions());
      } else {
        return left(const DoctorFailures.unexpected());
      }
    });
  }

  @override
  Stream<Either<DoctorFailures, List<Doctor>>> watchAllOncologists() async* {
    CollectionReference doctors = _firestore!.collection('doctors');

    yield* doctors
        .snapshots()
        .map((snapshot) =>
            snapshot.docs.map((doc) => DoctorDto.fromFirestore(doc).toDomain()))
        .map((doctors) => right<DoctorFailures, List<Doctor>>(doctors
            .where((doctor) => doctor.speciality == "Oncologist")
            .toList()))
        .onErrorReturnWith((e, _) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const DoctorFailures.insufficientPermissions());
      } else {
        return left(const DoctorFailures.unexpected());
      }
    });
  }

  @override
  Stream<Either<DoctorFailures, List<Doctor>>>
      watchAllOphthalmologists() async* {
    CollectionReference doctors = _firestore!.collection('doctors');

    yield* doctors
        .snapshots()
        .map((snapshot) =>
            snapshot.docs.map((doc) => DoctorDto.fromFirestore(doc).toDomain()))
        .map((doctors) => right<DoctorFailures, List<Doctor>>(doctors
            .where((doctor) => doctor.speciality == "Ophthalmologist")
            .toList()))
        .onErrorReturnWith((e, _) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const DoctorFailures.insufficientPermissions());
      } else {
        return left(const DoctorFailures.unexpected());
      }
    });
  }

  @override
  Stream<Either<DoctorFailures, List<Doctor>>> watchAllOrthopaedics() async* {
    CollectionReference doctors = _firestore!.collection('doctors');

    yield* doctors
        .snapshots()
        .map((snapshot) =>
            snapshot.docs.map((doc) => DoctorDto.fromFirestore(doc).toDomain()))
        .map((doctors) => right<DoctorFailures, List<Doctor>>(doctors
            .where((doctor) => doctor.speciality == "Orthopaedics")
            .toList()))
        .onErrorReturnWith((e, _) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const DoctorFailures.insufficientPermissions());
      } else {
        return left(const DoctorFailures.unexpected());
      }
    });
  }

  @override
  Stream<Either<DoctorFailures, List<Doctor>>> watchAllOsteopaths() async* {
    CollectionReference doctors = _firestore!.collection('doctors');

    yield* doctors
        .snapshots()
        .map((snapshot) =>
            snapshot.docs.map((doc) => DoctorDto.fromFirestore(doc).toDomain()))
        .map((doctors) => right<DoctorFailures, List<Doctor>>(doctors
            .where((doctor) => doctor.speciality == "Osteopath")
            .toList()))
        .onErrorReturnWith((e, _) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const DoctorFailures.insufficientPermissions());
      } else {
        return left(const DoctorFailures.unexpected());
      }
    });
  }

  @override
  Stream<Either<DoctorFailures, List<Doctor>>> watchAllPediatrics() async* {
    CollectionReference doctors = _firestore!.collection('doctors');

    yield* doctors
        .snapshots()
        .map((snapshot) =>
            snapshot.docs.map((doc) => DoctorDto.fromFirestore(doc).toDomain()))
        .map((doctors) => right<DoctorFailures, List<Doctor>>(doctors
            .where((doctor) => doctor.speciality == "Pediatric")
            .toList()))
        .onErrorReturnWith((e, _) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const DoctorFailures.insufficientPermissions());
      } else {
        return left(const DoctorFailures.unexpected());
      }
    });
  }

  @override
  Stream<Either<DoctorFailures, List<Doctor>>>
      watchAllPlasticSurgeons() async* {
    CollectionReference doctors = _firestore!.collection('doctors');

    yield* doctors
        .snapshots()
        .map((snapshot) =>
            snapshot.docs.map((doc) => DoctorDto.fromFirestore(doc).toDomain()))
        .map((doctors) => right<DoctorFailures, List<Doctor>>(doctors
            .where((doctor) => doctor.speciality == "Plastic Surgeon")
            .toList()))
        .onErrorReturnWith((e, _) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const DoctorFailures.insufficientPermissions());
      } else {
        return left(const DoctorFailures.unexpected());
      }
    });
  }

  @override
  Stream<Either<DoctorFailures, List<Doctor>>> watchAllPodiatrists() async* {
    CollectionReference doctors = _firestore!.collection('doctors');

    yield* doctors
        .snapshots()
        .map((snapshot) =>
            snapshot.docs.map((doc) => DoctorDto.fromFirestore(doc).toDomain()))
        .map((doctors) => right<DoctorFailures, List<Doctor>>(doctors
            .where((doctor) => doctor.speciality == "Podiatrist")
            .toList()))
        .onErrorReturnWith((e, _) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const DoctorFailures.insufficientPermissions());
      } else {
        return left(const DoctorFailures.unexpected());
      }
    });
  }

  @override
  Stream<Either<DoctorFailures, List<Doctor>>> watchAllPsychiatrists() async* {
    CollectionReference doctors = _firestore!.collection('doctors');

    yield* doctors
        .snapshots()
        .map((snapshot) =>
            snapshot.docs.map((doc) => DoctorDto.fromFirestore(doc).toDomain()))
        .map((doctors) => right<DoctorFailures, List<Doctor>>(doctors
            .where((doctor) => doctor.speciality == "Psychiatrist")
            .toList()))
        .onErrorReturnWith((e, _) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const DoctorFailures.insufficientPermissions());
      } else {
        return left(const DoctorFailures.unexpected());
      }
    });
  }

  @override
  Stream<Either<DoctorFailures, List<Doctor>>> watchAllPulmonologists() async* {
    CollectionReference doctors = _firestore!.collection('doctors');

    yield* doctors
        .snapshots()
        .map((snapshot) =>
            snapshot.docs.map((doc) => DoctorDto.fromFirestore(doc).toDomain()))
        .map((doctors) => right<DoctorFailures, List<Doctor>>(doctors
            .where((doctor) => doctor.speciality == "Pulmonologist")
            .toList()))
        .onErrorReturnWith((e, _) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const DoctorFailures.insufficientPermissions());
      } else {
        return left(const DoctorFailures.unexpected());
      }
    });
  }

  @override
  Stream<Either<DoctorFailures, List<Doctor>>> watchAllRadiologists() async* {
    CollectionReference doctors = _firestore!.collection('doctors');

    yield* doctors
        .snapshots()
        .map((snapshot) =>
            snapshot.docs.map((doc) => DoctorDto.fromFirestore(doc).toDomain()))
        .map((doctors) => right<DoctorFailures, List<Doctor>>(doctors
            .where((doctor) => doctor.speciality == "Radiologist")
            .toList()))
        .onErrorReturnWith((e, _) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const DoctorFailures.insufficientPermissions());
      } else {
        return left(const DoctorFailures.unexpected());
      }
    });
  }

  @override
  Stream<Either<DoctorFailures, List<Doctor>>>
      watchAllRheumatologists() async* {
    CollectionReference doctors = _firestore!.collection('doctors');

    yield* doctors
        .snapshots()
        .map((snapshot) =>
            snapshot.docs.map((doc) => DoctorDto.fromFirestore(doc).toDomain()))
        .map((doctors) => right<DoctorFailures, List<Doctor>>(doctors
            .where((doctor) => doctor.speciality == "Rheumatologist")
            .toList()))
        .onErrorReturnWith((e, _) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const DoctorFailures.insufficientPermissions());
      } else {
        return left(const DoctorFailures.unexpected());
      }
    });
  }

  @override
  Stream<Either<DoctorFailures, List<Doctor>>> watchAllUrologists() async* {
    CollectionReference doctors = _firestore!.collection('doctors');

    yield* doctors
        .snapshots()
        .map((snapshot) =>
            snapshot.docs.map((doc) => DoctorDto.fromFirestore(doc).toDomain()))
        .map((doctors) => right<DoctorFailures, List<Doctor>>(doctors
            .where((doctor) => doctor.speciality == "Urologist")
            .toList()))
        .onErrorReturnWith((e, _) {
      if (e is FirebaseException && e.message!.contains('PERMISSION_DENIED')) {
        return left(const DoctorFailures.insufficientPermissions());
      } else {
        return left(const DoctorFailures.unexpected());
      }
    });
  }

  // @override
  // Stream<Either<DoctorFailures, Appointment>> watchAppointment() {
  //   // TODO: implement watchAppointment
  //   throw UnimplementedError();
  // }

  // @override
  // Stream<Either<DoctorFailures, Doctor>> watchDoctor() {
  //   // TODO: implement watchDoctor
  //   throw UnimplementedError();
  // }
}
