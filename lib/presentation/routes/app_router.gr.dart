// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i35;
import 'package:flutter/material.dart' as _i36;

import '../../domain/doctor/doctor.dart' as _i37;
import '../carousel_pages/carousel_main_page.dart' as _i2;
import '../doctor/doctor_speciality_overview_body.dart' as _i9;
import '../doctor/pages/cardiologist_page.dart' as _i10;
import '../doctor/pages/consult_now_page.dart' as _i34;
import '../doctor/pages/dentist_page.dart' as _i11;
import '../doctor/pages/dermatologist_page.dart' as _i12;
import '../doctor/pages/doctor_details_overview_page.dart' as _i33;
import '../doctor/pages/endocrinologist_page.dart' as _i13;
import '../doctor/pages/ent_page.dart' as _i14;
import '../doctor/pages/family_medicine_doctors_page.dart' as _i15;
import '../doctor/pages/gastroenterologist_page.dart' as _i16;
import '../doctor/pages/general_physicians_page.dart' as _i17;
import '../doctor/pages/geriatrics_page.dart' as _i18;
import '../doctor/pages/gynaecologist_page.dart' as _i19;
import '../doctor/pages/nephrologist_page.dart' as _i20;
import '../doctor/pages/neurologist_page.dart' as _i21;
import '../doctor/pages/neurosurgeons_page.dart' as _i22;
import '../doctor/pages/oncologist_page.dart' as _i23;
import '../doctor/pages/ophthalmologist_page.dart' as _i24;
import '../doctor/pages/orthopaedics_page.dart' as _i25;
import '../doctor/pages/osteopath_page.dart' as _i26;
import '../doctor/pages/pediatric_page.dart' as _i27;
import '../doctor/pages/plastic_surgeons_page.dart' as _i28;
import '../doctor/pages/podiatrist_page.dart' as _i29;
import '../doctor/pages/psychiatrist_page.dart' as _i30;
import '../doctor/pages/pulmonologist_page.dart' as _i31;
import '../doctor/pages/urologist_page.dart' as _i32;
import '../patient/patient_form/patient_form_page.dart' as _i5;
import '../patient/patient_lifestyle_form/patient_confirmation_page.dart'
    as _i8;
import '../patient/patient_lifestyle_form/patient_lifestyle_form_page.dart'
    as _i7;
import '../patient/patient_medical_form/patient_medical_form_page.dart' as _i6;
import '../sign_in/log_in_page.dart' as _i4;
import '../sign_in/sign_in_page.dart' as _i3;
import '../splash/splash_page.dart' as _i1;

