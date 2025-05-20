import 'package:flutter_finance_portfolio/data/models/portfolio_model.dart';
import 'package:flutter_finance_portfolio/mock/stock_holdings.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'portfolio_controller.g.dart';

@riverpod
class PortfolioController extends _$PortfolioController {
  @override
  PortfolioModel build() {
    return PortfolioModel(holdings: stockHoldings);
  }

  void sellHolding() {}

  void buyHolding() {}
}
