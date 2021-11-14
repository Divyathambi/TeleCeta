import 'package:firebase_auth/firebase_auth.dart' as firebase;
import 'package:teleceta_patients/domain/auth/user.dart';
import 'package:teleceta_patients/domain/core/value_objects.dart';

extension FirebaseUserDomainX on firebase.User {
  AppUser toDomain() {
    return AppUser(
      uniqueId: UniqueId.fromUniqueString(uid)
    );
  }
}