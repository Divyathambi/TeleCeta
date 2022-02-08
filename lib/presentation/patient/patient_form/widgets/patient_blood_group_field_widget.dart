import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teleceta_patients/application/patient/patient_form/patient_form_bloc.dart';

class PatientBloodGroupFieldWidget extends StatefulWidget {
  const PatientBloodGroupFieldWidget({Key? key}) : super(key: key);

  @override
  _PatientBloodGroupFieldWidgetState createState() =>
      _PatientBloodGroupFieldWidgetState();
}

class _PatientBloodGroupFieldWidgetState
    extends State<PatientBloodGroupFieldWidget> {
  List<String> bloodGroups = ["A+", "A-", "B+", "B-", "O+", "O-", "AB+", "AB-"];
  String? _selectedBloodGroup;

  @override
  Widget build(BuildContext context) {
    return BlocListener<PatientFormBloc, PatientFormState>(
      listener: (context, state) {
        _selectedBloodGroup = state.patient!.bloodGroup!;
      },
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: DropdownButtonFormField(
            decoration: const InputDecoration(
              labelText: "Blood Group",
            ),
            value: bloodGroups[0],
            items: bloodGroups.map((bloodGroup) {
              return DropdownMenuItem(
                  value: bloodGroup, child: Text(bloodGroup));
            }).toList(),
            onChanged: (String? val) {
              setState(() {
                _selectedBloodGroup = val!;
                context.read<PatientFormBloc>().add(
                    PatientFormEvent.bloodGroupChanged(_selectedBloodGroup!));
              });
            }),
      ),
    );
  }
}
