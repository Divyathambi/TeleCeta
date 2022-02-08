import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'package:teleceta_patients/presentation/custom_widgets/custom_appbar.dart';
import 'package:teleceta_patients/presentation/routes/app_router.gr.dart';

class PatientConfirmationPage extends StatefulWidget {
  const PatientConfirmationPage({Key? key}) : super(key: key);

  @override
  _PatientConfirmationPageState createState() =>
      _PatientConfirmationPageState();
}

class _PatientConfirmationPageState extends State<PatientConfirmationPage> {
  @override
  Widget build(BuildContext context) {
    const buttonTextStyle = TextStyle(
      fontFamily: 'NunitoSemiBold',
      color: Colors.white,
    );

    return Scaffold(
        appBar: CustomAppBar('TeleCeta'),
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 300,
                child: RiveAnimation.asset(
                  'assets/images/check_icon.riv',
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0),
                child: Text(
                  "Nicely Done! Let's now enjoy the new telemedicine experience",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'NunitoSemiBold',
                    color: Color.fromRGBO(3, 4, 94, 1),
                    fontSize: 20,
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: const Color.fromRGBO(0, 119, 182, 1),
                    padding: const EdgeInsets.fromLTRB(40, 20, 40, 20),
                    elevation: 5,
                    alignment: Alignment.center),
                onPressed: () {
                  AutoRouter.of(context)
                      .popAndPush(const DoctorSpecialityOverviewBodyRoute());
                },
                child: const Text('Go to homepage', style: buttonTextStyle),
              ),
            ],
          ),
        ));
  }
}
