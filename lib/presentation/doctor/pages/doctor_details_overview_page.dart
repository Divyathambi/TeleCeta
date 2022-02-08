import 'package:flutter/material.dart';
import 'package:teleceta_patients/domain/doctor/doctor.dart';
import 'package:teleceta_patients/presentation/custom_widgets/custom_appbar.dart';

class DoctorDetailsOverviewPage extends StatelessWidget {
  final Doctor doctor;
  const DoctorDetailsOverviewPage({Key? key, required this.doctor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
        fontFamily: 'NunitoSemiBold',
        fontSize: 25.0,
        color: Color.fromRGBO(3, 4, 94, 1));

    const otherTextStyle = TextStyle(
        fontFamily: 'NunitoSemiBold',
        fontSize: 20.0,
        color: Color.fromRGBO(0, 119, 182, 1));

    const paragraphTextStyle = TextStyle(
        fontFamily: 'NunitoSemiBold',
        fontSize: 15.0,
        color: Color.fromRGBO(0, 119, 182, 1));

    const buttonTextStyle = TextStyle(
      fontFamily: 'NunitoSemiBold',
      fontSize: 18,
      color: Colors.white,
    );

    return Scaffold(
      appBar: CustomAppBar("TeleCeta"),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top * 1),
          child: Center(
            child: Column(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(doctor.profilePic!),
                  radius: 80.0,
                ),
                const SizedBox(height: 15),
                Text('Dr. ${doctor.name!}', style: textStyle),
                const SizedBox(height: 5),
                Text('${doctor.speciality} | ${doctor.highestQualification}',
                    style: otherTextStyle),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  '${doctor.experience} years of experience.',
                  style: otherTextStyle,
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 80.0),
                  child: Row(
                    children: [
                      const Icon(Icons.work,
                          color: Color.fromRGBO(3, 4, 94, 1)),
                      const SizedBox(width: 10.0),
                      Text(
                        'Works at ${doctor.nameOfClinic!}',
                        style: otherTextStyle,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Text(
                    doctor.description!,
                    textAlign: TextAlign.center,
                    style: paragraphTextStyle,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        maximumSize: const Size(300, 50),
                        primary: const Color.fromRGBO(0, 119, 182, 1),
                        padding: const EdgeInsets.all(8.0)),
                    onPressed: () {},
                    child: const Text(
                      'Consult Now',
                      style: buttonTextStyle,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        maximumSize: const Size(300, 50),
                        primary: const Color.fromRGBO(0, 119, 182, 1),
                        padding: const EdgeInsets.all(8.0)),
                    onPressed: () {},
                    child: const Text(
                      'Book Appointment',
                      style: buttonTextStyle,
                    ),
                  ),
                ),
                const SizedBox(height: 30)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
