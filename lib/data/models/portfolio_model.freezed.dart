// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'portfolio_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PortfolioModel {

 List<HoldingModel> get holdings;
/// Create a copy of PortfolioModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PortfolioModelCopyWith<PortfolioModel> get copyWith => _$PortfolioModelCopyWithImpl<PortfolioModel>(this as PortfolioModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PortfolioModel&&const DeepCollectionEquality().equals(other.holdings, holdings));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(holdings));

@override
String toString() {
  return 'PortfolioModel(holdings: $holdings)';
}


}

/// @nodoc
abstract mixin class $PortfolioModelCopyWith<$Res>  {
  factory $PortfolioModelCopyWith(PortfolioModel value, $Res Function(PortfolioModel) _then) = _$PortfolioModelCopyWithImpl;
@useResult
$Res call({
 List<HoldingModel> holdings
});




}
/// @nodoc
class _$PortfolioModelCopyWithImpl<$Res>
    implements $PortfolioModelCopyWith<$Res> {
  _$PortfolioModelCopyWithImpl(this._self, this._then);

  final PortfolioModel _self;
  final $Res Function(PortfolioModel) _then;

/// Create a copy of PortfolioModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? holdings = null,}) {
  return _then(_self.copyWith(
holdings: null == holdings ? _self.holdings : holdings // ignore: cast_nullable_to_non_nullable
as List<HoldingModel>,
  ));
}

}


/// @nodoc


class _PortofolioModel extends PortfolioModel {
  const _PortofolioModel({required final  List<HoldingModel> holdings}): _holdings = holdings,super._();
  

 final  List<HoldingModel> _holdings;
@override List<HoldingModel> get holdings {
  if (_holdings is EqualUnmodifiableListView) return _holdings;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_holdings);
}


/// Create a copy of PortfolioModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PortofolioModelCopyWith<_PortofolioModel> get copyWith => __$PortofolioModelCopyWithImpl<_PortofolioModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PortofolioModel&&const DeepCollectionEquality().equals(other._holdings, _holdings));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_holdings));

@override
String toString() {
  return 'PortfolioModel(holdings: $holdings)';
}


}

/// @nodoc
abstract mixin class _$PortofolioModelCopyWith<$Res> implements $PortfolioModelCopyWith<$Res> {
  factory _$PortofolioModelCopyWith(_PortofolioModel value, $Res Function(_PortofolioModel) _then) = __$PortofolioModelCopyWithImpl;
@override @useResult
$Res call({
 List<HoldingModel> holdings
});




}
/// @nodoc
class __$PortofolioModelCopyWithImpl<$Res>
    implements _$PortofolioModelCopyWith<$Res> {
  __$PortofolioModelCopyWithImpl(this._self, this._then);

  final _PortofolioModel _self;
  final $Res Function(_PortofolioModel) _then;

/// Create a copy of PortfolioModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? holdings = null,}) {
  return _then(_PortofolioModel(
holdings: null == holdings ? _self._holdings : holdings // ignore: cast_nullable_to_non_nullable
as List<HoldingModel>,
  ));
}


}

// dart format on
