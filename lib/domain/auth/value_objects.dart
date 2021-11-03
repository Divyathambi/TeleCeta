import 'package:dartz/dartz.dart';
import 'package:teleceta_patients/domain/core/failures.dart';
import 'package:teleceta_patients/domain/core/value_objects.dart';
import 'package:teleceta_patients/domain/core/value_validators.dart';

class EmailAddress extends ValueObject<String> {
  @override 
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) {
    return EmailAddress._(
      validateEmpty(input).flatMap(validateEmailAddress), 
    );
  } 

  const EmailAddress._(this.value);
}

class Password extends ValueObject<String> {
  @override 
  final Either<ValueFailure<String>, String> value; 

  factory Password(String input) {
    return Password._(
      validateEmpty(input).flatMap(validatePassword)
    );
  }

  const Password._(this.value);
}

class PhoneNumber extends ValueObject<String> {
  @override 
  final Either<ValueFailure<String>, String> value; 

  factory PhoneNumber(String input) {
    return PhoneNumber._(
      validateEmpty(input).flatMap(validatePhoneNumber)
    );
  }

  const PhoneNumber._(this.value);
}