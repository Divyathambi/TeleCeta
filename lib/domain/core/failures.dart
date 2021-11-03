import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed 
class ValueFailure<T> with _$ValueFailure<T> {

  const factory ValueFailure.exceedingLength({
    @required T? failedValue, 
    @required int? max
  }) = _ExceedingLength<T>;

  const factory ValueFailure.empty({ 
    @required T? failedValue, 
  }) = _Empty<T>; 

  const factory ValueFailure.invalidEmail({
    @required T? failedValue,
  }) = _InvalidEmail<T>; 

  const factory ValueFailure.invalidPhoneNumber({
    @required T? failedValue, 
  }) = _InvalidPhoneNumber<T>;

  const factory ValueFailure.invalidPassword({
    @required T? failedValue,
  }) = _InvalidPassword<T>;
}