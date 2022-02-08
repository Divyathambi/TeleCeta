import 'package:flutter/material.dart';
import 'package:teleceta_patients/domain/doctor/doctor.dart';
import 'package:teleceta_patients/presentation/custom_widgets/custom_appbar.dart';
import 'package:teleceta_patients/presentation/doctor/widgets/payment_card.dart';
import 'package:teleceta_patients/presentation/doctor/widgets/review_card.dart';

class ConsultNowPage extends StatelessWidget {
  final Doctor doctor;

  const ConsultNowPage({Key? key, required this.doctor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const headingTextStyle = TextStyle(
        fontFamily: 'NunitoBold',
        fontSize: 20,
        color: Color.fromRGBO(3, 4, 94, 1));
    const descriptionTextStyle = TextStyle(
        fontFamily: 'NunitoBold',
        fontSize: 18,
        color: Color.fromRGBO(0, 119, 182, 1));
    return Scaffold(
        appBar: CustomAppBar('Consult Now'),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 15),
                const Text(
                  'Consult Now?',
                  style: headingTextStyle,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text("You're about to consult Dr.${doctor.name}",
                      style: descriptionTextStyle),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(doctor.profilePic!),
                    radius: 80.0,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Text(
                      '${doctor.speciality} | ${doctor.highestQualification}',
                      style: descriptionTextStyle),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Reviews',
                  style: TextStyle(
                      fontFamily: 'NunitoSemiBold',
                      fontSize: 18,
                      color: Color.fromRGBO(0, 119, 182, 1)),
                ),
                const SizedBox(height: 15),
                Wrap(
                  direction: Axis.horizontal,
                  children: [
                    ...doctor.reviews!
                        .map((review) => ReviewCard(reviews: review))
                  ],
                ),
                SizedBox(height: 70),
                const PaymentCard()
              ],
            ),
          ),
        ));
  }
}
