import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teleceta_patients/application/patient/patient_form/patient_form_bloc.dart';

class PatientsHaveInjuriesFieldWidget extends StatefulWidget {
  const PatientsHaveInjuriesFieldWidget({Key? key}) : super(key: key);

  @override
  _PatientsHaveInjuriesFieldWidgetState createState() =>
      _PatientsHaveInjuriesFieldWidgetState();
}

class _PatientsHaveInjuriesFieldWidgetState
    extends State<PatientsHaveInjuriesFieldWidget> {
  late bool haveInjuries = false;

  @override
  Widget build(BuildContext context) {
    const radioTextStyle = TextStyle(
        fontFamily: 'NunitoSemiBold', color: Color.fromRGBO(3, 4, 94, 1));

    return BlocListener<PatientFormBloc, PatientFormState>(
      listener: (context, state) {
        haveInjuries = state.patient!.haveInjuries!;
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0),
        child: Column(
          children: [
            const Text("Do you suffer from any kind of injuries?",
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
                          groupValue: haveInjuries,
                          onChanged: (bool? value) {
                            setState(() {
                              haveInjuries = value!;
                              context.read<PatientFormBloc>().add(
                                  PatientFormEvent.haveInjuriesChanged(
                                      haveInjuries));
                            });
                          }),
                      const Text("Yes", style: radioTextStyle)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 50.0),
                  child: Column(
                    children: [
                      Radio(
                          value: false,
                          groupValue: haveInjuries,
                          onChanged: (bool? value) {
                            setState(() {
                              haveInjuries = value!;
                              context.read<PatientFormBloc>().add(
                                  PatientFormEvent.haveInjuriesChanged(
                                      haveInjuries));
                            });
                          }),
                      const Text("No", style: radioTextStyle)
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
