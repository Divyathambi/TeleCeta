import 'package:flutter/material.dart';
import 'package:teleceta_patients/presentation/custom_widgets/custom_appbar.dart';
import 'package:teleceta_patients/presentation/doctor/widgets/speciality_grid.dart';

class DoctorSpecialityOverviewBody extends StatelessWidget {
  const DoctorSpecialityOverviewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const List<SpecialityGrid> specialities = [
      SpecialityGrid(imageUrl: "assets/images/heart.png", title: "Cardiology"),
      SpecialityGrid(imageUrl: "assets/images/teeth.png", title: "Dental"),
      SpecialityGrid(imageUrl: "assets/images/skin.png", title: "Dermatology"),
      SpecialityGrid(
          imageUrl: "assets/images/thyroid.png", title: "Endocrinology"),
      SpecialityGrid(imageUrl: "assets/images/sore-throat.png", title: "ENT"),
      SpecialityGrid(
          imageUrl: "assets/images/family.png", title: "Family Medicine"),
      SpecialityGrid(
          imageUrl: "assets/images/intestine.png", title: "Gastroenterology"),
      SpecialityGrid(
          imageUrl: "assets/images/doctor.png", title: "General Physician"),
      SpecialityGrid(imageUrl: "assets/images/old-man.png", title: "Geriatric"),
      SpecialityGrid(
          imageUrl: "assets/images/mother.png", title: "Gynaecology"),
      SpecialityGrid(
          imageUrl: "assets/images/kidneys.png", title: "Nephrology"),
      SpecialityGrid(
          imageUrl: "assets/images/neurology.png", title: "Neurology"),
      SpecialityGrid(
          imageUrl: "assets/images/neurosurgery.png", title: "Neuro Surgeons"),
      SpecialityGrid(imageUrl: "assets/images/ct-scan.png", title: "Oncology"),
      SpecialityGrid(
          imageUrl: "assets/images/ophthalmology.png", title: "Ophthalmology"),
      SpecialityGrid(
          imageUrl: "assets/images/orthopedics.png", title: "Orthopedic"),
      SpecialityGrid(
          imageUrl: "assets/images/osteopathy.png", title: "Osteopathy"),
      SpecialityGrid(imageUrl: "assets/images/baby.png", title: "Pediatric"),
      SpecialityGrid(
          imageUrl: "assets/images/cosmetic-surgery.png",
          title: "Plastic Surgery"),
      SpecialityGrid(imageUrl: "assets/images/podiatry.png", title: "Podiatry"),
      SpecialityGrid(
          imageUrl: "assets/images/in-love.png", title: "Psychiatry"),
      SpecialityGrid(
          imageUrl: "assets/images/pulmonology.png", title: "Pulmonology"),
      SpecialityGrid(imageUrl: "assets/images/urology.png", title: "Urology"),
    ];

    return Scaffold(
      appBar: CustomAppBar('TeleCeta'),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(20, 30, 20, 10),
            child: Text(
              "Choose from various specialities",
              style: TextStyle(
                  fontFamily: "NunitoBold",
                  fontSize: 20.0,
                  color: Color.fromRGBO(3, 4, 94, 1)),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 3 / 4.5,
                      crossAxisSpacing: 2.0,
                      mainAxisSpacing: 2.0,
                      crossAxisCount: 3),
                  itemCount: specialities.length,
                  itemBuilder: (ctx, i) {
                    return specialities[i];
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
