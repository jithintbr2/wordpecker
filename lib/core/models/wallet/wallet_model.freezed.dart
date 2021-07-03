// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'wallet_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WalletModel _$WalletModelFromJson(Map<String, dynamic> json) {
  return _WalletModel.fromJson(json);
}

/// @nodoc
class _$WalletModelTearOff {
  const _$WalletModelTearOff();

  _WalletModel call(
      {@JsonKey(name: "wallet_balance")
          required double walletBalance,
      @JsonKey(name: "reward_details")
          required List<WalletRewardModel> rewardDetails}) {
    return _WalletModel(
      walletBalance: walletBalance,
      rewardDetails: rewardDetails,
    );
  }

  WalletModel fromJson(Map<String, Object> json) {
    return WalletModel.fromJson(json);
  }
}

/// @nodoc
const $WalletModel = _$WalletModelTearOff();

/// @nodoc
mixin _$WalletModel {
  @JsonKey(name: "wallet_balance")
  double get walletBalance => throw _privateConstructorUsedError;
  @JsonKey(name: "reward_details")
  List<WalletRewardModel> get rewardDetails =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WalletModelCopyWith<WalletModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletModelCopyWith<$Res> {
  factory $WalletModelCopyWith(
          WalletModel value, $Res Function(WalletModel) then) =
      _$WalletModelCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "wallet_balance") double walletBalance,
      @JsonKey(name: "reward_details") List<WalletRewardModel> rewardDetails});
}

/// @nodoc
class _$WalletModelCopyWithImpl<$Res> implements $WalletModelCopyWith<$Res> {
  _$WalletModelCopyWithImpl(this._value, this._then);

  final WalletModel _value;
  // ignore: unused_field
  final $Res Function(WalletModel) _then;

  @override
  $Res call({
    Object? walletBalance = freezed,
    Object? rewardDetails = freezed,
  }) {
    return _then(_value.copyWith(
      walletBalance: walletBalance == freezed
          ? _value.walletBalance
          : walletBalance // ignore: cast_nullable_to_non_nullable
              as double,
      rewardDetails: rewardDetails == freezed
          ? _value.rewardDetails
          : rewardDetails // ignore: cast_nullable_to_non_nullable
              as List<WalletRewardModel>,
    ));
  }
}

/// @nodoc
abstract class _$WalletModelCopyWith<$Res>
    implements $WalletModelCopyWith<$Res> {
  factory _$WalletModelCopyWith(
          _WalletModel value, $Res Function(_WalletModel) then) =
      __$WalletModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "wallet_balance") double walletBalance,
      @JsonKey(name: "reward_details") List<WalletRewardModel> rewardDetails});
}

/// @nodoc
class __$WalletModelCopyWithImpl<$Res> extends _$WalletModelCopyWithImpl<$Res>
    implements _$WalletModelCopyWith<$Res> {
  __$WalletModelCopyWithImpl(
      _WalletModel _value, $Res Function(_WalletModel) _then)
      : super(_value, (v) => _then(v as _WalletModel));

  @override
  _WalletModel get _value => super._value as _WalletModel;

  @override
  $Res call({
    Object? walletBalance = freezed,
    Object? rewardDetails = freezed,
  }) {
    return _then(_WalletModel(
      walletBalance: walletBalance == freezed
          ? _value.walletBalance
          : walletBalance // ignore: cast_nullable_to_non_nullable
              as double,
      rewardDetails: rewardDetails == freezed
          ? _value.rewardDetails
          : rewardDetails // ignore: cast_nullable_to_non_nullable
              as List<WalletRewardModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WalletModel implements _WalletModel {
  const _$_WalletModel(
      {@JsonKey(name: "wallet_balance") required this.walletBalance,
      @JsonKey(name: "reward_details") required this.rewardDetails});

  factory _$_WalletModel.fromJson(Map<String, dynamic> json) =>
      _$_$_WalletModelFromJson(json);

  @override
  @JsonKey(name: "wallet_balance")
  final double walletBalance;
  @override
  @JsonKey(name: "reward_details")
  final List<WalletRewardModel> rewardDetails;

  @override
  String toString() {
    return 'WalletModel(walletBalance: $walletBalance, rewardDetails: $rewardDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WalletModel &&
            (identical(other.walletBalance, walletBalance) ||
                const DeepCollectionEquality()
                    .equals(other.walletBalance, walletBalance)) &&
            (identical(other.rewardDetails, rewardDetails) ||
                const DeepCollectionEquality()
                    .equals(other.rewardDetails, rewardDetails)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(walletBalance) ^
      const DeepCollectionEquality().hash(rewardDetails);

  @JsonKey(ignore: true)
  @override
  _$WalletModelCopyWith<_WalletModel> get copyWith =>
      __$WalletModelCopyWithImpl<_WalletModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_WalletModelToJson(this);
  }
}

abstract class _WalletModel implements WalletModel {
  const factory _WalletModel(
      {@JsonKey(name: "wallet_balance")
          required double walletBalance,
      @JsonKey(name: "reward_details")
          required List<WalletRewardModel> rewardDetails}) = _$_WalletModel;

  factory _WalletModel.fromJson(Map<String, dynamic> json) =
      _$_WalletModel.fromJson;

  @override
  @JsonKey(name: "wallet_balance")
  double get walletBalance => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "reward_details")
  List<WalletRewardModel> get rewardDetails =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WalletModelCopyWith<_WalletModel> get copyWith =>
      throw _privateConstructorUsedError;
}
