import 'package:flutter_finance_portfolio/data/models/holding_model.dart';
import 'package:flutter_finance_portfolio/data/models/stock_model.dart';

final List<HoldingModel> stockHoldings = [
  HoldingModel(
    quantity: 3,
    stock: StockModel(
      symbol: 'AAPL',
      name: 'Apple Inc.',
      logoUrl: 'https://logo.clearbit.com/apple.com',
      currentPrice: 175.64,
      changeValue: 2.31,
      changePercent: 1.33,
    ),
  ),
  HoldingModel(
    quantity: 5,
    stock: StockModel(
      symbol: 'GOOGL',
      name: 'Alphabet Inc.',
      logoUrl: 'https://logo.clearbit.com/abc.xyz',
      currentPrice: 134.12,
      changeValue: -1.54,
      changePercent: -1.13,
    ),
  ),
  HoldingModel(
    quantity: 2,
    stock: StockModel(
      symbol: 'MSFT',
      name: 'Microsoft Corp.',
      logoUrl: 'https://logo.clearbit.com/microsoft.com',
      currentPrice: 310.22,
      changeValue: 3.10,
      changePercent: 1.01,
    ),
  ),
  HoldingModel(
    quantity: 7,
    stock: StockModel(
      symbol: 'TSLA',
      name: 'Tesla Inc.',
      logoUrl: 'https://logo.clearbit.com/tesla.com',
      currentPrice: 192.43,
      changeValue: -4.50,
      changePercent: -2.29,
    ),
  ),
  HoldingModel(
    quantity: 1,
    stock: StockModel(
      symbol: 'NFLX',
      name: 'Netflix Inc.',
      logoUrl: 'https://logo.clearbit.com/netflix.com',
      currentPrice: 402.31,
      changeValue: 5.21,
      changePercent: 1.31,
    ),
  ),
];
