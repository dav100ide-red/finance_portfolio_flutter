import 'package:flutter/material.dart';
import 'package:flutter_finance_portfolio/data/models/holding_model.dart';
import 'package:flutter_finance_portfolio/ui/home/portfolio/widgets/sell_holding_form.dart';
import 'package:flutter_finance_portfolio/ui/shared/widgets/btn.dart';

class StockCardActions extends StatelessWidget {
  const StockCardActions({super.key, required this.holding});
  final HoldingModel holding;

  void _handleBuyPress(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (context) {
        return Text('data');
      },
    );
  }

  void _handleSellPress(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (context) {
        return SellHoldingForm(holding: holding);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 8,
      children: [
        Btn(
          label: 'Buy',
          height: 28,
          onPressed: () {
            _handleBuyPress(context);
          },
        ),
        Btn(
          label: 'Sell',
          height: 25,
          severity: BtnSeverity.secondary,
          onPressed: () {
            _handleSellPress(context);
          },
        ),
      ],
    );
  }
}
