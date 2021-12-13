import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teleceta_patients/application/patient/patient_form/patient_form_bloc.dart';

enum Workout { active, sometimes, never }

class PatientWorkoutFieldWidget extends StatefulWidget {
  const PatientWorkoutFieldWidget({Key? key}) : super(key: key);

  @override
  _PatientWorkoutFieldWidgetState createState() =>
      _PatientWorkoutFieldWidgetState();
}

class _PatientWorkoutFieldWidgetState extends State<PatientWorkoutFieldWidget> {
  Workout _workout = Workout.never;
  late String workout;

  @override
  Widget build(BuildContext context) {
    const radioTextStyle = TextStyle(
        fontFamily: 'NunitoSemiBold', color: Color.fromRGBO(3, 4, 94, 1));

    return BlocListener<PatientFormBloc, PatientFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        workout = state.patient!.workout!;
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0),
        child: Column(children: [
          const Text(
            "How often do you workout?",
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
                        value: Workout.active,
                        groupValue: _workout,
                        onChanged: (Workout? value) {
                          setState(() {
                            _workout = value!;
                            workout = "active";
                            context
                                .read<PatientFormBloc>()
                                .add(PatientFormEvent.workoutChanged(workout));
                          });
                        }),
                    const Text("Active", style: radioTextStyle),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50.0),
                child: Column(children: [
                  Radio(
                      value: Workout.sometimes,
                      groupValue: _workout,
                      onChanged: (Workout? value) {
                        setState(() {
                          _workout = value!;
                          workout = "Sometimes";
                          context
                              .read<PatientFormBloc>()
                              .add(PatientFormEvent.workoutChanged(workout));
                        });
                      }),
                  const Text("Sometimes", style: radioTextStyle)
                ]),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50.0),
                child: Column(children: [
                  Radio(
                      value: Workout.never,
                      groupValue: _workout,
                      onChanged: (Workout? value) {
                        setState(() {
                          _workout = value!;
                          workout = "never";
                          context
                              .read<PatientFormBloc>()
                              .add(PatientFormEvent.workoutChanged(workout));
                        });
                      }),
                  const Text("Never", style: radioTextStyle)
                ]),
              )
            ],
          ))
        ]),
      ),
    );
  }
}
