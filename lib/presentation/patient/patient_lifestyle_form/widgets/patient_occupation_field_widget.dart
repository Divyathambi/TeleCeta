import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:teleceta_patients/application/patient/patient_form/patient_form_bloc.dart';

class PatientOccupationFieldWidget extends HookWidget {
  const PatientOccupationFieldWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const hintTextStyle =
        TextStyle(fontFamily: 'NunitoRegular', color: Colors.grey);

    final textEditingController = useTextEditingController();

    return BlocListener<PatientFormBloc, PatientFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        textEditingController.text = state.patient!.occupation!;
      },
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: TextFormField(
          controller: textEditingController,
          decoration: const InputDecoration(
              labelText: "Occupation",
              hintText: "Enter your occupation",
              hintStyle: hintTextStyle),
          onChanged: (value) => context
              .read<PatientFormBloc>()
              .add(PatientFormEvent.occupationChanged(value)),
        ),
      ),
    );
  }
}
