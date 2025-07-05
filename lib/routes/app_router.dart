import 'package:auto_route/auto_route.dart';
import 'package:myapp/routes/app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class $AppRouter extends RootStackRouter {
  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: SignInRoute.page, initial: true),
    AutoRoute(page: ProfileRoute.page)  
  ];
}
