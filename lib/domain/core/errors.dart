import 'package:teleceta_patients/domain/core/failures.dart';

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnexpectedValueError(this.valueFailure);
 
  @override
  String toString() {
    const explanation = "Encountered a ValueFailure at an irrecoverable point, terminating..."; 
    return Error.safeToString("$explanation Failure was: $valueFailure");
  }
}

class UnAuthenticatedError extends Error {}