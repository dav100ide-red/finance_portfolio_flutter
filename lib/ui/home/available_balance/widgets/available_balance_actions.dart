import 'package:flutter/material.dart';
import 'package:flutter_finance_portfolio/ui/home/available_balance/widgets/deposit_form.dart';
import 'package:flutter_finance_portfolio/ui/home/available_balance/widgets/withdraw_form.dart';
import 'package:flutter_finance_portfolio/ui/shared/widgets/btn.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconsax/iconsax.dart';

class AvailableBalanceActions extends ConsumerWidget {
  const AvailableBalanceActions({super.key});

  void _handleDepositPress(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (context) {
        return DepositForm();
      },
    );
  }

  void _handleWithdrawPress(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (context) {
        return WithDrawForm();
      },
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 20, bottom: 8),
      child: Row(
        children: [
          Expanded(
            child: Btn(
              label: 'Withdraw',
              onPressed: () {
                _handleWithdrawPress(context);
              },
              icon: Iconsax.arrow_up_2,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Btn(
              label: 'Deposit',
              onPressed: () {
                _handleDepositPress(context);
              },
              severity: BtnSeverity.secondary,
              icon: Iconsax.arrow_down_1,
            ),
          ),
        ],
      ),
    );
  }
}
