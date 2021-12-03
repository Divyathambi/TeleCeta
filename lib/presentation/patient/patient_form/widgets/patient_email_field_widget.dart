import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:teleceta_patients/application/patient/patient_form/patient_form_bloc.dart';

class PatientEmailFieldWidget extends HookWidget {
  const PatientEmailFieldWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final textEditingController = useTextEditingController(); 

    const hintTextStyle = TextStyle( 
      fontFamily: 'NunitoRegular', 
      color: Colors.grey
    );

    return BlocListener<PatientFormBloc, PatientFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        textEditingController.text = state.patient!.emailAddress!;  
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0),
        child: TextFormField(
          controller: textEditingController,
          decoration: const InputDecoration(
            labelText: "Email Address", 
            hintText: "Enter your email address", 
            hintStyle: hintTextStyle
          ),
          autocorrect: false,
          onChanged: (value) => context.read<PatientFormBloc>()
                                       .add(PatientFormEvent.emailAddressChanged(value)),
        ),
      ),
    );
  }
}