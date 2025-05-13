import 'package:flutter/material.dart';
import 'package:flutter_finance_portfolio/widgets/available_balance/available_balance_section.dart';
import 'package:flutter_finance_portfolio/widgets/nav_bar_bottom.dart';

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
              AvailableBalanceSection(),
              // PortfolioSection(),
              // WatchlistSection(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: NavBarBottom(),
    );
  }
}
