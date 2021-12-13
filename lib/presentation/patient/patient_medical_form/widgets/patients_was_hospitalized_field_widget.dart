import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teleceta_patients/application/patient/patient_form/patient_form_bloc.dart';

class PatientsWasHospitalizedFieldWidget extends StatefulWidget {
  const PatientsWasHospitalizedFieldWidget({Key? key}) : super(key: key);

  @override
  _PatientsWasHospitalizedFieldWidgetState createState() =>
      _PatientsWasHospitalizedFieldWidgetState();
}

class _PatientsWasHospitalizedFieldWidgetState
    extends State<PatientsWasHospitalizedFieldWidget> {
  late bool wasHospitalized = false;

  @override
  Widget build(BuildContext context) {
    const radioTextStyle = TextStyle(
        fontFamily: 'NunitoSemiBold', color: Color.fromRGBO(3, 4, 94, 1));

    return BlocListener<PatientFormBloc, PatientFormState>(
      listenWhen: (p, c) => p.isEditing != c.isEditing,
      listener: (context, state) {
        wasHospitalized = state.patient!.wasHospitalized!;
      },
      child: Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0),
          child: Column(
            children: [
              const Text("Have you ever been hospitalized?",
                  style: TextStyle(
                    fontFamily: "NunitoSemiBold",
                    color: Color.fromRGBO(3, 4, 94, 1),
                    fontSize: 15,
                  )),
              Center(
                  child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 110.0),
                    child: Column(
                      children: [
                        Radio(
                            value: true,
                            groupValue: wasHospitalized,
                            onChanged: (bool? value) {
                              setState(() {
                                wasHospitalized = value!;
                                context.read<PatientFormBloc>().add(
                                    PatientFormEvent.wasHospitalizedChanged(
                                        wasHospitalized));
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
                            groupValue: wasHospitalized,
                            onChanged: (bool? value) {
                              setState(() {
                                wasHospitalized = value!;
                                context.read<PatientFormBloc>().add(
                                    PatientFormEvent.wasHospitalizedChanged(
                                        wasHospitalized));
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
          )),
    );
  }
}
