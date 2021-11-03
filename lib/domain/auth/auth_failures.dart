import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_failures.freezed.dart';

@freezed 
class AuthFailures with _$AuthFailures {
  const factory AuthFailures.invalidEmailAndPasswordCombination() = InvalidEmailAndPasswordCombination; 
  const factory AuthFailures.phoneNumberAlreadyExists() = PhoneNumberAlreadyExists;
  const factory AuthFailures.emailAlreadyExists() = EmailAlreadyExists; 
  const factory AuthFailures.serverError() = ServerError; 
  const factory AuthFailures.cancelledByUser() = CancelledByUser; 
}