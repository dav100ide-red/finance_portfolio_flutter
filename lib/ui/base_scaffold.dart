import 'package:flutter/material.dart';
import 'package:flutter_finance_portfolio/data/models/ui_model.dart';
import 'package:flutter_finance_portfolio/ui/home/available_balance/widgets/available_balance_section.dart';
import 'package:flutter_finance_portfolio/ui/header.dart';
import 'package:flutter_finance_portfolio/ui/nav_bar_bottom.dart';
import 'package:flutter_finance_portfolio/ui/home/portfolio/widgets/portfolio_section.dart';
import 'package:flutter_finance_portfolio/ui/home/watchlist_section.dart';
import 'package:flutter_finance_portfolio/ui/portfolio/widgets/portfolio_screen.dart';
import 'package:flutter_finance_portfolio/ui/ui_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BaseScaffold extends ConsumerWidget {
  const BaseScaffold({super.key});

  List<Widget> _activeScreenWidgets(UiScreen activeScreen) {
    switch (activeScreen) {
      case UiScreen.home:
        return [
          AvailableBalanceSection(),
          PortfolioSection(),
          WatchlistSection(),
        ];
      case UiScreen.portfolio:
        return [PortfolioScreen()];
      case UiScreen.watchlist:
        return [Text('watchlist', style: TextStyle(fontSize: 40))];
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final uiController = ref.watch(uiControllerProvider);

    return Scaffold(
      appBar: AppBar(title: Header()),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: _activeScreenWidgets(uiController.activeScreen),
          ),
        ),
      ),
      bottomNavigationBar: NavBarBottom(),
    );
  }
}
