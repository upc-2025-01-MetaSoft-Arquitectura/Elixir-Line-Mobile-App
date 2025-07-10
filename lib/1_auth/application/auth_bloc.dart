import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../domain/i_auth_facade.dart';
import 'auth_event.dart';
import 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _authFacade;
  AuthBloc(this._authFacade) : super(const AuthState.initial()) {
    on<AuthCheckRequested>((event, emit) async {
      final userOption = await _authFacade.getSignedInUser();
      emit(
        userOption.fold(
          () => const AuthState.unauthenticated(),
          (_) => const AuthState.authenticated(),
        ),
      );
      print(
        'AuthBloc: Estado emitido después de AuthCheckRequested: ${state.runtimeType}',
      );
    });

    on<SignedOut>((event, emit) async {
      await _authFacade.signOut();
      emit(const AuthState.unauthenticated());
      print(
        'AuthBloc: Estado emitido después de SignedOut: ${state.runtimeType}',
      );
    });
  }
}
