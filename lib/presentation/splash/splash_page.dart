import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teleceta_patients/application/auth/auth_bloc.dart';
import 'package:teleceta_patients/presentation/routes/app_router.gr.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      color: Colors.white,
      fontFamily: "NunitoBold",
      fontSize: 40,
    );

    const captionTextStyle = TextStyle(
      color: Colors.white,
      fontFamily: "NunitoSemiBold",
      fontSize: 20,
    );

    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (_) {},
          authenticated: (_) =>
              AutoRouter.of(context).replace(const PatientFormPageRoute()),
          unauthenticated: (_) =>
              AutoRouter.of(context).replace(const CarouselMainPageRoute()),
        );
      },
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromRGBO(3, 4, 94, 1),
              Color.fromRGBO(0, 119, 182, 1),
            ], begin: Alignment.bottomLeft, end: Alignment.bottomRight),
          ),
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const <Widget>[
              Text(
                "TeleCeta",
                style: textStyle,
              ),
              Text(
                "Teledestination for all your \n medical needs",
                style: captionTextStyle,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              CircularProgressIndicator(
                color: Colors.white,
              )
            ],
          )),
        ),
      ),
    );
  }
}
