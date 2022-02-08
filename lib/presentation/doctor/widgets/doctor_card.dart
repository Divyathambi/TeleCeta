import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:teleceta_patients/domain/doctor/doctor.dart';
import 'package:teleceta_patients/presentation/routes/app_router.gr.dart';

class DoctorCard extends StatelessWidget {
  final Doctor doctor;
  const DoctorCard({Key? key, required this.doctor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const captionStyle = TextStyle(
        fontFamily: 'NunitoSemiBold',
        color: Color.fromRGBO(3, 4, 94, 1),
        fontSize: 18.0);
    const textStyle = TextStyle(
      fontFamily: 'NunitoRegular',
      color: Color.fromRGBO(0, 119, 182, 1),
    );

    return SizedBox(
      height: 300,
      child: GestureDetector(
        onTap: () {
          AutoRouter.of(context)
              .push(DoctorDetailsOverviewPageRoute(doctor: doctor));
        },
        child: Card(
          semanticContainer: true,
          elevation: 4.0,
          child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 50.0,
                      backgroundImage: NetworkImage(doctor.profilePic!),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Dr.${doctor.name!}',
                      style: captionStyle,
                    ),
                    const SizedBox(height: 4),
                    Text(
                        '${doctor.speciality!} | ${doctor.highestQualification}',
                        style: textStyle),
                    const SizedBox(height: 4),
                    Text(doctor.location!, style: textStyle),
                    const SizedBox(height: 4),
                    Text('Experience: ${doctor.experience!}', style: textStyle),
                    const SizedBox(height: 4),
                    Text(doctor.nameOfClinic!, style: textStyle),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: const Color.fromRGBO(0, 119, 182, 1),
                              elevation: 5,
                              alignment: Alignment.center),
                          onPressed: () {
                            AutoRouter.of(context)
                                .push(ConsultNowPageRoute(doctor: doctor));
                          },
                          child: const Text(
                            'Consult now',
                            style: TextStyle(
                                fontFamily: 'NunitoSemiBold',
                                color: Colors.white),
                          )),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: const Color.fromRGBO(0, 119, 182, 1),
                            elevation: 5,
                            alignment: Alignment.center),
                        onPressed: () {},
                        child: const Text(
                          'Book appointment',
                          style: TextStyle(
                              fontFamily: 'NunitoSemiBold',
                              color: Colors.white),
                        ))
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
