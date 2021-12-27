import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:teleceta_patients/domain/doctor/appointment.dart';
import 'package:teleceta_patients/domain/doctor/doctor_failures.dart';
import 'package:teleceta_patients/domain/doctor/i_doctor_repository.dart';
import 'package:teleceta_patients/domain/patient/patient.dart';
import 'package:teleceta_patients/infrastructure/doctor/doctor_dto.dart';
import 'package:teleceta_patients/infrastructure/patient/patient_dto.dart';

part 'appointment_form_event.dart';
part 'appointment_form_state.dart';
part 'appointment_form_bloc.freezed.dart';

@injectable
class AppointmentFormBloc
    extends Bloc<AppointmentFormEvent, AppointmentFormState> {
  final IDoctorRepository _doctorRepository;

  AppointmentFormBloc(this._doctorRepository)
      : super(AppointmentFormState.initial()) {
    on<AppointmentFormEvent>((event, emit) async {
      await event.map(patientDetailsInitialized: (e) async {
        emit(e.initialPatientDetails.fold(
            () => state,
            (initialPatient) =>
                state.copyWith(patient: initialPatient, isEditing: true)));
      }, patientChanged: (e) async {
        emit(state.copyWith(
            appointment:
                state.appointment!.copyWith(patient: e.patientDto.toDomain()),
            saveFailureOrSuccessOption: none()));
      }, patientNameChanged: (e) async {
        emit(state.copyWith(
          appointment: state.appointment!.copyWith(patientName: e.patientName),
          saveFailureOrSuccessOption: none(),
        ));
      }, appointmentDateChanged: (e) async {
        emit(state.copyWith(
            appointment:
                state.appointment!.copyWith(appointmentDate: e.appointmentDate),
            saveFailureOrSuccessOption: none()));
      }, timeSlotsChanged: (e) async {
        emit(state.copyWith(
            appointment: state.appointment!
                .copyWith(timeSlots: e.timeSlotsDto.toDomain()),
            saveFailureOrSuccessOption: none()));
      }, saved: (e) async {
        Either<DoctorFailures, Unit>? failureOrSuccess;

        emit(
            state.copyWith(isSaving: true, saveFailureOrSuccessOption: none()));

        failureOrSuccess = state.isEditing!
            ? await _doctorRepository.updateAppointment(state.appointment!)
            : await _doctorRepository.createAppointment(state.appointment!);

        emit(state.copyWith(
            isSaving: false,
            showErrorMessages: true,
            saveFailureOrSuccessOption: optionOf(failureOrSuccess)));
      });
    });
  }
}
