import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teleceta_patients/application/patient/patient_form/patient_form_bloc.dart';

enum Diet { vegetarian, eggetarian, pescatarian, nonvegetarian }

class PatientDietFieldWidget extends StatefulWidget {
  const PatientDietFieldWidget({Key? key}) : super(key: key);

  @override
  _PatientDietFieldWidgetState createState() => _PatientDietFieldWidgetState();
}

class _PatientDietFieldWidgetState extends State<PatientDietFieldWidget> {
  Diet _diet = Diet.vegetarian;
  late String diet;

  @override
  Widget build(BuildContext context) {
    const radioTextStyle = TextStyle(
        fontFamily: 'NunitoSemiBold', color: Color.fromRGBO(3, 4, 94, 1));

    return BlocListener<PatientFormBloc, PatientFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        diet = state.patient!.diet!;
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0),
        child: Column(
          children: [
            const Text("What's your diet like?",
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
                            value: Diet.vegetarian,
                            groupValue: _diet,
                            onChanged: (Diet? value) {
                              setState(() {
                                _diet = value!;
                                diet = "vegetarian";
                                context
                                    .read<PatientFormBloc>()
                                    .add(PatientFormEvent.dietChanged(diet));
                              });
                            }),
                        const Text("Vegetarian", style: radioTextStyle)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Column(
                      children: [
                        Radio(
                            value: Diet.eggetarian,
                            groupValue: _diet,
                            onChanged: (Diet? value) {
                              setState(() {
                                _diet = value!;
                                diet = "eggetarian";
                                context
                                    .read<PatientFormBloc>()
                                    .add(PatientFormEvent.dietChanged(diet));
                              });
                            }),
                        const Text("Eggetarian", style: radioTextStyle),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: Column(
                      children: [
                        Radio(
                            value: Diet.pescatarian,
                            groupValue: _diet,
                            onChanged: (Diet? value) {
                              setState(() {
                                _diet = value!;
                                diet = "pescatarian";
                                context
                                    .read<PatientFormBloc>()
                                    .add(PatientFormEvent.dietChanged(diet));
                              });
                            }),
                        const Text("Pescatarian", style: radioTextStyle),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 2.0),
              child: Column(
                children: [
                  Radio(
                      value: Diet.nonvegetarian,
                      groupValue: _diet,
                      onChanged: (Diet? value) {
                        setState(() {
                          _diet = value!;
                          diet = "nonvegetarian";
                          context
                              .read<PatientFormBloc>()
                              .add(PatientFormEvent.dietChanged(diet));
                        });
                      }),
                  const Text(
                    "Non vegetarian",
                    style: radioTextStyle,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
