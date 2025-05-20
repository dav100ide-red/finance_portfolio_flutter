// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ui_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UiModel {

 UiScreen get activeScreen;
/// Create a copy of UiModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UiModelCopyWith<UiModel> get copyWith => _$UiModelCopyWithImpl<UiModel>(this as UiModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UiModel&&(identical(other.activeScreen, activeScreen) || other.activeScreen == activeScreen));
}


@override
int get hashCode => Object.hash(runtimeType,activeScreen);

@override
String toString() {
  return 'UiModel(activeScreen: $activeScreen)';
}


}

/// @nodoc
abstract mixin class $UiModelCopyWith<$Res>  {
  factory $UiModelCopyWith(UiModel value, $Res Function(UiModel) _then) = _$UiModelCopyWithImpl;
@useResult
$Res call({
 UiScreen activeScreen
});




}
/// @nodoc
class _$UiModelCopyWithImpl<$Res>
    implements $UiModelCopyWith<$Res> {
  _$UiModelCopyWithImpl(this._self, this._then);

  final UiModel _self;
  final $Res Function(UiModel) _then;

/// Create a copy of UiModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? activeScreen = null,}) {
  return _then(_self.copyWith(
activeScreen: null == activeScreen ? _self.activeScreen : activeScreen // ignore: cast_nullable_to_non_nullable
as UiScreen,
  ));
}

}


/// @nodoc


class _UiModel extends UiModel {
  const _UiModel({required this.activeScreen}): super._();
  

@override final  UiScreen activeScreen;

/// Create a copy of UiModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UiModelCopyWith<_UiModel> get copyWith => __$UiModelCopyWithImpl<_UiModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UiModel&&(identical(other.activeScreen, activeScreen) || other.activeScreen == activeScreen));
}


@override
int get hashCode => Object.hash(runtimeType,activeScreen);

@override
String toString() {
  return 'UiModel(activeScreen: $activeScreen)';
}


}

/// @nodoc
abstract mixin class _$UiModelCopyWith<$Res> implements $UiModelCopyWith<$Res> {
  factory _$UiModelCopyWith(_UiModel value, $Res Function(_UiModel) _then) = __$UiModelCopyWithImpl;
@override @useResult
$Res call({
 UiScreen activeScreen
});




}
/// @nodoc
class __$UiModelCopyWithImpl<$Res>
    implements _$UiModelCopyWith<$Res> {
  __$UiModelCopyWithImpl(this._self, this._then);

  final _UiModel _self;
  final $Res Function(_UiModel) _then;

/// Create a copy of UiModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? activeScreen = null,}) {
  return _then(_UiModel(
activeScreen: null == activeScreen ? _self.activeScreen : activeScreen // ignore: cast_nullable_to_non_nullable
as UiScreen,
  ));
}


}

// dart format on
