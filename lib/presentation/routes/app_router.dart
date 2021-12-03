import 'package:auto_route/annotations.dart';
import 'package:teleceta_patients/presentation/carousel_pages/carousel_main_page.dart';
import 'package:teleceta_patients/presentation/patient/patient_form/patient_form_page.dart';
import 'package:teleceta_patients/presentation/sign_in/log_in_page.dart';
import 'package:teleceta_patients/presentation/sign_in/sign_in_page.dart';
import 'package:teleceta_patients/presentation/splash/splash_page.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    MaterialRoute(page: SplashPage, initial: true),
    MaterialRoute(page: CarouselMainPage),
    MaterialRoute(page: SignInPage),
    MaterialRoute(page: LoginPage),
    MaterialRoute(page: PatientFormPage)
  ]
)
class $AppRouter {}