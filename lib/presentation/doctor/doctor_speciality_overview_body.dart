import 'package:flutter/material.dart';
import 'package:teleceta_patients/presentation/custom_widgets/custom_appbar.dart';
import 'package:teleceta_patients/presentation/doctor/pages/pediatric_page.dart';
import 'package:teleceta_patients/presentation/doctor/widgets/speciality_grid.dart';
import 'package:teleceta_patients/presentation/routes/app_router.gr.dart';

class DoctorSpecialityOverviewBody extends StatelessWidget {
  const DoctorSpecialityOverviewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const List<SpecialityGrid> specialities = [
      SpecialityGrid(
        imageUrl: "assets/images/heart.png",
        title: "Cardiology",
        route: CardiologistPageRoute(),
      ),
      SpecialityGrid(
        imageUrl: "assets/images/teeth.png",
        title: "Dental",
        route: DentistPageRoute(),
      ),
      SpecialityGrid(
          imageUrl: "assets/images/skin.png",
          title: "Dermatology",
          route: DermatologistPageRoute()),
      SpecialityGrid(
        imageUrl: "assets/images/thyroid.png",
        title: "Endocrinology",
        route: EndocrinologistPageRoute(),
      ),
      SpecialityGrid(
        imageUrl: "assets/images/sore-throat.png",
        title: "ENT",
        route: EntPageRoute(),
      ),
      SpecialityGrid(
          imageUrl: "assets/images/family.png",
          title: "Family Medicine",
          route: FamilyMedicineDoctorsPageRoute()),
      SpecialityGrid(
          imageUrl: "assets/images/intestine.png",
          title: "Gastroenterology",
          route: GastroenterologistPageRoute()),
      SpecialityGrid(
        imageUrl: "assets/images/doctor.png",
        title: "General Physician",
        route: GeneralPhysiciansPageRoute(),
      ),
      SpecialityGrid(
          imageUrl: "assets/images/old-man.png",
          title: "Geriatric",
          route: GeriatricsPageRoute()),
      SpecialityGrid(
          imageUrl: "assets/images/mother.png",
          title: "Gynaecology",
          route: GynaecologistPageRoute()),
      SpecialityGrid(
          imageUrl: "assets/images/kidneys.png",
          title: "Nephrology",
          route: NephrologistPageRoute()),
      SpecialityGrid(
          imageUrl: "assets/images/neurology.png",
          title: "Neurology",
          route: NeurologistPageRoute()),
      SpecialityGrid(
        imageUrl: "assets/images/neurosurgery.png",
        title: "Neuro Surgeons",
        route: NeuroSurgeonsPageRoute(),
      ),
      SpecialityGrid(
        imageUrl: "assets/images/ct-scan.png",
        title: "Oncology",
        route: OncologistPageRoute(),
      ),
      SpecialityGrid(
          imageUrl: "assets/images/ophthalmology.png",
          title: "Ophthalmology",
          route: OphthalmologistPageRoute()),
      SpecialityGrid(
          imageUrl: "assets/images/orthopedics.png",
          title: "Orthopedic",
          route: OrthopaedicsPageRoute()),
      SpecialityGrid(
        imageUrl: "assets/images/osteopathy.png",
        title: "Osteopathy",
        route: OsteopathPageRoute(),
      ),
      SpecialityGrid(
        imageUrl: "assets/images/baby.png",
        title: "Pediatric",
        route: PediatricPageRoute(),
      ),
      SpecialityGrid(
        imageUrl: "assets/images/cosmetic-surgery.png",
        title: "Plastic Surgery",
        route: PlasticSurgeonsPageRoute(),
      ),
      SpecialityGrid(
        imageUrl: "assets/images/podiatry.png",
        title: "Podiatry",
        route: PodiatristPageRoute(),
      ),
      SpecialityGrid(
        imageUrl: "assets/images/in-love.png",
        title: "Psychiatry",
        route: PsychiatristPageRoute(),
      ),
      SpecialityGrid(
        imageUrl: "assets/images/pulmonology.png",
        title: "Pulmonology",
        route: PulmonologistPageRoute(),
      ),
      SpecialityGrid(
        imageUrl: "assets/images/urology.png",
        title: "Urology",
        route: UrologistPageRoute(),
      ),
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
