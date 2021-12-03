// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../carousel_pages/carousel_main_page.dart' as _i2;
import '../patient/patient_form/patient_form_page.dart' as _i5;
import '../sign_in/log_in_page.dart' as _i4;
import '../sign_in/sign_in_page.dart' as _i3;
import '../splash/splash_page.dart' as _i1;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    CarouselMainPageRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.CarouselMainPage());
    },
    SignInPageRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.SignInPage());
    },
    LoginPageRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.LoginPage());
    },
    PatientFormPageRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.PatientFormPage());
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(SplashPageRoute.name, path: '/'),
        _i6.RouteConfig(CarouselMainPageRoute.name,
            path: '/carousel-main-page'),
        _i6.RouteConfig(SignInPageRoute.name, path: '/sign-in-page'),
        _i6.RouteConfig(LoginPageRoute.name, path: '/login-page'),
        _i6.RouteConfig(PatientFormPageRoute.name, path: '/patient-form-page')
      ];
}

/// generated route for [_i1.SplashPage]
class SplashPageRoute extends _i6.PageRouteInfo<void> {
  const SplashPageRoute() : super(name, path: '/');

  static const String name = 'SplashPageRoute';
}

/// generated route for [_i2.CarouselMainPage]
class CarouselMainPageRoute extends _i6.PageRouteInfo<void> {
  const CarouselMainPageRoute() : super(name, path: '/carousel-main-page');

  static const String name = 'CarouselMainPageRoute';
}

/// generated route for [_i3.SignInPage]
class SignInPageRoute extends _i6.PageRouteInfo<void> {
  const SignInPageRoute() : super(name, path: '/sign-in-page');

  static const String name = 'SignInPageRoute';
}

/// generated route for [_i4.LoginPage]
class LoginPageRoute extends _i6.PageRouteInfo<void> {
  const LoginPageRoute() : super(name, path: '/login-page');

  static const String name = 'LoginPageRoute';
}

/// generated route for [_i5.PatientFormPage]
class PatientFormPageRoute extends _i6.PageRouteInfo<void> {
  const PatientFormPageRoute() : super(name, path: '/patient-form-page');

  static const String name = 'PatientFormPageRoute';
}
