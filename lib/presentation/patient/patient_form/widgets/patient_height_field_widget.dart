import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:teleceta_patients/application/patient/patient_form/patient_form_bloc.dart';

class PatientHeightFieldWidget extends HookWidget {
  const PatientHeightFieldWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final textEditingController = useTextEditingController(); 

    return BlocListener<PatientFormBloc, PatientFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,

      listener: (context, state) {
        double heightController = double.parse(textEditingController.text);

        heightController = state.patient!.height!;
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Align(
          alignment: Alignment.bottomLeft,
          child: SizedBox(
            width: 100,
            child: TextFormField(
              controller: textEditingController,
              decoration: const InputDecoration(
                labelText: "Height", 
              ),
              onChanged: (value) => context.read<PatientFormBloc>().add(PatientFormEvent.heightChanged(double.parse(value))),
            ),
          ),
        ),
      ),
    );
  }
}