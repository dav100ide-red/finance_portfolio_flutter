import 'package:flutter/material.dart';
import 'package:flutter_finance_portfolio/widgets/available_balance/available_balance_actions.dart';
import 'package:google_fonts/google_fonts.dart';

class AvailableBalanceSection extends StatelessWidget {
  const AvailableBalanceSection({super.key});

  @override
  Widget build(BuildContext context) {
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
            '\$112,550.00',
            style: GoogleFonts.poppins(
              fontSize: 34,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 10),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '\$110,000.52',
                  style: GoogleFonts.poppins(
                    color: Colors.black87,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                TextSpan(
                  text: '+15',
                  style: GoogleFonts.poppins(
                    color: Colors.green,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          AvailableBalanceActions(),
        ],
      ),
    );
  }
}
