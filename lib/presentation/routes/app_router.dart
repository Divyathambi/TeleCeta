import 'package:auto_route/annotations.dart';
import 'package:teleceta_patients/presentation/carousel_pages/carousel_main_page.dart';
import 'package:teleceta_patients/presentation/doctor/doctor_speciality_overview_body.dart';
import 'package:teleceta_patients/presentation/doctor/pages/cardiologist_page.dart';
import 'package:teleceta_patients/presentation/patient/patient_form/patient_form_page.dart';
import 'package:teleceta_patients/presentation/patient/patient_lifestyle_form/patient_confirmation_page.dart';
import 'package:teleceta_patients/presentation/patient/patient_lifestyle_form/patient_lifestyle_form_page.dart';
import 'package:teleceta_patients/presentation/patient/patient_medical_form/patient_medical_form_page.dart';
import 'package:teleceta_patients/presentation/sign_in/log_in_page.dart';
import 'package:teleceta_patients/presentation/sign_in/sign_in_page.dart';
import 'package:teleceta_patients/presentation/splash/splash_page.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  MaterialRoute(page: SplashPage),
  MaterialRoute(page: CarouselMainPage),
  MaterialRoute(page: SignInPage),
  MaterialRoute(page: LoginPage),
  MaterialRoute(page: PatientFormPage),
  MaterialRoute(page: PatientMedicalFormPage),
  MaterialRoute(page: PatientLifestyleFormPage),
  MaterialRoute(page: PatientConfirmationPage),
  MaterialRoute(page: DoctorSpecialityOverviewBody),
  MaterialRoute(page: CardiologistPage, initial: true),
])
class $AppRouter {}
