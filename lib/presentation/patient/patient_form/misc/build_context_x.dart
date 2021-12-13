import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teleceta_patients/presentation/patient/patient_form/misc/patient_form_provider.dart';

extension PatientFormX on BuildContext {
  String get radioButtonValues =>
      Provider.of<PatientFormProvider>(this, listen: false).value;
  set radioButtonValues(String value) =>
      Provider.of<PatientFormProvider>(this, listen: false).value = value;
}
