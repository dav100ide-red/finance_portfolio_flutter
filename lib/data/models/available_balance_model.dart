import 'package:currency_formatter/currency_formatter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'available_balance_model.freezed.dart';

@freezed
sealed class AvailableBalanceModel with _$AvailableBalanceModel {
  const AvailableBalanceModel._();

  const factory AvailableBalanceModel({required double balance}) =
      _AvailableBalanceModel;

  String get formattedBalance {
    return CurrencyFormatter.format(balance, CurrencyFormat.fromSymbol('€')!);
  }
}
