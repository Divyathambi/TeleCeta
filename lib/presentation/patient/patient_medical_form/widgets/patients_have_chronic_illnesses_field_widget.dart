import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teleceta_patients/application/patient/patient_form/patient_form_bloc.dart';

class PatientsHaveChronicIllnessesFieldWidget extends StatefulWidget {
  const PatientsHaveChronicIllnessesFieldWidget({Key? key}) : super(key: key);

  @override
  _PatientsHaveChronicIllnessesFieldWidgetState createState() =>
      _PatientsHaveChronicIllnessesFieldWidgetState();
}

class _PatientsHaveChronicIllnessesFieldWidgetState
    extends State<PatientsHaveChronicIllnessesFieldWidget> {
  late bool haveChronicIllnesses = false;

  @override
  Widget build(BuildContext context) {
    const radioTextStyle = TextStyle(
        fontFamily: 'NunitoSemiBold', color: Color.fromRGBO(3, 4, 94, 1));

    return BlocListener<PatientFormBloc, PatientFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        haveChronicIllnesses = state.patient!.haveChronicIllnesses!;
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0),
        child: Column(
          children: [
            const Text(
              "Do you suffer from any kind of chronic illness?",
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
                            groupValue: haveChronicIllnesses,
                            onChanged: (bool? value) {
                              setState(() {
                                haveChronicIllnesses = value!;
                                context.read<PatientFormBloc>().add(
                                    PatientFormEvent
                                        .haveChronicIllnessesChanged(
                                            haveChronicIllnesses));
                              });
                            }),
                        const Text("Yes", style: radioTextStyle),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50.0),
                    child: Column(
                      children: [
                        Radio(
                            value: false,
                            groupValue: haveChronicIllnesses,
                            onChanged: (bool? value) {
                              setState(() {
                                haveChronicIllnesses = value!;
                                context.read<PatientFormBloc>().add(
                                    PatientFormEvent
                                        .haveChronicIllnessesChanged(
                                            haveChronicIllnesses));
                              });
                            }),
                        const Text("No", style: radioTextStyle)
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
