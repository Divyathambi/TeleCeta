import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teleceta_patients/application/patient/patient_form/patient_form_bloc.dart';

enum Stress { always, sometimes, never }

class PatientStressFieldWidget extends StatefulWidget {
  const PatientStressFieldWidget({Key? key}) : super(key: key);

  @override
  _PatientStressFieldWidgetState createState() =>
      _PatientStressFieldWidgetState();
}

class _PatientStressFieldWidgetState extends State<PatientStressFieldWidget> {
  Stress _stress = Stress.never;
  late String stress;

  @override
  Widget build(BuildContext context) {
    const radioTextStyle = TextStyle(
        fontFamily: 'NunitoSemiBold', color: Color.fromRGBO(3, 4, 94, 1));

    return BlocListener<PatientFormBloc, PatientFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        stress = state.patient!.stress!;
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0),
        child: Column(
          children: [
            const Text("How often do you get troubled by stress?",
                style: TextStyle(
                  fontFamily: "NunitoSemiBold",
                  color: Color.fromRGBO(3, 4, 94, 1),
                  fontSize: 15,
                )),
            Center(
                child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 50.0),
                  child: Column(
                    children: [
                      Radio(
                          value: Stress.always,
                          groupValue: _stress,
                          onChanged: (Stress? value) {
                            setState(() {
                              _stress = value!;
                              stress = "always";
                              context
                                  .read<PatientFormBloc>()
                                  .add(PatientFormEvent.stressChanged(stress));
                            });
                          }),
                      const Text("Always", style: radioTextStyle)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50.0),
                  child: Column(
                    children: [
                      Radio(
                          value: Stress.sometimes,
                          groupValue: _stress,
                          onChanged: (Stress? value) {
                            setState(() {
                              _stress = value!;
                              stress = "sometimes";
                              context
                                  .read<PatientFormBloc>()
                                  .add(PatientFormEvent.stressChanged(stress));
                            });
                          }),
                      const Text("Sometimes", style: radioTextStyle),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50.0),
                  child: Column(children: [
                    Radio(
                        value: Stress.never,
                        groupValue: _stress,
                        onChanged: (Stress? value) {
                          _stress = value!;
                          stress = "never";
                          context
                              .read<PatientFormBloc>()
                              .add(PatientFormEvent.stressChanged(stress));
                        }),
                    const Text("Never", style: radioTextStyle)
                  ]),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
