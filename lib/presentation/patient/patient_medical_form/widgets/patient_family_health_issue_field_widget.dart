import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teleceta_patients/application/patient/patient_form/patient_form_bloc.dart';

class PatientFamilyHealthIssueFieldWidget extends StatefulWidget {
  const PatientFamilyHealthIssueFieldWidget({Key? key}) : super(key: key);

  @override
  _PatientFamilyHealthIssueFieldWidgetState createState() =>
      _PatientFamilyHealthIssueFieldWidgetState();
}

class _PatientFamilyHealthIssueFieldWidgetState
    extends State<PatientFamilyHealthIssueFieldWidget> {
  late bool hasFamilyHealthIssues = false;

  @override
  Widget build(BuildContext context) {
    const radioTextStyle = TextStyle(
        fontFamily: 'NunitoSemiBold', color: Color.fromRGBO(3, 4, 94, 1));

    return BlocListener<PatientFormBloc, PatientFormState>(
      listener: (context, state) {
        hasFamilyHealthIssues = state.patient!.familyHealthIssue!;
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0),
        child: Column(
          children: [
            const Text(
              "Does your family suffer from any kind of health issues?",
              textAlign: TextAlign.center,
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
                            groupValue: hasFamilyHealthIssues,
                            onChanged: (bool? value) {
                              setState(() {
                                hasFamilyHealthIssues = value!;
                                context.read<PatientFormBloc>().add(
                                    PatientFormEvent.familyHealthIssueChanged(
                                        hasFamilyHealthIssues));
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
                              groupValue: hasFamilyHealthIssues,
                              onChanged: (bool? value) {
                                setState(() {
                                  hasFamilyHealthIssues = value!;
                                  context.read<PatientFormBloc>().add(
                                      PatientFormEvent.familyHealthIssueChanged(
                                          hasFamilyHealthIssues));
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