class AppRouter extends _i35.RootStackRouter {
  AppRouter([_i36.GlobalKey<_i36.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i35.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    CarouselMainPageRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.CarouselMainPage());
    },
    SignInPageRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.SignInPage());
    },
    LoginPageRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.LoginPage());
    },
    PatientFormPageRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.PatientFormPage());
    },
    PatientMedicalFormPageRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.PatientMedicalFormPage());
    },
    PatientLifestyleFormPageRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.PatientLifestyleFormPage());
    },
    PatientConfirmationPageRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.PatientConfirmationPage());
    },
    DoctorSpecialityOverviewBodyRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
          routeData: routeData,
          child: const _i9.DoctorSpecialityOverviewBody());
    },
    CardiologistPageRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.CardiologistPage());
    },
    DentistPageRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i11.DentistPage());
    },
    DermatologistPageRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i12.DermatologistPage());
    },
    EndocrinologistPageRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i13.EndocrinologistPage());
    },
    EntPageRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i14.EntPage());
    },
    FamilyMedicineDoctorsPageRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i15.FamilyMedicineDoctorsPage());
    },
    GastroenterologistPageRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i16.GastroenterologistPage());
    },
    GeneralPhysiciansPageRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i17.GeneralPhysiciansPage());
    },
    GeriatricsPageRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i18.GeriatricsPage());
    },
    GynaecologistPageRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i19.GynaecologistPage());
    },
    NephrologistPageRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i20.NephrologistPage());
    },
    NeurologistPageRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i21.NeurologistPage());
    },
    NeuroSurgeonsPageRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i22.NeuroSurgeonsPage());
    },
    OncologistPageRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i23.OncologistPage());
    },
    OphthalmologistPageRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i24.OphthalmologistPage());
    },
    OrthopaedicsPageRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i25.OrthopaedicsPage());
    },
    OsteopathPageRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i26.OsteopathPage());
    },
    PediatricPageRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i27.PediatricPage());
    },
    PlasticSurgeonsPageRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i28.PlasticSurgeonsPage());
    },
    PodiatristPageRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i29.PodiatristPage());
    },
    PsychiatristPageRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i30.PsychiatristPage());
    },
    PulmonologistPageRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i31.PulmonologistPage());
    },
    UrologistPageRoute.name: (routeData) {
      return _i35.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i32.UrologistPage());
    },
    DoctorDetailsOverviewPageRoute.name: (routeData) {
      final args = routeData.argsAs<DoctorDetailsOverviewPageRouteArgs>();
      return _i35.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i33.DoctorDetailsOverviewPage(
              key: args.key, doctor: args.doctor));
    },
    ConsultNowPageRoute.name: (routeData) {
      final args = routeData.argsAs<ConsultNowPageRouteArgs>();
      return _i35.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i34.ConsultNowPage(key: args.key, doctor: args.doctor));
    }
  };

  @override
  List<_i35.RouteConfig> get routes => [
        _i35.RouteConfig(SplashPageRoute.name, path: '/'),
        _i35.RouteConfig(CarouselMainPageRoute.name,
            path: '/carousel-main-page'),
        _i35.RouteConfig(SignInPageRoute.name, path: '/sign-in-page'),
        _i35.RouteConfig(LoginPageRoute.name, path: '/login-page'),
        _i35.RouteConfig(PatientFormPageRoute.name, path: '/patient-form-page'),
        _i35.RouteConfig(PatientMedicalFormPageRoute.name,
            path: '/patient-medical-form-page'),
        _i35.RouteConfig(PatientLifestyleFormPageRoute.name,
            path: '/patient-lifestyle-form-page'),
        _i35.RouteConfig(PatientConfirmationPageRoute.name,
            path: '/patient-confirmation-page'),
        _i35.RouteConfig(DoctorSpecialityOverviewBodyRoute.name,
            path: '/doctor-speciality-overview-body'),
        _i35.RouteConfig(CardiologistPageRoute.name,
            path: '/cardiologist-page'),
        _i35.RouteConfig(DentistPageRoute.name, path: '/dentist-page'),
        _i35.RouteConfig(DermatologistPageRoute.name,
            path: '/dermatologist-page'),
        _i35.RouteConfig(EndocrinologistPageRoute.name,
            path: '/endocrinologist-page'),
        _i35.RouteConfig(EntPageRoute.name, path: '/ent-page'),
        _i35.RouteConfig(FamilyMedicineDoctorsPageRoute.name,
            path: '/family-medicine-doctors-page'),
        _i35.RouteConfig(GastroenterologistPageRoute.name,
            path: '/gastroenterologist-page'),
        _i35.RouteConfig(GeneralPhysiciansPageRoute.name,
            path: '/general-physicians-page'),
        _i35.RouteConfig(GeriatricsPageRoute.name, path: '/geriatrics-page'),
        _i35.RouteConfig(GynaecologistPageRoute.name,
            path: '/gynaecologist-page'),
        _i35.RouteConfig(NephrologistPageRoute.name,
            path: '/nephrologist-page'),
        _i35.RouteConfig(NeurologistPageRoute.name, path: '/neurologist-page'),
        _i35.RouteConfig(NeuroSurgeonsPageRoute.name,
            path: '/neuro-surgeons-page'),
        _i35.RouteConfig(OncologistPageRoute.name, path: '/oncologist-page'),
        _i35.RouteConfig(OphthalmologistPageRoute.name,
            path: '/ophthalmologist-page'),
        _i35.RouteConfig(OrthopaedicsPageRoute.name,
            path: '/orthopaedics-page'),
        _i35.RouteConfig(OsteopathPageRoute.name, path: '/osteopath-page'),
        _i35.RouteConfig(PediatricPageRoute.name, path: '/pediatric-page'),
        _i35.RouteConfig(PlasticSurgeonsPageRoute.name,
            path: '/plastic-surgeons-page'),
        _i35.RouteConfig(PodiatristPageRoute.name, path: '/podiatrist-page'),
        _i35.RouteConfig(PsychiatristPageRoute.name,
            path: '/psychiatrist-page'),
        _i35.RouteConfig(PulmonologistPageRoute.name,
            path: '/pulmonologist-page'),
        _i35.RouteConfig(UrologistPageRoute.name, path: '/urologist-page'),
        _i35.RouteConfig(DoctorDetailsOverviewPageRoute.name,
            path: '/doctor-details-overview-page'),
        _i35.RouteConfig(ConsultNowPageRoute.name, path: '/consult-now-page')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashPageRoute extends _i35.PageRouteInfo<void> {
  const SplashPageRoute() : super(SplashPageRoute.name, path: '/');

  static const String name = 'SplashPageRoute';
}

/// generated route for
/// [_i2.CarouselMainPage]
class CarouselMainPageRoute extends _i35.PageRouteInfo<void> {
  const CarouselMainPageRoute()
      : super(CarouselMainPageRoute.name, path: '/carousel-main-page');

  static const String name = 'CarouselMainPageRoute';
}

/// generated route for
/// [_i3.SignInPage]
class SignInPageRoute extends _i35.PageRouteInfo<void> {
  const SignInPageRoute() : super(SignInPageRoute.name, path: '/sign-in-page');

  static const String name = 'SignInPageRoute';
}

/// generated route for
/// [_i4.LoginPage]
class LoginPageRoute extends _i35.PageRouteInfo<void> {
  const LoginPageRoute() : super(LoginPageRoute.name, path: '/login-page');

  static const String name = 'LoginPageRoute';
}

/// generated route for
/// [_i5.PatientFormPage]
class PatientFormPageRoute extends _i35.PageRouteInfo<void> {
  const PatientFormPageRoute()
      : super(PatientFormPageRoute.name, path: '/patient-form-page');

  static const String name = 'PatientFormPageRoute';
}

/// generated route for
/// [_i6.PatientMedicalFormPage]
class PatientMedicalFormPageRoute extends _i35.PageRouteInfo<void> {
  const PatientMedicalFormPageRoute()
      : super(PatientMedicalFormPageRoute.name,
            path: '/patient-medical-form-page');

  static const String name = 'PatientMedicalFormPageRoute';
}

/// generated route for
/// [_i7.PatientLifestyleFormPage]
class PatientLifestyleFormPageRoute extends _i35.PageRouteInfo<void> {
  const PatientLifestyleFormPageRoute()
      : super(PatientLifestyleFormPageRoute.name,
            path: '/patient-lifestyle-form-page');

  static const String name = 'PatientLifestyleFormPageRoute';
}

/// generated route for
/// [_i8.PatientConfirmationPage]
class PatientConfirmationPageRoute extends _i35.PageRouteInfo<void> {
  const PatientConfirmationPageRoute()
      : super(PatientConfirmationPageRoute.name,
            path: '/patient-confirmation-page');

  static const String name = 'PatientConfirmationPageRoute';
}

/// generated route for
/// [_i9.DoctorSpecialityOverviewBody]
class DoctorSpecialityOverviewBodyRoute extends _i35.PageRouteInfo<void> {
  const DoctorSpecialityOverviewBodyRoute()
      : super(DoctorSpecialityOverviewBodyRoute.name,
            path: '/doctor-speciality-overview-body');

  static const String name = 'DoctorSpecialityOverviewBodyRoute';
}

/// generated route for
/// [_i10.CardiologistPage]
class CardiologistPageRoute extends _i35.PageRouteInfo<void> {
  const CardiologistPageRoute()
      : super(CardiologistPageRoute.name, path: '/cardiologist-page');

  static const String name = 'CardiologistPageRoute';
}

/// generated route for
/// [_i11.DentistPage]
class DentistPageRoute extends _i35.PageRouteInfo<void> {
  const DentistPageRoute()
      : super(DentistPageRoute.name, path: '/dentist-page');

  static const String name = 'DentistPageRoute';
}

/// generated route for
/// [_i12.DermatologistPage]
class DermatologistPageRoute extends _i35.PageRouteInfo<void> {
  const DermatologistPageRoute()
      : super(DermatologistPageRoute.name, path: '/dermatologist-page');

  static const String name = 'DermatologistPageRoute';
}

/// generated route for
/// [_i13.EndocrinologistPage]
class EndocrinologistPageRoute extends _i35.PageRouteInfo<void> {
  const EndocrinologistPageRoute()
      : super(EndocrinologistPageRoute.name, path: '/endocrinologist-page');

  static const String name = 'EndocrinologistPageRoute';
}

/// generated route for
/// [_i14.EntPage]
class EntPageRoute extends _i35.PageRouteInfo<void> {
  const EntPageRoute() : super(EntPageRoute.name, path: '/ent-page');

  static const String name = 'EntPageRoute';
}

/// generated route for
/// [_i15.FamilyMedicineDoctorsPage]
class FamilyMedicineDoctorsPageRoute extends _i35.PageRouteInfo<void> {
  const FamilyMedicineDoctorsPageRoute()
      : super(FamilyMedicineDoctorsPageRoute.name,
            path: '/family-medicine-doctors-page');

  static const String name = 'FamilyMedicineDoctorsPageRoute';
}

/// generated route for
/// [_i16.GastroenterologistPage]
class GastroenterologistPageRoute extends _i35.PageRouteInfo<void> {
  const GastroenterologistPageRoute()
      : super(GastroenterologistPageRoute.name,
            path: '/gastroenterologist-page');

  static const String name = 'GastroenterologistPageRoute';
}

/// generated route for
/// [_i17.GeneralPhysiciansPage]
class GeneralPhysiciansPageRoute extends _i35.PageRouteInfo<void> {
  const GeneralPhysiciansPageRoute()
      : super(GeneralPhysiciansPageRoute.name,
            path: '/general-physicians-page');

  static const String name = 'GeneralPhysiciansPageRoute';
}

/// generated route for
/// [_i18.GeriatricsPage]
class GeriatricsPageRoute extends _i35.PageRouteInfo<void> {
  const GeriatricsPageRoute()
      : super(GeriatricsPageRoute.name, path: '/geriatrics-page');

  static const String name = 'GeriatricsPageRoute';
}

/// generated route for
/// [_i19.GynaecologistPage]
class GynaecologistPageRoute extends _i35.PageRouteInfo<void> {
  const GynaecologistPageRoute()
      : super(GynaecologistPageRoute.name, path: '/gynaecologist-page');

  static const String name = 'GynaecologistPageRoute';
}

/// generated route for
/// [_i20.NephrologistPage]
class NephrologistPageRoute extends _i35.PageRouteInfo<void> {
  const NephrologistPageRoute()
      : super(NephrologistPageRoute.name, path: '/nephrologist-page');

  static const String name = 'NephrologistPageRoute';
}

/// generated route for
/// [_i21.NeurologistPage]
class NeurologistPageRoute extends _i35.PageRouteInfo<void> {
  const NeurologistPageRoute()
      : super(NeurologistPageRoute.name, path: '/neurologist-page');

  static const String name = 'NeurologistPageRoute';
}

/// generated route for
/// [_i22.NeuroSurgeonsPage]
class NeuroSurgeonsPageRoute extends _i35.PageRouteInfo<void> {
  const NeuroSurgeonsPageRoute()
      : super(NeuroSurgeonsPageRoute.name, path: '/neuro-surgeons-page');

  static const String name = 'NeuroSurgeonsPageRoute';
}

/// generated route for
/// [_i23.OncologistPage]
class OncologistPageRoute extends _i35.PageRouteInfo<void> {
  const OncologistPageRoute()
      : super(OncologistPageRoute.name, path: '/oncologist-page');

  static const String name = 'OncologistPageRoute';
}

/// generated route for
/// [_i24.OphthalmologistPage]
class OphthalmologistPageRoute extends _i35.PageRouteInfo<void> {
  const OphthalmologistPageRoute()
      : super(OphthalmologistPageRoute.name, path: '/ophthalmologist-page');

  static const String name = 'OphthalmologistPageRoute';
}

/// generated route for
/// [_i25.OrthopaedicsPage]
class OrthopaedicsPageRoute extends _i35.PageRouteInfo<void> {
  const OrthopaedicsPageRoute()
      : super(OrthopaedicsPageRoute.name, path: '/orthopaedics-page');

  static const String name = 'OrthopaedicsPageRoute';
}

/// generated route for
/// [_i26.OsteopathPage]
class OsteopathPageRoute extends _i35.PageRouteInfo<void> {
  const OsteopathPageRoute()
      : super(OsteopathPageRoute.name, path: '/osteopath-page');

  static const String name = 'OsteopathPageRoute';
}

/// generated route for
/// [_i27.PediatricPage]
class PediatricPageRoute extends _i35.PageRouteInfo<void> {
  const PediatricPageRoute()
      : super(PediatricPageRoute.name, path: '/pediatric-page');

  static const String name = 'PediatricPageRoute';
}

/// generated route for
/// [_i28.PlasticSurgeonsPage]
class PlasticSurgeonsPageRoute extends _i35.PageRouteInfo<void> {
  const PlasticSurgeonsPageRoute()
      : super(PlasticSurgeonsPageRoute.name, path: '/plastic-surgeons-page');

  static const String name = 'PlasticSurgeonsPageRoute';
}

/// generated route for
/// [_i29.PodiatristPage]
class PodiatristPageRoute extends _i35.PageRouteInfo<void> {
  const PodiatristPageRoute()
      : super(PodiatristPageRoute.name, path: '/podiatrist-page');

  static const String name = 'PodiatristPageRoute';
}

/// generated route for
/// [_i30.PsychiatristPage]
class PsychiatristPageRoute extends _i35.PageRouteInfo<void> {
  const PsychiatristPageRoute()
      : super(PsychiatristPageRoute.name, path: '/psychiatrist-page');

  static const String name = 'PsychiatristPageRoute';
}

/// generated route for
/// [_i31.PulmonologistPage]
class PulmonologistPageRoute extends _i35.PageRouteInfo<void> {
  const PulmonologistPageRoute()
      : super(PulmonologistPageRoute.name, path: '/pulmonologist-page');

  static const String name = 'PulmonologistPageRoute';
}

/// generated route for
/// [_i32.UrologistPage]
class UrologistPageRoute extends _i35.PageRouteInfo<void> {
  const UrologistPageRoute()
      : super(UrologistPageRoute.name, path: '/urologist-page');

  static const String name = 'UrologistPageRoute';
}

/// generated route for
/// [_i33.DoctorDetailsOverviewPage]
class DoctorDetailsOverviewPageRoute
    extends _i35.PageRouteInfo<DoctorDetailsOverviewPageRouteArgs> {
  DoctorDetailsOverviewPageRoute({_i36.Key? key, required _i37.Doctor doctor})
      : super(DoctorDetailsOverviewPageRoute.name,
            path: '/doctor-details-overview-page',
            args: DoctorDetailsOverviewPageRouteArgs(key: key, doctor: doctor));

  static const String name = 'DoctorDetailsOverviewPageRoute';
}

class DoctorDetailsOverviewPageRouteArgs {
  const DoctorDetailsOverviewPageRouteArgs({this.key, required this.doctor});

  final _i36.Key? key;

  final _i37.Doctor doctor;

  @override
  String toString() {
    return 'DoctorDetailsOverviewPageRouteArgs{key: $key, doctor: $doctor}';
  }
}

/// generated route for
/// [_i34.ConsultNowPage]
class ConsultNowPageRoute extends _i35.PageRouteInfo<ConsultNowPageRouteArgs> {
  ConsultNowPageRoute({_i36.Key? key, required _i37.Doctor doctor})
      : super(ConsultNowPageRoute.name,
            path: '/consult-now-page',
            args: ConsultNowPageRouteArgs(key: key, doctor: doctor));

  static const String name = 'ConsultNowPageRoute';
}

class ConsultNowPageRouteArgs {
  const ConsultNowPageRouteArgs({this.key, required this.doctor});

  final _i36.Key? key;

  final _i37.Doctor doctor;

  @override
  String toString() {
    return 'ConsultNowPageRouteArgs{key: $key, doctor: $doctor}';
  }
}
