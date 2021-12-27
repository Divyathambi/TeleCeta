import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:teleceta_patients/domain/doctor/appointment.dart';
import 'package:teleceta_patients/domain/doctor/doctor_failures.dart';
import 'package:teleceta_patients/domain/doctor/i_doctor_repository.dart';

part 'appointment_actor_event.dart';
part 'appointment_actor_state.dart';
part 'appointment_actor_bloc.freezed.dart';

@injectable
class AppointmentActorBloc
    extends Bloc<AppointmentActorEvent, AppointmentActorState> {
  final IDoctorRepository _doctorRepository;

  AppointmentActorBloc(this._doctorRepository)
      : super(const AppointmentActorState.initial()) {
    on<AppointmentActorEvent>((event, emit) async {
      await event.map(deleted: (e) async {
        emit(const AppointmentActorState.actionInProgress());

        final possibleFailure =
            await _doctorRepository.deleteAppointment(event.appointment);

        emit(possibleFailure!.fold(
            (f) => AppointmentActorState.deleteFailure(f),
            (_) => const AppointmentActorState.deleteSuccess()));
      });
    });
  }
}
