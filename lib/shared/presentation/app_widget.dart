import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/1-auth/application/auth_state.dart';
import 'package:myapp/routes/app_router.dart';
import 'package:myapp/routes/app_router.gr.dart';
import '../../injection.dart';
import '../../1-auth/application/auth_bloc.dart';
import '../../1-auth/application/auth_event.dart';  

class AppWidget extends StatelessWidget {
  final _appRouter = $AppRouter();
  AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        ),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light().copyWith(
          colorScheme: ColorScheme.light(
            primary: Color(0xFF81c784),
            secondary: Color(0xFF81d4fa),
          ),
        ),
        routeInformationParser: _appRouter.defaultRouteParser(),
        routerDelegate: AutoRouterDelegate(
          _appRouter,
          navigatorObservers: () => [
            AutoRouteObserver(),
          ],
        ),
        builder: (context, child) {
          return BlocListener<AuthBloc, AuthState>(
            listener: (context, state) {
              final rootRouter = AutoRouter.of(context).root;
              if (state == const AuthState.unauthenticated()) {
                rootRouter.replaceAll([const SignInRoute()]);
              } else if (state == const AuthState.authenticated()) {
                rootRouter.replaceAll([const MainRoute()]);
              }
            },
            child: child!,
          );
        },
      ),
    );
  }
}
