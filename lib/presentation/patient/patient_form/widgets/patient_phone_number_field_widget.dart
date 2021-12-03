import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:teleceta_patients/application/patient/patient_form/patient_form_bloc.dart';

class PatientPhoneNumberFieldWidget extends HookWidget {
  const PatientPhoneNumberFieldWidget({Key? key}) : super(key: key);

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
        textEditingController.text = state.patient!.phoneNumber!;
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0),
        child: TextFormField(
          controller: textEditingController,
          decoration: const InputDecoration(
            labelText: "Phone Number", 
            hintText: "Enter your phone number", 
            hintStyle: hintTextStyle
          ),
          autocorrect: false,
          onChanged: (value) => context.read<PatientFormBloc>()
                                       .add(PatientFormEvent.phoneNumberChanged(value)),
        ),
      ),
    );
  }
}