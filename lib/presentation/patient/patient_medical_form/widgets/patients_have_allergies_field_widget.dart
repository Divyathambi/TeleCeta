import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teleceta_patients/application/patient/patient_form/patient_form_bloc.dart';

class PatientsHaveAllergiesFieldWidget extends StatefulWidget {
  const PatientsHaveAllergiesFieldWidget({Key? key}) : super(key: key);

  @override
  _PatientsHaveAllergiesFieldWidgetState createState() =>
      _PatientsHaveAllergiesFieldWidgetState();
}

class _PatientsHaveAllergiesFieldWidgetState
    extends State<PatientsHaveAllergiesFieldWidget> {
  late bool haveAllergies = false;

  @override
  Widget build(BuildContext context) {
    const radioTextStyle = TextStyle(
        fontFamily: 'NunitoSemiBold', color: Color.fromRGBO(3, 4, 94, 1));

    return BlocListener<PatientFormBloc, PatientFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        haveAllergies = state.patient!.haveAllergies!;
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0),
        child: Column(
          children: [
            const Text(
              'Do you have any kind of allergies?',
              style: TextStyle(
                fontFamily: "NunitoSemiBold",
                color: Color.fromRGBO(3, 4, 94, 1),
                fontSize: 15,
              ),
            ),
            Center(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 110.0),
                    child: Column(
                      children: [
                        Radio(
                            value: true,
                            groupValue: haveAllergies,
                            onChanged: (bool? value) {
                              setState(() {
                                haveAllergies = value!;
                                context.read<PatientFormBloc>().add(
                                    PatientFormEvent.haveAllergiesChanged(
                                        haveAllergies));
                              });
                            }),
                        const Text(
                          "Yes",
                          style: radioTextStyle,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.only(left: 50.0),
                      child: Column(
                        children: [
                          Radio(
                              value: false,
                              groupValue: haveAllergies,
                              onChanged: (bool? value) {
                                setState(() {
                                  haveAllergies = value!;
                                  context.read<PatientFormBloc>().add(
                                      PatientFormEvent.haveAllergiesChanged(
                                          haveAllergies));
                                });
                              }),
                          const Text(
                            "No",
                            style: radioTextStyle,
                          )
                        ],
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
