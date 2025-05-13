import 'package:flutter/material.dart';
import 'package:flutter_finance_portfolio/const.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:iconsax/iconsax.dart';

class NavBarBottom extends StatefulWidget {
  const NavBarBottom({super.key});

  @override
  State<NavBarBottom> createState() => _NavBarBottomState();
}

class _NavBarBottomState extends State<NavBarBottom> {
  int indexBottomBar = 0;

  @override
  Widget build(BuildContext context) {
    return SnakeNavigationBar.color(
      behaviour: SnakeBarBehaviour.floating,
      snakeShape: SnakeShape.circle,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
      padding: const EdgeInsets.all(16),
      currentIndex: indexBottomBar,
      backgroundColor: secondaryColor,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white,
      height: 72,
      snakeViewColor: primaryColor,
      onTap: (index) => setState(() => indexBottomBar = index),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Iconsax.home),
          activeIcon: Icon(Iconsax.home5),
          label: 'home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Iconsax.document),
          activeIcon: Icon(Iconsax.document5),
          label: 'transaction',
        ),
        BottomNavigationBarItem(
          icon: Icon(Iconsax.transaction_minus),
          activeIcon: Icon(Iconsax.transaction_minus5),
          label: 'buy/sell',
        ),
        BottomNavigationBarItem(
          icon: Icon(Iconsax.clock),
          activeIcon: Icon(Iconsax.clock5),
          label: 'clock',
        ),
        BottomNavigationBarItem(
          icon: Icon(Iconsax.profile_add),
          activeIcon: Icon(Iconsax.profile_add5),
          label: 'user',
        ),
      ],
    );
  }
}
