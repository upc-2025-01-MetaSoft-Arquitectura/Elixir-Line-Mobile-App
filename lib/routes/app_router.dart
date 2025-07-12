import 'package:auto_route/auto_route.dart';
import 'package:myapp/1_auth/application/auth_bloc.dart';
import 'package:myapp/routes/app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class $AppRouter extends RootStackRouter {
  final AuthBloc authBloc;

  $AppRouter({required this.authBloc});

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: SignInRoute.page, initial: true),
    AutoRoute(
      page: MainRoute.page,
      children: [
        AutoRoute(page: HomeRoute.page),
        AutoRoute(page: TasksRoute.page, path: 'tasks'),
        AutoRoute(page: ProfileRoute.page),
      ],
    ),
    AutoRoute(page: TaskDetailWrapperRoute.page),
  ];
}
