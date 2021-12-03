import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:teleceta_patients/domain/patient/i_patient_repository.dart';
import 'package:teleceta_patients/domain/patient/patient.dart';
import 'package:teleceta_patients/domain/patient/patient_failures.dart';

part 'patient_watcher_event.dart';
part 'patient_watcher_state.dart';
part 'patient_watcher_bloc.freezed.dart';

@injectable
class PatientWatcherBloc extends Bloc<PatientWatcherEvent, PatientWatcherState> {
  final IPatientRepository _patientRepository; 

  PatientWatcherBloc(this._patientRepository) : super(const PatientWatcherState.initial()) {
    StreamSubscription<Either<PatientFailure, Patient>>? _patientStreamSubscription; 

    on<PatientWatcherEvent>((event, emit) async {
      await event.map(
        watchPatientStarted: (e) async {
          emit(const PatientWatcherState.loadInProgress());
          await _patientStreamSubscription?.cancel(); 

          _patientStreamSubscription = _patientRepository.watchPatientDetails().listen(
            (failureOrPatient) => add(PatientWatcherEvent.patientReceived(failureOrPatient))
          );
        }, 
        patientReceived: (e) async {
          emit( 
            e.failureOrPatient.fold(
              (f) => PatientWatcherState.loadFailure(f), 
              (patient) => PatientWatcherState.loadSuccess(patient)
            )
          );
        }
      );
    });

  @override
  Future<void> close() async {
    await _patientStreamSubscription?.cancel();
    return super.close();
    }
  }
}