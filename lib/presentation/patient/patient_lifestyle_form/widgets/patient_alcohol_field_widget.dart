import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teleceta_patients/application/patient/patient_form/patient_form_bloc.dart';

enum Alcohol { socially, regularly, never }

class PatientAlcoholFieldWidget extends StatefulWidget {
  const PatientAlcoholFieldWidget({Key? key}) : super(key: key);

  @override
  _PatientAlcoholFieldWidgetState createState() =>
      _PatientAlcoholFieldWidgetState();
}

class _PatientAlcoholFieldWidgetState extends State<PatientAlcoholFieldWidget> {
  Alcohol _alcohol = Alcohol.never;
  late String alcohol;

  @override
  Widget build(BuildContext context) {
    const radioTextStyle = TextStyle(
        fontFamily: 'NunitoSemiBold', color: Color.fromRGBO(3, 4, 94, 1));

    return BlocListener<PatientFormBloc, PatientFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        alcohol = state.patient!.alcohol!;
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0),
        child: Column(
          children: [
            const Text(
              "Do you drink?",
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
                            value: Alcohol.socially,
                            groupValue: _alcohol,
                            onChanged: (Alcohol? value) {
                              setState(() {
                                _alcohol = value!;
                                alcohol = "socially";
                                context.read<PatientFormBloc>().add(
                                    PatientFormEvent.alcoholChanged(alcohol));
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
                            value: Alcohol.regularly,
                            groupValue: _alcohol,
                            onChanged: (Alcohol? value) {
                              setState(() {
                                _alcohol = value!;
                                alcohol = "regularly";
                                context.read<PatientFormBloc>().add(
                                    PatientFormEvent.alcoholChanged(alcohol));
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
                            value: Alcohol.never,
                            groupValue: _alcohol,
                            onChanged: (Alcohol? value) {
                              setState(() {
                                _alcohol = value!;
                                alcohol = "never";
                                context.read<PatientFormBloc>().add(
                                    PatientFormEvent.alcoholChanged(alcohol));
                              });
                            }),
                        const Text("Never", style: radioTextStyle)
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
