import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:teleceta_patients/domain/auth/i_auth_facade.dart';
import 'package:teleceta_patients/domain/auth/user.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _authFacade; 

  AuthBloc(this._authFacade) : super(const AuthState.initial()) {

    on<AuthEvent>((event, emit) async {
      await event.map(
        authCheckRequested: (e) async {
          final userOption = await _authFacade.getSignedInUser(); 

          emit (
            userOption.fold(
              () => const AuthState.unauthenticated(), 
              (user) => AuthState.authenticated(user)
            )
          );
        }, 
        signOut: (e) async {
          await _authFacade.signOut();
          emit( 
            const AuthState.unauthenticated()
          );
        }
      );
    });
  }
}