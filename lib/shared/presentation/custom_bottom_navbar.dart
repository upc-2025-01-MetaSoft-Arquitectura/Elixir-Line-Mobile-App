import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:myapp/shared/presentation/colors.dart';

class CustomBottomNavBar extends StatelessWidget {
  final TabsRouter tabsRouter;

  const CustomBottomNavBar({super.key, required this.tabsRouter});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: tabsRouter.activeIndex,
      onTap: tabsRouter.setActiveIndex,
      backgroundColor: Colors.white,
      selectedItemColor: AppColors.oliveGreen,
      unselectedItemColor: Colors.grey.shade500,
      selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w600),
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(icon: Icon(LucideIcons.house), label: 'Inicio'),
        BottomNavigationBarItem(
          icon: Icon(LucideIcons.list_checks),
          label: 'Tareas',
        ),
        BottomNavigationBarItem(icon: Icon(LucideIcons.map_pin), label: 'Mapa'),
        BottomNavigationBarItem(
          icon: Icon(LucideIcons.circle_user),
          label: 'Perfil',
        ),
      ],
    );
  }
}
