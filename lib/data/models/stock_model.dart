import 'package:currency_formatter/currency_formatter.dart';

class StockModel {
  final String symbol;
  final String name;
  final String logoUrl;
  final double currentPrice;
  final double changeValue;
  final double changePercent;

  StockModel({
    required this.symbol,
    required this.name,
    required this.logoUrl,
    required this.currentPrice,
    required this.changeValue,
    required this.changePercent,
  });

  String get formattedCurrentPrice {
    return CurrencyFormatter.format(
      currentPrice,
      CurrencyFormat.fromSymbol('€')!,
    );
  }

  String get changeValueAndPercent {
    return '${changeValue > 0 ? '+' : ''}$changeValue ($changePercent%)';
  }
}
