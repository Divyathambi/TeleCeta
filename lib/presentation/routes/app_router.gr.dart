// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i11;
import 'package:flutter/material.dart' as _i12;

import '../carousel_pages/carousel_main_page.dart' as _i2;
import '../doctor/doctor_speciality_overview_body.dart' as _i9;
import '../doctor/pages/cardiologist_page.dart' as _i10;
import '../patient/patient_form/patient_form_page.dart' as _i5;
import '../patient/patient_lifestyle_form/patient_confirmation_page.dart'
    as _i8;
import '../patient/patient_lifestyle_form/patient_lifestyle_form_page.dart'
    as _i7;
import '../patient/patient_medical_form/patient_medical_form_page.dart' as _i6;
import '../sign_in/log_in_page.dart' as _i4;
import '../sign_in/sign_in_page.dart' as _i3;
import '../splash/splash_page.dart' as _i1;

class AppRouter extends _i11.RootStackRouter {
  AppRouter([_i12.GlobalKey<_i12.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    CarouselMainPageRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.CarouselMainPage());
    },
    SignInPageRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.SignInPage());
    },
    LoginPageRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.LoginPage());
    },
    PatientFormPageRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.PatientFormPage());
    },
    PatientMedicalFormPageRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.PatientMedicalFormPage());
    },
    PatientLifestyleFormPageRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.PatientLifestyleFormPage());
    },
    PatientConfirmationPageRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.PatientConfirmationPage());
    },
    DoctorSpecialityOverviewBodyRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData,
          child: const _i9.DoctorSpecialityOverviewBody());
    },
    CardiologistPageRoute.name: (routeData) {
      return _i11.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.CardiologistPage());
    }
  };

  @override
  List<_i11.RouteConfig> get routes => [
        _i11.RouteConfig(SplashPageRoute.name, path: '/splash-page'),
        _i11.RouteConfig(CarouselMainPageRoute.name,
            path: '/carousel-main-page'),
        _i11.RouteConfig(SignInPageRoute.name, path: '/sign-in-page'),
        _i11.RouteConfig(LoginPageRoute.name, path: '/login-page'),
        _i11.RouteConfig(PatientFormPageRoute.name, path: '/patient-form-page'),
        _i11.RouteConfig(PatientMedicalFormPageRoute.name,
            path: '/patient-medical-form-page'),
        _i11.RouteConfig(PatientLifestyleFormPageRoute.name,
            path: '/patient-lifestyle-form-page'),
        _i11.RouteConfig(PatientConfirmationPageRoute.name,
            path: '/patient-confirmation-page'),
        _i11.RouteConfig(DoctorSpecialityOverviewBodyRoute.name,
            path: '/doctor-speciality-overview-body'),
        _i11.RouteConfig(CardiologistPageRoute.name, path: '/')
      ];
}

/// generated route for [_i1.SplashPage]
class SplashPageRoute extends _i11.PageRouteInfo<void> {
  const SplashPageRoute() : super(name, path: '/splash-page');

  static const String name = 'SplashPageRoute';
}

/// generated route for [_i2.CarouselMainPage]
class CarouselMainPageRoute extends _i11.PageRouteInfo<void> {
  const CarouselMainPageRoute() : super(name, path: '/carousel-main-page');

  static const String name = 'CarouselMainPageRoute';
}

/// generated route for [_i3.SignInPage]
class SignInPageRoute extends _i11.PageRouteInfo<void> {
  const SignInPageRoute() : super(name, path: '/sign-in-page');

  static const String name = 'SignInPageRoute';
}

/// generated route for [_i4.LoginPage]
class LoginPageRoute extends _i11.PageRouteInfo<void> {
  const LoginPageRoute() : super(name, path: '/login-page');

  static const String name = 'LoginPageRoute';
}

/// generated route for [_i5.PatientFormPage]
class PatientFormPageRoute extends _i11.PageRouteInfo<void> {
  const PatientFormPageRoute() : super(name, path: '/patient-form-page');

  static const String name = 'PatientFormPageRoute';
}

/// generated route for [_i6.PatientMedicalFormPage]
class PatientMedicalFormPageRoute extends _i11.PageRouteInfo<void> {
  const PatientMedicalFormPageRoute()
      : super(name, path: '/patient-medical-form-page');

  static const String name = 'PatientMedicalFormPageRoute';
}

/// generated route for [_i7.PatientLifestyleFormPage]
class PatientLifestyleFormPageRoute extends _i11.PageRouteInfo<void> {
  const PatientLifestyleFormPageRoute()
      : super(name, path: '/patient-lifestyle-form-page');

  static const String name = 'PatientLifestyleFormPageRoute';
}

/// generated route for [_i8.PatientConfirmationPage]
class PatientConfirmationPageRoute extends _i11.PageRouteInfo<void> {
  const PatientConfirmationPageRoute()
      : super(name, path: '/patient-confirmation-page');

  static const String name = 'PatientConfirmationPageRoute';
}

/// generated route for [_i9.DoctorSpecialityOverviewBody]
class DoctorSpecialityOverviewBodyRoute extends _i11.PageRouteInfo<void> {
  const DoctorSpecialityOverviewBodyRoute()
      : super(name, path: '/doctor-speciality-overview-body');

  static const String name = 'DoctorSpecialityOverviewBodyRoute';
}

/// generated route for [_i10.CardiologistPage]
class CardiologistPageRoute extends _i11.PageRouteInfo<void> {
  const CardiologistPageRoute() : super(name, path: '/');

  static const String name = 'CardiologistPageRoute';
}
