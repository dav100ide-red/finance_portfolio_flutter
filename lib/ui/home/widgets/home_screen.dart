import 'package:flutter/material.dart';
import 'package:flutter_finance_portfolio/ui/home/widgets/available_balance/widgets/available_balance_section.dart';
import 'package:flutter_finance_portfolio/ui/home/widgets/header.dart';
import 'package:flutter_finance_portfolio/ui/home/widgets/nav_bar_bottom.dart';
import 'package:flutter_finance_portfolio/ui/home/widgets/portfolio/widgets/portfolio_section.dart';
import 'package:flutter_finance_portfolio/ui/home/widgets/watchlist_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Header(),
              // AvailableBalanceSection(),
              PortfolioSection(),
              // WatchlistSection(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: NavBarBottom(),
    );
  }
}
