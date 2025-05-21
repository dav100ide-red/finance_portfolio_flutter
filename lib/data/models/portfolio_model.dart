import 'package:currency_formatter/currency_formatter.dart';
import 'package:flutter_finance_portfolio/data/models/holding_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'portfolio_model.freezed.dart';

@freezed
sealed class PortfolioModel with _$PortfolioModel {
  const PortfolioModel._();

  const factory PortfolioModel({required List<HoldingModel> holdings}) =
      _PortofolioModel;

  String get totalHoldingsInEuro {
    final double balance = holdings.fold(
      0,
      (sum, holding) => sum + (holding.quantity * holding.stock.currentPrice),
    );

    return CurrencyFormatter.format(balance, CurrencyFormat.fromSymbol('€')!);
  }
}
