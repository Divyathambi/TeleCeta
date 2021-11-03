import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:teleceta_patients/domain/auth/auth_failures.dart';
import 'package:teleceta_patients/domain/auth/user.dart';
import 'package:teleceta_patients/domain/auth/value_objects.dart';

abstract class IAuthFacade {
  Future<Option<User>> getSignedInUser(); // To get the current user id
  Future<Either<AuthFailures, Unit>> registerWithEmailAndPassword({
    @required EmailAddress emailAddress, 
    @required Password password
  });  // To register a user with email address and password
  Future<Either<AuthFailures, Unit>> loginWithEmailAndPassword({
    @required EmailAddress emailAddress, 
    @required Password password
  }); // To make users log in to their account
  Future<Either<AuthFailures, Unit>> signInWithGoogle(); // To sign in users using their google account 
  Future<void> signOut(); // To log the user out
}