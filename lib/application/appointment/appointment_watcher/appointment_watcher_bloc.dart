import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:teleceta_patients/domain/doctor/appointment.dart';
import 'package:teleceta_patients/domain/doctor/doctor_failures.dart';
import 'package:teleceta_patients/domain/doctor/i_doctor_repository.dart';

part 'appointment_watcher_event.dart';
part 'appointment_watcher_state.dart';
part 'appointment_watcher_bloc.freezed.dart';

@injectable
class AppointmentWatcherBloc
    extends Bloc<AppointmentWatcherEvent, AppointmentWatcherState> {
  final IDoctorRepository _doctorRepository;

  AppointmentWatcherBloc(this._doctorRepository)
      : super(const AppointmentWatcherState.initial()) {
    StreamSubscription<Either<DoctorFailures, List<Appointment>>>?
        _appointmentStreamSubscription;

    on<AppointmentWatcherEvent>((event, emit) async {
      await event.map(watchAllAppointmentsStarted: (e) async {
        emit(const AppointmentWatcherState.loadInProgress());

        await _appointmentStreamSubscription?.cancel();

        _appointmentStreamSubscription = _doctorRepository
            .watchAllAppointments()
            .listen((failureOrAppointments) => add(
                AppointmentWatcherEvent.appointmentsReceived(
                    failureOrAppointments)));
      }, appointmentsReceived: (e) async {
        emit(e.failureOrAppointments.fold(
            (f) => AppointmentWatcherState.loadFailure(f),
            (appointments) =>
                AppointmentWatcherState.loadSuccess(appointments)));
      });
    });

    @override
    Future<void> close() async {
      await _appointmentStreamSubscription?.cancel();
      return super.close();
    }
  }
}
