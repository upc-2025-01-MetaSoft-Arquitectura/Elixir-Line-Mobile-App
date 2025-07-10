import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/1_auth/application/auth_state.dart';
import 'package:myapp/routes/app_router.dart';
import 'package:myapp/routes/app_router.gr.dart';
import '../../injection.dart';
import '../../1_auth/application/auth_bloc.dart';
import '../../1_auth/application/auth_event.dart';

class AppWidget extends StatelessWidget {
  final AuthBloc authBloc =
      getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested());
  late final $AppRouter _appRouter;
  late final ValueNotifier<AuthState> authNotifier;

  AppWidget({super.key}) {
    _appRouter = $AppRouter(authBloc: authBloc);
    authNotifier = ValueNotifier<AuthState>(authBloc.state);
    authBloc.stream.listen((state) {
      authNotifier.value = state;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider.value(value: authBloc)],
      child: MaterialApp.router(
        routerConfig: _appRouter.config(reevaluateListenable: authNotifier),
        builder: (context, child) {
          return BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              state.map(
                initial: (_) {},
                authenticated:
                    (_) => _appRouter.replaceAll([const MainRoute()]),
                unauthenticated:
                    (_) => _appRouter.replaceAll([const SignInRoute()]),
              );
            },
            child: child!,
          );
        },
      ),
    );
  }
}
