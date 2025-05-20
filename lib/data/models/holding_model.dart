import 'package:flutter_finance_portfolio/data/models/stock_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'holding_model.freezed.dart';

@freezed
sealed class HoldingModel with _$HoldingModel {
  const HoldingModel._();

  const factory HoldingModel({
    required int quantity,
    required StockModel stock,
  }) = _HoldingModel;
}
