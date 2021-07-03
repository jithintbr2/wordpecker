// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'referral_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReferralModel _$ReferralModelFromJson(Map<String, dynamic> json) {
  return _ReferralModel.fromJson(json);
}

/// @nodoc
class _$ReferralModelTearOff {
  const _$ReferralModelTearOff();

  _ReferralModel call(
      {required double walletBalance,
      required String referralLink,
      required String referralCode,
      required String conditionTitle,
      required List<String> conditions,
      required String shareMessage,
      required List<ReferralEarningModel> myEarnings}) {
    return _ReferralModel(
      walletBalance: walletBalance,
      referralLink: referralLink,
      referralCode: referralCode,
      conditionTitle: conditionTitle,
      conditions: conditions,
      shareMessage: shareMessage,
      myEarnings: myEarnings,
    );
  }

  ReferralModel fromJson(Map<String, Object> json) {
    return ReferralModel.fromJson(json);
  }
}

/// @nodoc
const $ReferralModel = _$ReferralModelTearOff();

/// @nodoc
mixin _$ReferralModel {
  double get walletBalance => throw _privateConstructorUsedError;
  String get referralLink => throw _privateConstructorUsedError;
  String get referralCode => throw _privateConstructorUsedError;
  String get conditionTitle => throw _privateConstructorUsedError;
  List<String> get conditions => throw _privateConstructorUsedError;
  String get shareMessage => throw _privateConstructorUsedError;
  List<ReferralEarningModel> get myEarnings =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReferralModelCopyWith<ReferralModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReferralModelCopyWith<$Res> {
  factory $ReferralModelCopyWith(
          ReferralModel value, $Res Function(ReferralModel) then) =
      _$ReferralModelCopyWithImpl<$Res>;
  $Res call(
      {double walletBalance,
      String referralLink,
      String referralCode,
      String conditionTitle,
      List<String> conditions,
      String shareMessage,
      List<ReferralEarningModel> myEarnings});
}

/// @nodoc
class _$ReferralModelCopyWithImpl<$Res>
    implements $ReferralModelCopyWith<$Res> {
  _$ReferralModelCopyWithImpl(this._value, this._then);

  final ReferralModel _value;
  // ignore: unused_field
  final $Res Function(ReferralModel) _then;

  @override
  $Res call({
    Object? walletBalance = freezed,
    Object? referralLink = freezed,
    Object? referralCode = freezed,
    Object? conditionTitle = freezed,
    Object? conditions = freezed,
    Object? shareMessage = freezed,
    Object? myEarnings = freezed,
  }) {
    return _then(_value.copyWith(
      walletBalance: walletBalance == freezed
          ? _value.walletBalance
          : walletBalance // ignore: cast_nullable_to_non_nullable
              as double,
      referralLink: referralLink == freezed
          ? _value.referralLink
          : referralLink // ignore: cast_nullable_to_non_nullable
              as String,
      referralCode: referralCode == freezed
          ? _value.referralCode
          : referralCode // ignore: cast_nullable_to_non_nullable
              as String,
      conditionTitle: conditionTitle == freezed
          ? _value.conditionTitle
          : conditionTitle // ignore: cast_nullable_to_non_nullable
              as String,
      conditions: conditions == freezed
          ? _value.conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      shareMessage: shareMessage == freezed
          ? _value.shareMessage
          : shareMessage // ignore: cast_nullable_to_non_nullable
              as String,
      myEarnings: myEarnings == freezed
          ? _value.myEarnings
          : myEarnings // ignore: cast_nullable_to_non_nullable
              as List<ReferralEarningModel>,
    ));
  }
}

/// @nodoc
abstract class _$ReferralModelCopyWith<$Res>
    implements $ReferralModelCopyWith<$Res> {
  factory _$ReferralModelCopyWith(
          _ReferralModel value, $Res Function(_ReferralModel) then) =
      __$ReferralModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {double walletBalance,
      String referralLink,
      String referralCode,
      String conditionTitle,
      List<String> conditions,
      String shareMessage,
      List<ReferralEarningModel> myEarnings});
}

