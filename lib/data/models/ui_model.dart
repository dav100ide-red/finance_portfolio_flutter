import 'package:freezed_annotation/freezed_annotation.dart';
part 'ui_model.freezed.dart';

enum UiScreen { home, portfolio, watchlist }

@freezed
sealed class UiModel with _$UiModel {
  const UiModel._();

  const factory UiModel({required UiScreen activeScreen}) = _UiModel;
}
