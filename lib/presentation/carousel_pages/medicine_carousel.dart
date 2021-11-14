import 'package:flutter/material.dart';

class MedicineCarousel extends StatelessWidget {
  const MedicineCarousel({Key? key}) : super(key: key);

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

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Image.asset(
            'assets/images/undraw_medical_care.png',
            height: 350
          ), 
          const Center(
            child: Text(
              'Welcome to TeleCeta',
              style: textStyle,
            ),
          ),
          const SizedBox(height: 20),  
          const Padding(
            padding: EdgeInsets.only(left: 50, right: 50),
            child: Text(
              "Order medicines in just one click",
              style: captionTextStyle,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}