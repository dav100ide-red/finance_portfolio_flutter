import 'package:flutter/material.dart';
import 'package:flutter_finance_portfolio/const.dart';
import 'package:flutter_finance_portfolio/data/models/ui_model.dart';
import 'package:flutter_finance_portfolio/ui/home/portfolio/controllers/portfolio_controller.dart';
import 'package:flutter_finance_portfolio/ui/home/portfolio/widgets/stock_card.dart';
import 'package:flutter_finance_portfolio/ui/ui_controller.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

class PortfolioSection extends ConsumerWidget {
  const PortfolioSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final portfolio = ref.watch(portfolioControllerProvider);
    final uiController = ref.read(uiControllerProvider.notifier);

    return Container(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Portfolio',
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              MaterialButton(
                onPressed: () {
                  uiController.setScreen(UiScreen.portfolio);
                },
                child: Text(
                  'View All',
                  style: GoogleFonts.poppins(
                    color: primaryColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 148,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 3,
              scrollDirection: Axis.horizontal,
              itemBuilder:
                  (context, index) => Container(
                    margin: EdgeInsets.only(right: 10),
                    child: StockCard(holding: portfolio.holdings[index]),
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
