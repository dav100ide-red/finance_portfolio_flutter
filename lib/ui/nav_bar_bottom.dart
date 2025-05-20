import 'package:flutter/material.dart';
import 'package:flutter_finance_portfolio/const.dart';
import 'package:flutter_finance_portfolio/data/models/ui_model.dart';
import 'package:flutter_finance_portfolio/ui/nav_item.dart';
import 'package:flutter_finance_portfolio/ui/ui_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';

class NavBarBottom extends ConsumerWidget {
  const NavBarBottom({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final UiModel ui = ref.watch(uiControllerProvider);
    final UiController uiController = ref.read(uiControllerProvider.notifier);

    final currentIndex = navItems.indexWhere(
      (item) => item.screen == ui.activeScreen,
    );

    return SnakeNavigationBar.color(
      behaviour: SnakeBarBehaviour.floating,
      snakeShape: SnakeShape.circle,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
      currentIndex: currentIndex,
      backgroundColor: secondaryColor,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white,
      height: 72,
      snakeViewColor: primaryColor,
      onTap: (index) {
        uiController.setScreen(navItems[index].screen);
      },
      items:
          navItems
              .map(
                (item) => BottomNavigationBarItem(
                  icon: item.icon,
                  activeIcon: item.activeIcon,
                  label: item.label,
                ),
              )
              .toList(),
    );
  }
}
