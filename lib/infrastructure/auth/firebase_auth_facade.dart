import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:teleceta_patients/domain/auth/auth_failures.dart';
import 'package:teleceta_patients/domain/auth/i_auth_facade.dart';
import 'package:teleceta_patients/domain/auth/value_objects.dart';
import 'package:teleceta_patients/domain/auth/user.dart';
import 'package:teleceta_patients/infrastructure/auth/firebase_user_mapper.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn; 
  
  FirebaseAuthFacade(this._firebaseAuth, this._googleSignIn);

  @override
  Future<Option<User>> getSignedInUser() async => optionOf(_firebaseAuth.currentUser?.toDomain()); 

  @override
  Future<Either<AuthFailures, Unit>> loginWithEmailAndPassword({
    @required EmailAddress? emailAddress, 
    @required Password? password
  }) async {
    final emailStr = emailAddress!.getOrCrash(); 
    final passwordStr = password!.getOrCrash(); 

    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: emailStr, 
        password: passwordStr, 
      );

      return right(unit);
    } on FirebaseAuthException catch (e) {
      if(e.code == "ERROR_WRONG_PASSWORD" || e.code == "ERROR_USER_NOT_FOUND") {
        return left(const AuthFailures.invalidEmailAndPasswordCombination());
      } else {
        return left(const AuthFailures.serverError()); 
      }
    }
  }

  @override
  Future<Either<AuthFailures, Unit>> registerWithEmailAndPassword({
    @required EmailAddress? emailAddress, 
    @required Password? password
    }) async {

      final emailStr = emailAddress!.getOrCrash();
      final passwordStr = password!.getOrCrash(); 

      try {
        await _firebaseAuth.createUserWithEmailAndPassword(
          email: emailStr, 
          password: passwordStr
        );

        return right(unit);
      } on FirebaseAuthException catch (e) {
        if(e.code == "ERROR_EMAIL_ALREADY_IN_USE") {
          return left(const AuthFailures.emailAlreadyExists());
        } else {
          return left(const AuthFailures.serverError()); 
        }
      }
  }

  @override
  Future<Either<AuthFailures, Unit>> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();

      if(googleUser == null) {
        return left(const AuthFailures.cancelledByUser()); 
      }

      final googleAuthentication = await googleUser.authentication;

      final authCredential = GoogleAuthProvider.credential(
        accessToken: googleAuthentication.accessToken, 
        idToken: googleAuthentication.idToken
      );

      await _firebaseAuth.signInWithCredential(authCredential); 

      return right(unit);
    } on FirebaseAuthException catch (_) {
      return left(const AuthFailures.serverError()); 
    }
  }

  @override
  Future<void> signOut() => Future.wait([
    _firebaseAuth.signOut(), 
    _googleSignIn.signOut()
  ]);

}