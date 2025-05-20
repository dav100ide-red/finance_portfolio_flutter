import 'package:flutter_finance_portfolio/data/models/ui_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ui_controller.g.dart';

@riverpod
class UiController extends _$UiController {
  @override
  UiModel build() {
    return UiModel(activeScreen: UiScreen.portfolio);
  }

  void setScreen(UiScreen screen) {
    state = state.copyWith(activeScreen: screen);
  }
}
