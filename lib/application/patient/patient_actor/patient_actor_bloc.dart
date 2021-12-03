import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:teleceta_patients/domain/patient/i_patient_repository.dart';
import 'package:teleceta_patients/domain/patient/patient.dart';
import 'package:teleceta_patients/domain/patient/patient_failures.dart';

part 'patient_actor_event.dart';
part 'patient_actor_state.dart';
part 'patient_actor_bloc.freezed.dart';

@injectable
class PatientActorBloc extends Bloc<PatientActorEvent, PatientActorState> {
  final IPatientRepository _patientRepository; 

  PatientActorBloc(this._patientRepository) : super(const PatientActorState.initial()) {
    on<PatientActorEvent>((event, emit) async {
      await event.map(
        deleted: (e) async {
          emit( const PatientActorState.actionInProgress());

          final possibleFailure = await _patientRepository.deletePatient(event.patient);

          emit( 
            possibleFailure.fold(
              (f) => PatientActorState.deleteFailure(f), 
              (_) => const PatientActorState.deleteSuccess()
            )
          );
        }
      );
    });
  }
}