import 'package:flutter_finance_portfolio/ui/home/portfolio/controllers/portfolio_controller.dart';
import 'package:flutter_finance_portfolio/ui/home/portfolio/widgets/stock_card.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PortfolioScreen extends ConsumerWidget {
  const PortfolioScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final portfolio = ref.watch(portfolioControllerProvider);

    return Container(
      height: 500,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Portfolio',
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 15),
          Expanded(
            child: ListView.builder(
              itemCount: portfolio.holdings.length,
              itemBuilder: (context, index) {
                final holding = portfolio.holdings[index];
                return Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  child: StockCard(holding: holding),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
