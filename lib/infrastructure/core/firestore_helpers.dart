import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:teleceta_patients/domain/auth/i_auth_facade.dart';
import 'package:teleceta_patients/domain/core/errors.dart';
import 'package:teleceta_patients/injection.dart';

extension FirestoreX on FirebaseFirestore {
  Future<DocumentReference> patientDocument() async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final patient = userOption.getOrElse(() => throw UnAuthenticatedError());

    return FirebaseFirestore.instance
        .collection('patients')
        .doc(patient.uniqueId!.getOrCrash());
  }

  Future<DocumentReference> doctorDocument() async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final doctor = userOption.getOrElse(() => throw UnAuthenticatedError());

    return FirebaseFirestore.instance
        .collection('doctors')
        .doc(doctor.uniqueId!.getOrCrash());
  }
}

extension DocumentReferenceX on DocumentReference {
  CollectionReference get appointmentCollection => collection('appointments');
  CollectionReference get doctorsCollection => collection('doctors');
}
