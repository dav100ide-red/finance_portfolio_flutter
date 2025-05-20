import 'package:currency_formatter/currency_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_finance_portfolio/ui/home/available_balance/controllers/available_balance_controller.dart';
import 'package:flutter_finance_portfolio/ui/home/available_balance/widgets/available_balance_actions.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

class AvailableBalanceSection extends ConsumerWidget {
  const AvailableBalanceSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final availableBalance = ref.watch(availableBalanceControllerProvider);

    return Container(
      padding: const EdgeInsets.all(14),
      child: Column(
        children: [
          Text(
            'Availble Balance',
            style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            availableBalance.formattedBalance,
            style: GoogleFonts.poppins(
              fontSize: 34,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 10),
          // RichText(
          //   text: TextSpan(
          //     children: [
          //       TextSpan(
          //         text: '\$110,000.52',
          //         style: GoogleFonts.poppins(
          //           color: Colors.black87,
          //           fontSize: 14,
          //           fontWeight: FontWeight.w400,
          //         ),
          //       ),
          //       TextSpan(
          //         text: '+15',
          //         style: GoogleFonts.poppins(
          //           color: Colors.green,
          //           fontSize: 14,
          //           fontWeight: FontWeight.w400,
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          AvailableBalanceActions(),
        ],
      ),
    );
  }
}
