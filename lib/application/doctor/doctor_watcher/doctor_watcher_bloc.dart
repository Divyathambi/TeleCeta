import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:teleceta_patients/domain/doctor/doctor.dart';
import 'package:teleceta_patients/domain/doctor/doctor_failures.dart';
import 'package:teleceta_patients/domain/doctor/i_doctor_repository.dart';

part 'doctor_watcher_event.dart';
part 'doctor_watcher_state.dart';
part 'doctor_watcher_bloc.freezed.dart';

@injectable
class DoctorWatcherBloc extends Bloc<DoctorWatcherEvent, DoctorWatcherState> {
  final IDoctorRepository _doctorRepository;

  DoctorWatcherBloc(this._doctorRepository)
      : super(const DoctorWatcherState.initial()) {
    StreamSubscription<Either<DoctorFailures, List<Doctor>>>?
        _doctorStreamSubscription;

    on<DoctorWatcherEvent>((event, emit) async {
      await event.map(watchAllDoctorsStarted: (e) async {
        emit(const DoctorWatcherState.loadInProgress());

        await _doctorStreamSubscription?.cancel();

        _doctorStreamSubscription = _doctorRepository.watchAllDoctors()!.listen(
            (failureOrDoctors) =>
                add(DoctorWatcherEvent.doctorsReceived(failureOrDoctors)));
      }, watchAllPediatricsStarted: (e) async {
        emit(const DoctorWatcherState.loadInProgress());

        await _doctorStreamSubscription?.cancel();

        _doctorStreamSubscription = _doctorRepository
            .watchAllPediatrics()!
            .listen((failureOrDoctors) =>
                add(DoctorWatcherEvent.doctorsReceived(failureOrDoctors)));
      }, watchAllDermatologistsStarted: (e) async {
        emit(const DoctorWatcherState.loadInProgress());

        await _doctorStreamSubscription?.cancel();

        _doctorStreamSubscription = _doctorRepository
            .watchAllDermatologists()!
            .listen((failureOrDoctors) =>
                add(DoctorWatcherEvent.doctorsReceived(failureOrDoctors)));
      }, watchAllGynaecologistsStarted: (e) async {
        emit(const DoctorWatcherState.loadInProgress());

        await _doctorStreamSubscription?.cancel();

        _doctorStreamSubscription = _doctorRepository
            .watchAllGynaecologists()!
            .listen((failureOrDoctors) =>
                add(DoctorWatcherEvent.doctorsReceived(failureOrDoctors)));
      }, watchAllOrthopaedicsStarted: (e) async {
        emit(const DoctorWatcherState.loadInProgress());

        await _doctorStreamSubscription?.cancel();

        _doctorStreamSubscription = _doctorRepository
            .watchAllOrthopaedics()!
            .listen((failureOrDoctors) =>
                add(DoctorWatcherEvent.doctorsReceived(failureOrDoctors)));
      }, watchAllRadiologistsStarted: (e) async {
        emit(const DoctorWatcherState.loadInProgress());

        await _doctorStreamSubscription?.cancel();

        _doctorStreamSubscription = _doctorRepository
            .watchAllRadiologists()!
            .listen((failureOrDoctors) =>
                add(DoctorWatcherEvent.doctorsReceived(failureOrDoctors)));
      }, watchAllOncologistsStarted: (e) async {
        emit(const DoctorWatcherState.loadInProgress());

        await _doctorStreamSubscription?.cancel();

        _doctorStreamSubscription = _doctorRepository
            .watchAllOncologists()!
            .listen((failureOrDoctors) =>
                add(DoctorWatcherEvent.doctorsReceived(failureOrDoctors)));
      }, watchAllUrologistsStarted: (e) async {
        emit(const DoctorWatcherState.loadInProgress());

        await _doctorStreamSubscription?.cancel();

        _doctorStreamSubscription = _doctorRepository
            .watchAllUrologists()!
            .listen((failureOrDoctors) =>
                add(DoctorWatcherEvent.doctorsReceived(failureOrDoctors)));
      }, watchAllCardiologistsStarted: (e) async {
        emit(const DoctorWatcherState.loadInProgress());

        await _doctorStreamSubscription?.cancel();

        _doctorStreamSubscription = _doctorRepository
            .watchAllCardiologists()!
            .listen((failureOrDoctors) =>
                add(DoctorWatcherEvent.doctorsReceived(failureOrDoctors)));
      }, watchAllOphthalmologistsStarted: (e) async {
        emit(const DoctorWatcherState.loadInProgress());

        await _doctorStreamSubscription?.cancel();

        _doctorStreamSubscription = _doctorRepository
            .watchAllOphthalmologists()!
            .listen((failureOrDoctors) =>
                add(DoctorWatcherEvent.doctorsReceived(failureOrDoctors)));
      }, watchAllFamilyMedicineDoctorsStarted: (e) async {
        emit(const DoctorWatcherState.loadInProgress());

        await _doctorStreamSubscription?.cancel();

        _doctorStreamSubscription = _doctorRepository
            .watchAllFamilyMedicineDoctors()!
            .listen((failureOrDoctors) =>
                add(DoctorWatcherEvent.doctorsReceived(failureOrDoctors)));
      }, watchAllNeurologistsStarted: (e) async {
        emit(const DoctorWatcherState.loadInProgress());

        await _doctorStreamSubscription?.cancel();

        _doctorStreamSubscription = _doctorRepository
            .watchAllNeurologists()!
            .listen((failureOrDoctors) =>
                add(DoctorWatcherEvent.doctorsReceived(failureOrDoctors)));
      }, watchAllGeneralPhysiciansStarted: (e) async {
        emit(const DoctorWatcherState.loadInProgress());

        await _doctorStreamSubscription?.cancel();

        _doctorStreamSubscription = _doctorRepository
            .watchAllGeneralPhysicians()!
            .listen((failureOrDoctors) =>
                add(DoctorWatcherEvent.doctorsReceived(failureOrDoctors)));
      }, watchAllPsychiatristsStarted: (e) async {
        emit(const DoctorWatcherState.loadInProgress());

        await _doctorStreamSubscription?.cancel();

        _doctorStreamSubscription = _doctorRepository
            .watchAllPsychiatrists()!
            .listen((failureOrDoctors) =>
                add(DoctorWatcherEvent.doctorsReceived(failureOrDoctors)));
      }, watchAllPlasticSurgeonsStarted: (e) async {
        emit(const DoctorWatcherState.loadInProgress());

        await _doctorStreamSubscription?.cancel();

        _doctorStreamSubscription = _doctorRepository
            .watchAllPlasticSurgeons()!
            .listen((failureOrDoctors) =>
                add(DoctorWatcherEvent.doctorsReceived(failureOrDoctors)));
      }, watchAllEndocrinologistsStarted: (e) async {
        emit(const DoctorWatcherState.loadInProgress());

        await _doctorStreamSubscription?.cancel();

        _doctorStreamSubscription = _doctorRepository
            .watchAllEndocrinologists()!
            .listen((failureOrDoctors) =>
                add(DoctorWatcherEvent.doctorsReceived(failureOrDoctors)));
      }, watchAllGastroenterologistsStarted: (e) async {
        emit(const DoctorWatcherState.loadInProgress());

        await _doctorStreamSubscription?.cancel();

        _doctorStreamSubscription = _doctorRepository
            .watchAllGastroenterologists()!
            .listen((failureOrDoctors) =>
                add(DoctorWatcherEvent.doctorsReceived(failureOrDoctors)));
      }, watchAllNeuroSurgeonsStarted: (e) async {
        emit(const DoctorWatcherState.loadInProgress());

        await _doctorStreamSubscription?.cancel();

        _doctorStreamSubscription = _doctorRepository
            .watchAllNeuroSurgeons()!
            .listen((failureOrDoctors) =>
                add(DoctorWatcherEvent.doctorsReceived(failureOrDoctors)));
      }, watchAllPulmonologistsStarted: (e) async {
        emit(const DoctorWatcherState.loadInProgress());

        await _doctorStreamSubscription?.cancel();

        _doctorStreamSubscription = _doctorRepository
            .watchAllPulmonologists()!
            .listen((failureOrDoctors) =>
                add(DoctorWatcherEvent.doctorsReceived(failureOrDoctors)));
      }, watchAllRheumatologistsStarted: (e) async {
        emit(const DoctorWatcherState.loadInProgress());

        await _doctorStreamSubscription?.cancel();

        _doctorStreamSubscription = _doctorRepository
            .watchAllRheumatologists()!
            .listen((failureOrDoctors) =>
                add(DoctorWatcherEvent.doctorsReceived(failureOrDoctors)));
      }, watchAllGeriatricsStarted: (e) async {
        emit(const DoctorWatcherState.loadInProgress());

        await _doctorStreamSubscription?.cancel();

        _doctorStreamSubscription = _doctorRepository
            .watchAllGeriatrics()!
            .listen((failureOrDoctors) =>
                add(DoctorWatcherEvent.doctorsReceived(failureOrDoctors)));
      }, watchAllDentistsStarted: (e) async {
        emit(const DoctorWatcherState.loadInProgress());

        await _doctorStreamSubscription?.cancel();

        _doctorStreamSubscription = _doctorRepository
            .watchAllDentists()!
            .listen((failureOrDoctors) =>
                add(DoctorWatcherEvent.doctorsReceived(failureOrDoctors)));
      }, watchAllOsteopathsStarted: (e) async {
        emit(const DoctorWatcherState.loadInProgress());

        await _doctorStreamSubscription?.cancel();

        _doctorStreamSubscription = _doctorRepository
            .watchAllOsteopaths()!
            .listen((failureOrDoctors) =>
                add(DoctorWatcherEvent.doctorsReceived(failureOrDoctors)));
      }, watchAllEntsStarted: (e) async {
        emit(const DoctorWatcherState.loadInProgress());

        await _doctorStreamSubscription?.cancel();

        _doctorStreamSubscription = _doctorRepository.watchAllEnts()!.listen(
            (failureOrDoctors) =>
                add(DoctorWatcherEvent.doctorsReceived(failureOrDoctors)));
      }, watchAllPodiatristsStarted: (e) async {
        emit(const DoctorWatcherState.loadInProgress());

        await _doctorStreamSubscription?.cancel();

        _doctorStreamSubscription = _doctorRepository
            .watchAllPodiatrists()!
            .listen((failureOrDoctors) =>
                add(DoctorWatcherEvent.doctorsReceived(failureOrDoctors)));
      }, doctorsReceived: (e) async {
        emit(e.failureOrDoctors.fold((f) => DoctorWatcherState.loadFailure(f),
            (doctors) => DoctorWatcherState.loadSuccess(doctors)));
      });
    });

    @override
    Future<void> close() async {
      await _doctorStreamSubscription!.cancel();
      return super.close();
    }
  }
}
