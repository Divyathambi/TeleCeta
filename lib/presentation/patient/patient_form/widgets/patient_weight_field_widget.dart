import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:teleceta_patients/application/patient/patient_form/patient_form_bloc.dart';

class PatientWeightFieldWidget extends HookWidget {
  const PatientWeightFieldWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final textEditingController = useTextEditingController();

    return BlocListener<PatientFormBloc, PatientFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        double weightController = double.parse(textEditingController.text);
        weightController = state.patient!.weight!;
      },
      child:  Padding(
        padding: const EdgeInsets.only(left: 170),
        child: Align(
          alignment: Alignment.bottomRight,
          child: SizedBox(
            width: 100,
            child: TextFormField(
              controller: textEditingController,
              decoration: const InputDecoration(
                labelText: "weight", 
              ),
              onChanged: (value) => context.read<PatientFormBloc>().add(PatientFormEvent.weightChanged(double.parse(value))),
            ),
          ),
        ),
      ),
    );
  }
}