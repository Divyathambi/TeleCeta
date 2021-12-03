import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teleceta_patients/application/patient/patient_form/patient_form_bloc.dart';
import 'package:teleceta_patients/presentation/patient/patient_form/misc/build_context_x.dart';

enum Gender { male, female, others }

class PatientGenderFieldWidget extends StatefulWidget {
  const PatientGenderFieldWidget({Key? key}) : super(key: key);

  @override
  _PatientGenderFieldWidgetState createState() =>
      _PatientGenderFieldWidgetState();
}

class _PatientGenderFieldWidgetState extends State<PatientGenderFieldWidget> {
  Gender? _gender = Gender.male;
  late String gender;

  @override
  Widget build(BuildContext context) {

    const radioTextStyle = TextStyle( 
      fontFamily: 'NunitoSemiBold', 
      color: Color.fromRGBO(3, 4, 94, 1)
    );
    
    return BlocListener<PatientFormBloc, PatientFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        gender = state.patient!.gender!;
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0),
        child: Column(
          children: [
            const Text(
              "Select your Gender:",
              style: TextStyle(
                fontFamily: "NunitoSemiBold", 
                color: Color.fromRGBO(3, 4, 94, 1),
                fontSize: 15,
              )
            ),
            Center(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 50.0),
                    child: Column(
                      children: [
                        Radio(
                          value: Gender.male, 
                          groupValue: _gender, 
                          onChanged: (Gender? value) {
                            setState(() {
                            _gender = value; 
                            gender = "male"; 
                            context.radioButtonValues = gender;
                            context.read<PatientFormBloc>().add(PatientFormEvent.genderChanged(gender));
                            });
                          }
                        ),
                        const Text(
                          "male",
                          style: radioTextStyle,
                        )
                      ],
                    ),
                  ), 
                  Padding(
                    padding: const EdgeInsets.only(left: 60),
                    child: Column(
                      children: [
                        Radio(
                          value: Gender.female, 
                          groupValue: _gender, 
                          onChanged: (Gender? value) {
                            setState(() {
                            _gender = value; 
                            gender = "female"; 
                            context.radioButtonValues = gender;
                            context.read<PatientFormBloc>().add(PatientFormEvent.genderChanged(gender));          
                            });
                          }
                        ),
                        const Text(
                          "female", 
                          style: radioTextStyle
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 60),
                    child: Column(
                      children: [
                        Radio(
                          value: Gender.others, 
                          groupValue: _gender, 
                          onChanged: (Gender? value) {
                            setState(() {
                            _gender = value; 
                            gender = "others"; 
                            context.radioButtonValues = gender;
                            context.read<PatientFormBloc>().add(PatientFormEvent.genderChanged(gender));          
                            });
                          }
                        ),
                        const Text(
                          "others", 
                          style: radioTextStyle
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
