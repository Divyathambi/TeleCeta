import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teleceta_patients/application/patient/patient_form/patient_form_bloc.dart';

class PatientTakesMedicationFieldWidget extends StatefulWidget {
  const PatientTakesMedicationFieldWidget({Key? key}) : super(key: key);

  @override
  _PatientTakesMedicationFieldWidgetState createState() =>
      _PatientTakesMedicationFieldWidgetState();
}

class _PatientTakesMedicationFieldWidgetState
    extends State<PatientTakesMedicationFieldWidget> {
  late bool takeMedication = false;

  @override
  Widget build(BuildContext context) {
    const radioTextStyle = TextStyle(
        fontFamily: 'NunitoSemiBold', color: Color.fromRGBO(3, 4, 94, 1));

    return BlocListener<PatientFormBloc, PatientFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        takeMedication = state.patient!.takesMedication!;
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0),
        child: Column(
          children: [
            const Text(
              "Do you take any kind of medications?",
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
                          groupValue: takeMedication,
                          onChanged: (bool? value) {
                            setState(() {
                              takeMedication = value!;
                              context.read<PatientFormBloc>().add(
                                  PatientFormEvent.takesMedicationChanged(
                                      takeMedication));
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
                          groupValue: takeMedication,
                          onChanged: (bool? value) {
                            setState(() {
                              takeMedication = value!;
                              context.read<PatientFormBloc>().add(
                                  PatientFormEvent.takesMedicationChanged(
                                      takeMedication));
                            });
                          }),
                      const Text(
                        "No",
                        style: radioTextStyle,
                      )
                    ],
                  ),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
