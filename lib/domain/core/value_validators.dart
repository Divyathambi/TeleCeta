import 'package:dartz/dartz.dart';
import 'package:teleceta_patients/domain/core/failures.dart';

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const regex = r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";

  if(RegExp(regex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}

// The password should contain: 
// At least one uppercase character 
// At least one lowercase character 
// At least one special character 
// should have at least 8 characters

Either<ValueFailure<String>, String> validatePassword(String input) {
  
  if(input.length >= 8) {
    return right(input); 
  } else {
    return left(ValueFailure.invalidPassword(failedValue: input)); 
  }
}

Either<ValueFailure<String>, String> validatePhoneNumber(String input) {
  if(input.length <= 10) {
    return right(input);
  } else {
    return left(ValueFailure.invalidPhoneNumber(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateEmpty(String input) {
  if(input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.empty(failedValue: input));
  }
}