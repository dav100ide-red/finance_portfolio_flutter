import 'package:flutter/material.dart';
import 'package:flutter_finance_portfolio/data/models/ui_model.dart';
import 'package:iconsax/iconsax.dart';

class NavItem {
  final UiScreen screen;
  final Icon icon;
  final Icon activeIcon;
  final String label;

  const NavItem({
    required this.screen,
    required this.icon,
    required this.activeIcon,
    required this.label,
  });
}

const List<NavItem> navItems = [
  NavItem(
    screen: UiScreen.home,
    icon: Icon(Iconsax.home),
    activeIcon: Icon(Iconsax.home5),
    label: 'home',
  ),
  NavItem(
    screen: UiScreen.portfolio,
    icon: Icon(Iconsax.wallet_2),
    activeIcon: Icon(Iconsax.empty_wallet),
    label: 'portfolio',
  ),
  NavItem(
    screen: UiScreen.watchlist,
    icon: Icon(Iconsax.transaction_minus),
    activeIcon: Icon(Iconsax.transaction_minus5),
    label: 'watchlist',
  ),
];
