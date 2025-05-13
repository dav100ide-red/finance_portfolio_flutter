import 'package:flutter/material.dart';
import 'package:flutter_finance_portfolio/const.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class AvailableBalanceActions extends StatelessWidget {
  const AvailableBalanceActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 20, bottom: 8),
      child: Row(
        children: [
          Expanded(
            child: MaterialButton(
              onPressed: () {},
              color: primaryColor,
              elevation: 0,
              focusElevation: 0,
              highlightElevation: 0,
              height: 58,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Iconsax.arrow_down_2, color: Colors.white),
                  const SizedBox(width: 8),
                  Text(
                    'Withdraw',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: MaterialButton(
              onPressed: () {},
              color: Colors.white,
              elevation: 0,
              focusElevation: 0,
              highlightElevation: 0,
              height: 58,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32),
                side: BorderSide(color: primaryColor),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Iconsax.arrow_down_2, color: primaryColor),
                  const SizedBox(width: 8),
                  Text(
                    'Deposit',
                    style: GoogleFonts.poppins(
                      color: primaryColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
