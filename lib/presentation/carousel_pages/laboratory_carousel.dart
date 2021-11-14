import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:teleceta_patients/presentation/routes/app_router.gr.dart';

class LaboratoryCarousel extends StatelessWidget {
  const LaboratoryCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      fontFamily: 'NunitoBold',
      fontSize: 30,  
      color: Color.fromRGBO(3, 4, 94, 1), 
    );

    const captionTextStyle = TextStyle(
      fontFamily: 'NunitoSemiBold', 
      fontSize: 20, 
      color: Color.fromRGBO(3, 4, 94, 1),
    );

    const buttonTextStyle = TextStyle(
      fontFamily: 'NunitoSemiBold', 
      color: Colors.white,
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/undraw_science.png',
              height: 350
            ), 
            const Text(
              'Welcome to TeleCeta',
              style: textStyle,
            ),
            const SizedBox(height: 20),  
            const Padding(
              padding: EdgeInsets.only(left: 50, right: 50),
              child: Text(
                "Book lab tests and take your tests within the comfort of your home",
                style: captionTextStyle,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 30), 
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: const Color.fromRGBO(0, 119, 182, 1),
                padding: const EdgeInsets.fromLTRB(100, 15, 100, 15),
                elevation: 5, 
                alignment: Alignment.center
              ),
              onPressed: () => AutoRouter.of(context).replace(const SignInPageRoute()), 
              child: const Text(
                'Get Started',
                style: buttonTextStyle
              ),
            ),
          ],
        ),
      ),
    );
  }
}