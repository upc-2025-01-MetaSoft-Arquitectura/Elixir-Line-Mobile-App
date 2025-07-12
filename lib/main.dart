import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/1_auth/application/auth_bloc.dart';
import 'package:myapp/1_auth/application/auth_event.dart';
import 'package:myapp/injection.dart';
import 'package:myapp/routes/app_router.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();

  final authBloc = getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested());
  final appRouter = $AppRouter(authBloc: authBloc);

  runApp(
    BlocProvider.value(
      value: authBloc,
      child: MyApp(appRouter: appRouter),
    ),
  );
}

class MyApp extends StatelessWidget {
  final $AppRouter appRouter;
  const MyApp({required this.appRouter, super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: appRouter.delegate(),
      routeInformationParser: appRouter.defaultRouteParser(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        colorScheme: const ColorScheme.light(
          primary: Color(0xFF81c784),
          secondary: Color(0xFF81d4fa),
        ),
      ),
    );
  }
}
