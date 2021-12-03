import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:teleceta_patients/application/patient/patient_form/patient_form_bloc.dart';

class PatientNameFieldWidget extends HookWidget {
  const PatientNameFieldWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    const hintTextStyle = TextStyle( 
      fontFamily: 'NunitoRegular', 
      color: Colors.grey
    );

    final textEditingController = useTextEditingController(); 

    return BlocListener<PatientFormBloc, PatientFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
         textEditingController.text = state.patient!.name! ;
      },
      child: Padding(
        padding: const EdgeInsets.all(20), 
        child: TextFormField( 
          controller: textEditingController,
          decoration: const InputDecoration( 
            labelText: "Name", 
            hintText: "Enter your name",
            hintStyle: hintTextStyle 
          ),
          autocorrect: false, 
          onChanged: (value) => context.read<PatientFormBloc>()
                                       .add(PatientFormEvent.nameChanged(value)
          ), 
        ),
      )
    );
  }
}