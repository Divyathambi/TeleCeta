import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:teleceta_patients/application/patient/patient_form/patient_form_bloc.dart';

class PatientLocationFieldWidget extends HookWidget {
  const PatientLocationFieldWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    const hintTextStyle = TextStyle( 
      fontFamily: 'NunitoRegular', 
      color: Colors.grey
    );

    final textEditingController = useTextEditingController();

    return BlocListener<PatientFormBloc, PatientFormState>(
      listener: (context, state) {
        textEditingController.text = state.patient!.location!;
      },
      child: Padding(
        padding: const EdgeInsets.all(20), 
        child: TextFormField( 
          controller: textEditingController,
          decoration: const InputDecoration( 
            labelText: "Location", 
            hintText: "Enter your location",
            hintStyle: hintTextStyle 
          ), 
          onChanged: (value) => context.read<PatientFormBloc>()
                                       .add(PatientFormEvent.locationChanged(value)
          ), 
        ),
      ),
    );
  }
}