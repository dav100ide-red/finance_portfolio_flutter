import 'package:flutter/material.dart';
import 'package:flutter_finance_portfolio/ui/shared/widgets/btn.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StockCardActions extends ConsumerWidget {
  const StockCardActions({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      spacing: 8,
      children: [
        Btn(label: 'Buy', height: 28, onPressed: () {}),
        Btn(
          label: 'Sell',
          height: 25,
          severity: BtnSeverity.secondary,
          onPressed: () {},
        ),
      ],
    );
  }
}