/// @nodoc
class __$ReferralModelCopyWithImpl<$Res>
    extends _$ReferralModelCopyWithImpl<$Res>
    implements _$ReferralModelCopyWith<$Res> {
  __$ReferralModelCopyWithImpl(
      _ReferralModel _value, $Res Function(_ReferralModel) _then)
      : super(_value, (v) => _then(v as _ReferralModel));

  @override
  _ReferralModel get _value => super._value as _ReferralModel;

  @override
  $Res call({
    Object? walletBalance = freezed,
    Object? referralLink = freezed,
    Object? referralCode = freezed,
    Object? conditionTitle = freezed,
    Object? conditions = freezed,
    Object? shareMessage = freezed,
    Object? myEarnings = freezed,
  }) {
    return _then(_ReferralModel(
      walletBalance: walletBalance == freezed
          ? _value.walletBalance
          : walletBalance // ignore: cast_nullable_to_non_nullable
              as double,
      referralLink: referralLink == freezed
          ? _value.referralLink
          : referralLink // ignore: cast_nullable_to_non_nullable
              as String,
      referralCode: referralCode == freezed
          ? _value.referralCode
          : referralCode // ignore: cast_nullable_to_non_nullable
              as String,
      conditionTitle: conditionTitle == freezed
          ? _value.conditionTitle
          : conditionTitle // ignore: cast_nullable_to_non_nullable
              as String,
      conditions: conditions == freezed
          ? _value.conditions
          : conditions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      shareMessage: shareMessage == freezed
          ? _value.shareMessage
          : shareMessage // ignore: cast_nullable_to_non_nullable
              as String,
      myEarnings: myEarnings == freezed
          ? _value.myEarnings
          : myEarnings // ignore: cast_nullable_to_non_nullable
              as List<ReferralEarningModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReferralModel implements _ReferralModel {
  const _$_ReferralModel(
      {required this.walletBalance,
      required this.referralLink,
      required this.referralCode,
      required this.conditionTitle,
      required this.conditions,
      required this.shareMessage,
      required this.myEarnings});

  factory _$_ReferralModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ReferralModelFromJson(json);

  @override
  final double walletBalance;
  @override
  final String referralLink;
  @override
  final String referralCode;
  @override
  final String conditionTitle;
  @override
  final List<String> conditions;
  @override
  final String shareMessage;
  @override
  final List<ReferralEarningModel> myEarnings;

  @override
  String toString() {
    return 'ReferralModel(walletBalance: $walletBalance, referralLink: $referralLink, referralCode: $referralCode, conditionTitle: $conditionTitle, conditions: $conditions, shareMessage: $shareMessage, myEarnings: $myEarnings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReferralModel &&
            (identical(other.walletBalance, walletBalance) ||
                const DeepCollectionEquality()
                    .equals(other.walletBalance, walletBalance)) &&
            (identical(other.referralLink, referralLink) ||
                const DeepCollectionEquality()
                    .equals(other.referralLink, referralLink)) &&
            (identical(other.referralCode, referralCode) ||
                const DeepCollectionEquality()
                    .equals(other.referralCode, referralCode)) &&
            (identical(other.conditionTitle, conditionTitle) ||
                const DeepCollectionEquality()
                    .equals(other.conditionTitle, conditionTitle)) &&
            (identical(other.conditions, conditions) ||
                const DeepCollectionEquality()
                    .equals(other.conditions, conditions)) &&
            (identical(other.shareMessage, shareMessage) ||
                const DeepCollectionEquality()
                    .equals(other.shareMessage, shareMessage)) &&
            (identical(other.myEarnings, myEarnings) ||
                const DeepCollectionEquality()
                    .equals(other.myEarnings, myEarnings)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(walletBalance) ^
      const DeepCollectionEquality().hash(referralLink) ^
      const DeepCollectionEquality().hash(referralCode) ^
      const DeepCollectionEquality().hash(conditionTitle) ^
      const DeepCollectionEquality().hash(conditions) ^
      const DeepCollectionEquality().hash(shareMessage) ^
      const DeepCollectionEquality().hash(myEarnings);

  @JsonKey(ignore: true)
  @override
  _$ReferralModelCopyWith<_ReferralModel> get copyWith =>
      __$ReferralModelCopyWithImpl<_ReferralModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ReferralModelToJson(this);
  }
}

abstract class _ReferralModel implements ReferralModel {
  const factory _ReferralModel(
      {required double walletBalance,
      required String referralLink,
      required String referralCode,
      required String conditionTitle,
      required List<String> conditions,
      required String shareMessage,
      required List<ReferralEarningModel> myEarnings}) = _$_ReferralModel;

  factory _ReferralModel.fromJson(Map<String, dynamic> json) =
      _$_ReferralModel.fromJson;

  @override
  double get walletBalance => throw _privateConstructorUsedError;
  @override
  String get referralLink => throw _privateConstructorUsedError;
  @override
  String get referralCode => throw _privateConstructorUsedError;
  @override
  String get conditionTitle => throw _privateConstructorUsedError;
  @override
  List<String> get conditions => throw _privateConstructorUsedError;
  @override
  String get shareMessage => throw _privateConstructorUsedError;
  @override
  List<ReferralEarningModel> get myEarnings =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ReferralModelCopyWith<_ReferralModel> get copyWith =>
      throw _privateConstructorUsedError;
}
