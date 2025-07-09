import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:myapp/routes/app_router.gr.dart';
import 'package:myapp/shared/presentation/custom_bottom_navbar.dart';

@RoutePage()
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        HomeRoute(),
        TasksRoute(),
        MapRoute(),
        ProfileRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) =>
          CustomBottomNavBar(tabsRouter: tabsRouter),
    );
  }
}
