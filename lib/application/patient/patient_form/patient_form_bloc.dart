import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:teleceta_patients/domain/patient/i_patient_repository.dart';
import 'package:teleceta_patients/domain/patient/patient.dart';
import 'package:teleceta_patients/domain/patient/patient_failures.dart';

part 'patient_form_event.dart';
part 'patient_form_state.dart';
part 'patient_form_bloc.freezed.dart';

@injectable
class PatientFormBloc extends Bloc<PatientFormEvent, PatientFormState> {
  final IPatientRepository _patientRepository; 

  PatientFormBloc(this._patientRepository) : super(PatientFormState.initial()) {

    on<PatientFormEvent>((event, emit) async {
      await event.map(
        nameChanged: (e) async {
          emit ( 
             state.copyWith(
            patient: state.patient!.copyWith(
              name: e.name
            ), 
            saveFailureOrSuccessOption: none(),
          ), 
        );
        }, 
        emailAddressChanged: (e) async {
          emit(
             state.copyWith(
            patient: state.patient!.copyWith(
              emailAddress: e.emailAddress
            ),
             saveFailureOrSuccessOption: none(), 
          ),
         );
        }, 
        phoneNumberChanged: (e) async {
          emit ( 
            state.copyWith( 
            patient: state.patient!.copyWith(
              phoneNumber: e.phoneNumber
            ), 
            saveFailureOrSuccessOption: none(),
           ),
          );
        }, 
        genderChanged: (e) async {
          emit (
             state.copyWith(
            patient: state.patient!.copyWith( 
              gender: e.gender
            ), 
            saveFailureOrSuccessOption: none(),
          ),
         );
        }, 
        dateOfBirthChanged: (e) async {
          emit (
           state.copyWith( 
            patient: state.patient!.copyWith(
              dateOfBirth: e.dateOfBirth
            ), 
            saveFailureOrSuccessOption: none(),
           ),
          );
        }, 
        bloodGroupChanged: (e) async {
          emit ( 
            state.copyWith( 
            patient: state.patient!.copyWith(
              bloodGroup: e.bloodGroup
            ),
            saveFailureOrSuccessOption: none()
           ),
          );
        }, 
        heightChanged: (e) async {
          emit (          
            state.copyWith(  
            patient: state.patient!.copyWith(
              height: e.height,
            ), 
            saveFailureOrSuccessOption: none()
          ),
          );
        }, 
        weightChanged: (e) async {
          emit(  
           state.copyWith(  
            patient: state.patient!.copyWith( 
              weight: e.weight
            ),
            saveFailureOrSuccessOption: none()
          )
          );
        }, 
        locationChanged: (e) async {
          emit(  
            state.copyWith(  
            patient: state.patient!.copyWith(
              location: e.location
            ),
            saveFailureOrSuccessOption: none()
          )
          ); 
        }, 
        haveAllergiesChanged: (e) async {
          emit( 
            state.copyWith(
            patient: state.patient!.copyWith(
              haveAllergies: e.haveAllergies
            ),
            saveFailureOrSuccessOption: none() 
            )
          );
        }, 
        allergiesChanged: (e) async {
        emit(
          state.copyWith(
          patient: state.patient!.copyWith(
            allergies: e.allergies
          ), 
          saveFailureOrSuccessOption: none()
         )
        ); 
        }, 
        takesMedicationChanged: (e) async {
          emit(
            state.copyWith(
              patient: state.patient!.copyWith( 
                takesMedication: e.takesMedication
              ),
              saveFailureOrSuccessOption: none()
            ),
          );
        }, 
        medicationsChanged: (e) async { 
          emit( 
            state.copyWith(
              patient: state.patient!.copyWith( 
                medications: e.medications
              ),
              saveFailureOrSuccessOption: none(), 
            ),
          );
        }, 
        haveInjuriesChanged: (e) async {
          emit(
            state.copyWith(
              patient: state.patient!.copyWith(
                haveInjuries: e.haveInjuries
              ),
              saveFailureOrSuccessOption: none(),
            )
          );
        }, 
        haveChronicIllnessesChanged: (e) async {
          emit( 
            state.copyWith(
              patient: state.patient!.copyWith(
                haveChronicIllnesses: e.haveChronicIllnesses
              ),
              saveFailureOrSuccessOption: none()
            )
          );
        }, 
        wasHospitalizedChanged: (e) async {
          emit(
            state.copyWith( 
              patient: state.patient!.copyWith( 
                wasHospitalized: e.wasHospitalized
              ),
              saveFailureOrSuccessOption: none(),
            )
          );
        }, 
        injuriesChanged: (e) async {
          emit(  
            state.copyWith(
              patient: state.patient!.copyWith(
                injuries: e.injuries
              ),
              saveFailureOrSuccessOption: none(),
            )
          );
        }, 
        familyHealthIssueChanged: (e) async {
          emit ( 
            state.copyWith(
              patient: state.patient!.copyWith(
                familyHealthIssue: e.familyHealthIssue
              ),
              saveFailureOrSuccessOption: none(),
            )
          );
        }, 
        occupationChanged: (e) async {
          emit ( 
            state.copyWith(
              patient: state.patient!.copyWith(
                occupation: e.occupation
              ),
              saveFailureOrSuccessOption: none()
            )
          );
        }, 
        workoutChanged: (e) async {
          emit ( 
            state.copyWith( 
              patient: state.patient!.copyWith( 
                workout: e.workout
              ),
              saveFailureOrSuccessOption: none()
            )
          );
        }, 
        stressChanged: (e) async {
          emit (
            state.copyWith(
              patient: state.patient!.copyWith(
                stress: e.stress
              ),
              saveFailureOrSuccessOption: none()
            )
          );
        }, 
        dietChanged: (e) async {
          emit ( 
            state.copyWith( 
              patient: state.patient!.copyWith(
                diet: e.diet
              ),
              saveFailureOrSuccessOption: none()
            )
          );
        }, 
        alcoholChanged: (e) async {
          emit (  
            state.copyWith(
              patient: state.patient!.copyWith( 
                alcohol: e.alcohol
              ),
              saveFailureOrSuccessOption: none()
            )
          );
        }, 
        smokeChanged: (e) async {
          emit ( 
            state.copyWith( 
              patient: state.patient!.copyWith(
                smoke: e.smoke
              ),
              saveFailureOrSuccessOption: none()
            )
          );
        }, 
        saved: (e) async {
        Either<PatientFailure, Unit> failureOrSuccess; 

        emit (
          state.copyWith( 
          isSaving: true,  
          saveFailureOrSuccessOption: none()
         ),
        );

        failureOrSuccess = state.isEditing! ? 
                           await _patientRepository.updatePatient(state.patient!) : 
                           await _patientRepository.createPatient(state.patient!);

         emit (
           state.copyWith(  
          isSaving: false, 
          showErrorMessages: true, 
          saveFailureOrSuccessOption: optionOf(failureOrSuccess)
           ),
         );
        }
      );
    });
  }
}
