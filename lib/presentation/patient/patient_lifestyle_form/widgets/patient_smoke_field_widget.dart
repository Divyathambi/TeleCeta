import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teleceta_patients/application/patient/patient_form/patient_form_bloc.dart';

enum Smoke { socially, regularly, never }

class PatientSmokeFieldWidget extends StatefulWidget {
  const PatientSmokeFieldWidget({Key? key}) : super(key: key);

  @override
  _PatientSmokeFieldWidgetState createState() =>
      _PatientSmokeFieldWidgetState();
}

class _PatientSmokeFieldWidgetState extends State<PatientSmokeFieldWidget> {
  Smoke _smoke = Smoke.never;
  late String smoke;

  @override
  Widget build(BuildContext context) {
    const radioTextStyle = TextStyle(
        fontFamily: 'NunitoSemiBold', color: Color.fromRGBO(3, 4, 94, 1));

    return BlocListener<PatientFormBloc, PatientFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        smoke = state.patient!.smoke!;
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0),
        child: Column(
          children: [
            const Text(
              "Do you smoke?",
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
                    padding: const EdgeInsets.only(left: 50.0),
                    child: Column(
                      children: [
                        Radio(
                            value: Smoke.socially,
                            groupValue: _smoke,
                            onChanged: (Smoke? value) {
                              setState(() {
                                _smoke = value!;
                                smoke = "socially";
                                context
                                    .read<PatientFormBloc>()
                                    .add(PatientFormEvent.smokeChanged(smoke));
                              });
                            }),
                        const Text(
                          "Socially",
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
                            value: Smoke.regularly,
                            groupValue: _smoke,
                            onChanged: (Smoke? value) {
                              setState(() {
                                _smoke = value!;
                                smoke = "regularly";
                                context
                                    .read<PatientFormBloc>()
                                    .add(PatientFormEvent.smokeChanged(smoke));
                              });
                            }),
                        const Text("Regularly", style: radioTextStyle),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50.0),
                    child: Column(
                      children: [
                        Radio(
                            value: Smoke.never,
                            groupValue: _smoke,
                            onChanged: (Smoke? value) {
                              setState(() {
                                _smoke = value!;
                                smoke = "never";
                                context
                                    .read<PatientFormBloc>()
                                    .add(PatientFormEvent.smokeChanged(smoke));
                              });
                            }),
                        const Text("Never", style: radioTextStyle),
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
