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

  AuthBloc(this._authFacade) : super(const AuthState.initial()); 

  Stream<AuthState> mapEventToState( 
    AuthEvent event
  ) async* {
    yield* event.map(
      authCheckRequested: (e) async* {
        final userOption = await _authFacade.getSignedInUser(); 
        yield userOption.fold(
          () => const AuthState.unauthenticated(), 
          (user) => AuthState.authenticated(user)
        );
      }, 
      signOut: (e) async* {
        await _authFacade.signOut();
        yield const AuthState.unauthenticated();
      }
    );
  }
}
