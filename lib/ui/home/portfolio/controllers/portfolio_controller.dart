import 'package:flutter_finance_portfolio/data/models/holding_model.dart';
import 'package:flutter_finance_portfolio/data/models/portfolio_model.dart';
import 'package:flutter_finance_portfolio/mock/stock_holdings.dart';
import 'package:flutter_finance_portfolio/ui/home/available_balance/controllers/available_balance_controller.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'portfolio_controller.g.dart';

@riverpod
class PortfolioController extends _$PortfolioController {
  @override
  PortfolioModel build() {
    return PortfolioModel(holdings: stockHoldings);
  }

  void sellHolding(int quantity, HoldingModel holding) {
    final balanceController = ref.read(
      availableBalanceControllerProvider.notifier,
    );

    final index = state.holdings.indexWhere(
      (h) => h.stock.symbol == holding.stock.symbol,
    );

    if (index == -1) return;

    final currentHolding = state.holdings[index];

    if (currentHolding.quantity < quantity) {
      throw Exception('Trying to sell more than you own');
    }

    final updatedHoldings = [...state.holdings];

    if (currentHolding.quantity == quantity) {
      updatedHoldings.removeAt(index);
    } else {
      updatedHoldings[index] = currentHolding.copyWith(
        quantity: currentHolding.quantity - quantity,
      );
    }

    final cashToAdd = currentHolding.stock.currentPrice * quantity;
    balanceController.add(cashToAdd);

    state = state.copyWith(holdings: updatedHoldings);
  }

  void buyHolding(int quantity, HoldingModel holding) {
    final balanceController = ref.read(
      availableBalanceControllerProvider.notifier,
    );

    final cost = holding.stock.currentPrice * quantity;
    final availableBalance = ref.read(availableBalanceControllerProvider);

    if (availableBalance.balance < cost) {
      throw Exception('Insufficient balance to complete the purchase');
    }

    final index = state.holdings.indexWhere(
      (h) => h.stock.symbol == holding.stock.symbol,
    );

    final updatedHoldings = [...state.holdings];

    if (index == -1) {
      updatedHoldings.add(holding.copyWith(quantity: quantity));
    } else {
      final currentHolding = state.holdings[index];
      updatedHoldings[index] = currentHolding.copyWith(
        quantity: currentHolding.quantity + quantity,
      );
    }

    balanceController.subtract(cost);

    state = state.copyWith(holdings: updatedHoldings);
  }
}
