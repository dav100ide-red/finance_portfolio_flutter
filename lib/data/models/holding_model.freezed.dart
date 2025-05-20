// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'holding_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HoldingModel {

 int get quantity; StockModel get stock;
/// Create a copy of HoldingModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HoldingModelCopyWith<HoldingModel> get copyWith => _$HoldingModelCopyWithImpl<HoldingModel>(this as HoldingModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HoldingModel&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.stock, stock) || other.stock == stock));
}


@override
int get hashCode => Object.hash(runtimeType,quantity,stock);

@override
String toString() {
  return 'HoldingModel(quantity: $quantity, stock: $stock)';
}


}

/// @nodoc
abstract mixin class $HoldingModelCopyWith<$Res>  {
  factory $HoldingModelCopyWith(HoldingModel value, $Res Function(HoldingModel) _then) = _$HoldingModelCopyWithImpl;
@useResult
$Res call({
 int quantity, StockModel stock
});




}
/// @nodoc
class _$HoldingModelCopyWithImpl<$Res>
    implements $HoldingModelCopyWith<$Res> {
  _$HoldingModelCopyWithImpl(this._self, this._then);

  final HoldingModel _self;
  final $Res Function(HoldingModel) _then;

/// Create a copy of HoldingModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? quantity = null,Object? stock = null,}) {
  return _then(_self.copyWith(
quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,stock: null == stock ? _self.stock : stock // ignore: cast_nullable_to_non_nullable
as StockModel,
  ));
}

}


/// @nodoc


class _HoldingModel extends HoldingModel {
  const _HoldingModel({required this.quantity, required this.stock}): super._();
  

@override final  int quantity;
@override final  StockModel stock;

/// Create a copy of HoldingModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HoldingModelCopyWith<_HoldingModel> get copyWith => __$HoldingModelCopyWithImpl<_HoldingModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HoldingModel&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.stock, stock) || other.stock == stock));
}


@override
int get hashCode => Object.hash(runtimeType,quantity,stock);

@override
String toString() {
  return 'HoldingModel(quantity: $quantity, stock: $stock)';
}


}

/// @nodoc
abstract mixin class _$HoldingModelCopyWith<$Res> implements $HoldingModelCopyWith<$Res> {
  factory _$HoldingModelCopyWith(_HoldingModel value, $Res Function(_HoldingModel) _then) = __$HoldingModelCopyWithImpl;
@override @useResult
$Res call({
 int quantity, StockModel stock
});




}
/// @nodoc
class __$HoldingModelCopyWithImpl<$Res>
    implements _$HoldingModelCopyWith<$Res> {
  __$HoldingModelCopyWithImpl(this._self, this._then);

  final _HoldingModel _self;
  final $Res Function(_HoldingModel) _then;

/// Create a copy of HoldingModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? quantity = null,Object? stock = null,}) {
  return _then(_HoldingModel(
quantity: null == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int,stock: null == stock ? _self.stock : stock // ignore: cast_nullable_to_non_nullable
as StockModel,
  ));
}


}

// dart format on
