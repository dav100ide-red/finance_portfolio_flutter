// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'available_balance_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AvailableBalanceModel {

 double get balance;
/// Create a copy of AvailableBalanceModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AvailableBalanceModelCopyWith<AvailableBalanceModel> get copyWith => _$AvailableBalanceModelCopyWithImpl<AvailableBalanceModel>(this as AvailableBalanceModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AvailableBalanceModel&&(identical(other.balance, balance) || other.balance == balance));
}


@override
int get hashCode => Object.hash(runtimeType,balance);

@override
String toString() {
  return 'AvailableBalanceModel(balance: $balance)';
}


}

/// @nodoc
abstract mixin class $AvailableBalanceModelCopyWith<$Res>  {
  factory $AvailableBalanceModelCopyWith(AvailableBalanceModel value, $Res Function(AvailableBalanceModel) _then) = _$AvailableBalanceModelCopyWithImpl;
@useResult
$Res call({
 double balance
});




}
/// @nodoc
class _$AvailableBalanceModelCopyWithImpl<$Res>
    implements $AvailableBalanceModelCopyWith<$Res> {
  _$AvailableBalanceModelCopyWithImpl(this._self, this._then);

  final AvailableBalanceModel _self;
  final $Res Function(AvailableBalanceModel) _then;

/// Create a copy of AvailableBalanceModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? balance = null,}) {
  return _then(_self.copyWith(
balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// @nodoc


class _AvailableBalanceModel extends AvailableBalanceModel {
  const _AvailableBalanceModel({required this.balance}): super._();
  

@override final  double balance;

/// Create a copy of AvailableBalanceModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AvailableBalanceModelCopyWith<_AvailableBalanceModel> get copyWith => __$AvailableBalanceModelCopyWithImpl<_AvailableBalanceModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AvailableBalanceModel&&(identical(other.balance, balance) || other.balance == balance));
}


@override
int get hashCode => Object.hash(runtimeType,balance);

@override
String toString() {
  return 'AvailableBalanceModel(balance: $balance)';
}


}

/// @nodoc
abstract mixin class _$AvailableBalanceModelCopyWith<$Res> implements $AvailableBalanceModelCopyWith<$Res> {
  factory _$AvailableBalanceModelCopyWith(_AvailableBalanceModel value, $Res Function(_AvailableBalanceModel) _then) = __$AvailableBalanceModelCopyWithImpl;
@override @useResult
$Res call({
 double balance
});




}
/// @nodoc
class __$AvailableBalanceModelCopyWithImpl<$Res>
    implements _$AvailableBalanceModelCopyWith<$Res> {
  __$AvailableBalanceModelCopyWithImpl(this._self, this._then);

  final _AvailableBalanceModel _self;
  final $Res Function(_AvailableBalanceModel) _then;

/// Create a copy of AvailableBalanceModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? balance = null,}) {
  return _then(_AvailableBalanceModel(
balance: null == balance ? _self.balance : balance // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
