import 'package:flutter_finance_portfolio/data/models/available_balance_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'available_balance_controller.g.dart';

/* controller (può essere o un provider semplice o un notifier) === modelView */
// in questo caso è un notifier pk, abbiamo metodi che aggiornano lo state dello UI.
@riverpod
class AvailableBalanceController extends _$AvailableBalanceController {
  @override
  AvailableBalanceModel build() {
    return AvailableBalanceModel(balance: 55.4);
  }

  // void increment() {
  //   state = state.copyWith(balance: state.balance + 1);
  // }

  void deposit(double amount) {
    state = state.copyWith(balance: state.balance + amount);
  }

  void withdraw(double amount) {
    state = state.copyWith(balance: state.balance - amount);
  }
}
