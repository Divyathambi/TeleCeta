// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;

import '../carousel_pages/carousel_main_page.dart' as _i2;
import '../patient/patient_form/patient_form_page.dart' as _i5;
import '../patient/patient_lifestyle_form/patient_confirmation_page.dart'
    as _i8;
import '../patient/patient_lifestyle_form/patient_lifestyle_form_page.dart'
    as _i7;
import '../patient/patient_medical_form/patient_medical_form_page.dart' as _i6;
import '../sign_in/log_in_page.dart' as _i4;
import '../sign_in/sign_in_page.dart' as _i3;
import '../splash/splash_page.dart' as _i1;

class AppRouter extends _i9.RootStackRouter {
  AppRouter([_i10.GlobalKey<_i10.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    CarouselMainPageRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.CarouselMainPage());
    },
    SignInPageRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.SignInPage());
    },
    LoginPageRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.LoginPage());
    },
    PatientFormPageRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.PatientFormPage());
    },
    PatientMedicalFormPageRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.PatientMedicalFormPage());
    },
    PatientLifestyleFormPageRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.PatientLifestyleFormPage());
    },
    PatientConfirmationPageRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.PatientConfirmationPage());
    }
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig(SplashPageRoute.name, path: '/splash-page'),
        _i9.RouteConfig(CarouselMainPageRoute.name,
            path: '/carousel-main-page'),
        _i9.RouteConfig(SignInPageRoute.name, path: '/sign-in-page'),
        _i9.RouteConfig(LoginPageRoute.name, path: '/login-page'),
        _i9.RouteConfig(PatientFormPageRoute.name, path: '/patient-form-page'),
        _i9.RouteConfig(PatientMedicalFormPageRoute.name,
            path: '/patient-medical-form-page'),
        _i9.RouteConfig(PatientLifestyleFormPageRoute.name,
            path: '/patient-lifestyle-form-page'),
        _i9.RouteConfig(PatientConfirmationPageRoute.name, path: '/')
      ];
}

/// generated route for [_i1.SplashPage]
class SplashPageRoute extends _i9.PageRouteInfo<void> {
  const SplashPageRoute() : super(name, path: '/splash-page');

  static const String name = 'SplashPageRoute';
}

/// generated route for [_i2.CarouselMainPage]
class CarouselMainPageRoute extends _i9.PageRouteInfo<void> {
  const CarouselMainPageRoute() : super(name, path: '/carousel-main-page');

  static const String name = 'CarouselMainPageRoute';
}

/// generated route for [_i3.SignInPage]
class SignInPageRoute extends _i9.PageRouteInfo<void> {
  const SignInPageRoute() : super(name, path: '/sign-in-page');

  static const String name = 'SignInPageRoute';
}

/// generated route for [_i4.LoginPage]
class LoginPageRoute extends _i9.PageRouteInfo<void> {
  const LoginPageRoute() : super(name, path: '/login-page');

  static const String name = 'LoginPageRoute';
}

/// generated route for [_i5.PatientFormPage]
class PatientFormPageRoute extends _i9.PageRouteInfo<void> {
  const PatientFormPageRoute() : super(name, path: '/patient-form-page');

  static const String name = 'PatientFormPageRoute';
}

/// generated route for [_i6.PatientMedicalFormPage]
class PatientMedicalFormPageRoute extends _i9.PageRouteInfo<void> {
  const PatientMedicalFormPageRoute()
      : super(name, path: '/patient-medical-form-page');

  static const String name = 'PatientMedicalFormPageRoute';
}

/// generated route for [_i7.PatientLifestyleFormPage]
class PatientLifestyleFormPageRoute extends _i9.PageRouteInfo<void> {
  const PatientLifestyleFormPageRoute()
      : super(name, path: '/patient-lifestyle-form-page');

  static const String name = 'PatientLifestyleFormPageRoute';
}

/// generated route for [_i8.PatientConfirmationPage]
class PatientConfirmationPageRoute extends _i9.PageRouteInfo<void> {
  const PatientConfirmationPageRoute() : super(name, path: '/');

  static const String name = 'PatientConfirmationPageRoute';
}
