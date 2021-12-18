// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;

import 'application/appointment/appointment_actor/appointment_actor_bloc.dart'
    as _i16;
import 'application/appointment/appointment_form/appointment_form_bloc.dart'
    as _i17;
import 'application/appointment/appointment_watcher/appointment_watcher_bloc.dart'
    as _i18;
import 'application/auth/auth_bloc.dart' as _i19;
import 'application/doctor/doctor_watcher/doctor_watcher_bloc.dart' as _i20;
import 'application/patient/patient_actor/patient_actor_bloc.dart' as _i12;
import 'application/patient/patient_form/patient_form_bloc.dart' as _i13;
import 'application/patient/patient_watcher/patient_watcher_bloc.dart' as _i14;
import 'application/sign_in/sign_in_form_bloc.dart' as _i15;
import 'domain/auth/i_auth_facade.dart' as _i6;
import 'domain/doctor/i_doctor_repository.dart' as _i8;
import 'domain/patient/i_patient_repository.dart' as _i10;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i7;
import 'infrastructure/core/firebase_injectable_module.dart' as _i21;
import 'infrastructure/doctor/doctor_repository.dart' as _i9;
import 'infrastructure/patient/patient_repository.dart'
    as _i11; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $InitGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<_i3.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i4.FirebaseFirestore>(
      () => firebaseInjectableModule.firestore);
  gh.lazySingleton<_i5.GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<_i6.IAuthFacade>(() =>
      _i7.FirebaseAuthFacade(get<_i3.FirebaseAuth>(), get<_i5.GoogleSignIn>()));
  gh.lazySingleton<_i8.IDoctorRepository>(
      () => _i9.DoctorRepository(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i10.IPatientRepository>(
      () => _i11.PatientRepository(get<_i4.FirebaseFirestore>()));
  gh.factory<_i12.PatientActorBloc>(
      () => _i12.PatientActorBloc(get<_i10.IPatientRepository>()));
  gh.factory<_i13.PatientFormBloc>(
      () => _i13.PatientFormBloc(get<_i10.IPatientRepository>()));
  gh.factory<_i14.PatientWatcherBloc>(
      () => _i14.PatientWatcherBloc(get<_i10.IPatientRepository>()));
  gh.factory<_i15.SignInFormBloc>(
      () => _i15.SignInFormBloc(get<_i6.IAuthFacade>()));
  gh.factory<_i16.AppointmentActorBloc>(
      () => _i16.AppointmentActorBloc(get<_i8.IDoctorRepository>()));
  gh.factory<_i17.AppointmentFormBloc>(
      () => _i17.AppointmentFormBloc(get<_i8.IDoctorRepository>()));
  gh.factory<_i18.AppointmentWatcherBloc>(
      () => _i18.AppointmentWatcherBloc(get<_i8.IDoctorRepository>()));
  gh.factory<_i19.AuthBloc>(() => _i19.AuthBloc(get<_i6.IAuthFacade>()));
  gh.factory<_i20.DoctorWatcherBloc>(
      () => _i20.DoctorWatcherBloc(get<_i8.IDoctorRepository>()));
  return get;
}

class _$FirebaseInjectableModule extends _i21.FirebaseInjectableModule {}
