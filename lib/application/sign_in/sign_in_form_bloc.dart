import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:teleceta_patients/domain/auth/auth_failures.dart';
import 'package:teleceta_patients/domain/auth/i_auth_facade.dart';
import 'package:teleceta_patients/domain/auth/value_objects.dart';

part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';
part 'sign_in_form_bloc.freezed.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final IAuthFacade _authFacade; 

  SignInFormBloc(this._authFacade) : super(SignInFormState.initial()) {
    on<SignInFormEvent>((event, emit) async {
      await event.map(
        emailChanged: (e) async {
          emit( 
            state.copyWith(
              emailAddress: EmailAddress(e.emailStr), 
              authFailureOrSuccessOption: none(),
            )
          );
        }, 
        passwordChanged: (e) async {
          emit( 
            state.copyWith(
              password: Password(e.passwordStr), 
              authFailureOrSuccessOption: none(),
            )
          );
        }, 
        registerWithEmailAndPasswordPressed: (e) async {
          Either<AuthFailures, Unit> failureOrSuccess;

          final isEmailValid = state.emailAddress!.isValid(); 
          final isPasswordValid = state.password!.isValid(); 

          if(isEmailValid && isPasswordValid) {
            emit(
              state.copyWith(
                isSubmitting: true, 
                authFailureOrSuccessOption: none()
              )
            );
          }

          failureOrSuccess = await _authFacade.registerWithEmailAndPassword(
                                  emailAddress: state.emailAddress!, 
                                  password: state.password!
                                );

          emit(
            state.copyWith(
              isSubmitting: false, 
              showErrorMessages: true, 
              authFailureOrSuccessOption: optionOf(failureOrSuccess)
            )
          );
        }, 
        signInWithEmailAndPasswordPressed: (e) async {
          Either<AuthFailures, Unit> failureOrSuccess;

          final isEmailValid = state.emailAddress!.isValid(); 
          final isPasswordValid = state.password!.isValid(); 

          if(isEmailValid && isPasswordValid) {
            emit(
              state.copyWith(
                isSubmitting: true, 
                authFailureOrSuccessOption: none()
              )
            );
          }

          failureOrSuccess = await _authFacade.loginWithEmailAndPassword(
                                  emailAddress: state.emailAddress!, 
                                  password: state.password!
                                );

          emit(
            state.copyWith(
              isSubmitting: false, 
              showErrorMessages: true, 
              authFailureOrSuccessOption: optionOf(failureOrSuccess)
            )
          );
        }, 
        signInWithGooglePressed: (e) async {
          emit( 
            state.copyWith(
              isSubmitting: false,
              authFailureOrSuccessOption: none()
            )
          );

          final failureOrSuccess = await _authFacade.signInWithGoogle(); 

          emit( 
            state.copyWith(
              isSubmitting: true, 
              authFailureOrSuccessOption: some(failureOrSuccess)
            )
          );
        }
      );
    });
  }
}