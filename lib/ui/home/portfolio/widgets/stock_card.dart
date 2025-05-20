import 'package:flutter/material.dart';
import 'package:flutter_finance_portfolio/data/models/holding_model.dart';
import 'package:flutter_finance_portfolio/data/models/stock_model.dart';
import 'package:flutter_finance_portfolio/utility/ultility.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class StockCard extends StatelessWidget {
  final HoldingModel holding;
  StockModel get stock {
    return holding.stock;
  }

  const StockCard({super.key, required this.holding});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      height: 148,
      width: 200,
      decoration: BoxDecoration(
        color: HexColor('#4c956c').withAlpha(40),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 24,
                backgroundImage: NetworkImage(stock.logoUrl),
              ),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    stock.symbol,
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    stock.name,
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            stock.formattedCurrentPrice,
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 6),
          Row(
            children: [
              Icon(
                stock.changeValue >= 0
                    ? Iconsax.arrow_up_2
                    : Iconsax.arrow_down_1,
                size: 18,
                color: stock.changeValue >= 0 ? Colors.green : Colors.red,
              ),
              const SizedBox(width: 4),
              Text(
                stock.changeValueAndPercent,
                style: GoogleFonts.poppins(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: stock.changeValue >= 0 ? Colors.green : Colors.red,
                ),
              ),
            ],
          ),
          Text(
            'Quantity: ${holding.quantity}',
            style: GoogleFonts.poppins(
              fontSize: 10,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
