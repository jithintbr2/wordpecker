// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'referral_earning_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReferralEarningModel _$ReferralEarningModelFromJson(Map<String, dynamic> json) {
  return _ReferralEarningModel.fromJson(json);
}

/// @nodoc
class _$ReferralEarningModelTearOff {
  const _$ReferralEarningModelTearOff();

  _ReferralEarningModel call(
      {required int id,
      required String customerName,
      required String joinedDate,
      required double earnings}) {
    return _ReferralEarningModel(
      id: id,
      customerName: customerName,
      joinedDate: joinedDate,
      earnings: earnings,
    );
  }

  ReferralEarningModel fromJson(Map<String, Object> json) {
    return ReferralEarningModel.fromJson(json);
  }
}

/// @nodoc
const $ReferralEarningModel = _$ReferralEarningModelTearOff();

/// @nodoc
mixin _$ReferralEarningModel {
  int get id => throw _privateConstructorUsedError;
  String get customerName => throw _privateConstructorUsedError;
  String get joinedDate => throw _privateConstructorUsedError;
  double get earnings => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReferralEarningModelCopyWith<ReferralEarningModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReferralEarningModelCopyWith<$Res> {
  factory $ReferralEarningModelCopyWith(ReferralEarningModel value,
          $Res Function(ReferralEarningModel) then) =
      _$ReferralEarningModelCopyWithImpl<$Res>;
  $Res call({int id, String customerName, String joinedDate, double earnings});
}

/// @nodoc
class _$ReferralEarningModelCopyWithImpl<$Res>
    implements $ReferralEarningModelCopyWith<$Res> {
  _$ReferralEarningModelCopyWithImpl(this._value, this._then);

  final ReferralEarningModel _value;
  // ignore: unused_field
  final $Res Function(ReferralEarningModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? customerName = freezed,
    Object? joinedDate = freezed,
    Object? earnings = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      customerName: customerName == freezed
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      joinedDate: joinedDate == freezed
          ? _value.joinedDate
          : joinedDate // ignore: cast_nullable_to_non_nullable
              as String,
      earnings: earnings == freezed
          ? _value.earnings
          : earnings // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$ReferralEarningModelCopyWith<$Res>
    implements $ReferralEarningModelCopyWith<$Res> {
  factory _$ReferralEarningModelCopyWith(_ReferralEarningModel value,
          $Res Function(_ReferralEarningModel) then) =
      __$ReferralEarningModelCopyWithImpl<$Res>;
  @override
  $Res call({int id, String customerName, String joinedDate, double earnings});
}

/// @nodoc
class __$ReferralEarningModelCopyWithImpl<$Res>
    extends _$ReferralEarningModelCopyWithImpl<$Res>
    implements _$ReferralEarningModelCopyWith<$Res> {
  __$ReferralEarningModelCopyWithImpl(
      _ReferralEarningModel _value, $Res Function(_ReferralEarningModel) _then)
      : super(_value, (v) => _then(v as _ReferralEarningModel));

  @override
  _ReferralEarningModel get _value => super._value as _ReferralEarningModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? customerName = freezed,
    Object? joinedDate = freezed,
    Object? earnings = freezed,
  }) {
    return _then(_ReferralEarningModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      customerName: customerName == freezed
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      joinedDate: joinedDate == freezed
          ? _value.joinedDate
          : joinedDate // ignore: cast_nullable_to_non_nullable
              as String,
      earnings: earnings == freezed
          ? _value.earnings
          : earnings // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReferralEarningModel implements _ReferralEarningModel {
  const _$_ReferralEarningModel(
      {required this.id,
      required this.customerName,
      required this.joinedDate,
      required this.earnings});

  factory _$_ReferralEarningModel.fromJson(Map<String, dynamic> json) =>
      _$_$_ReferralEarningModelFromJson(json);

  @override
  final int id;
  @override
  final String customerName;
  @override
  final String joinedDate;
  @override
  final double earnings;

  @override
  String toString() {
    return 'ReferralEarningModel(id: $id, customerName: $customerName, joinedDate: $joinedDate, earnings: $earnings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReferralEarningModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.customerName, customerName) ||
                const DeepCollectionEquality()
                    .equals(other.customerName, customerName)) &&
            (identical(other.joinedDate, joinedDate) ||
                const DeepCollectionEquality()
                    .equals(other.joinedDate, joinedDate)) &&
            (identical(other.earnings, earnings) ||
                const DeepCollectionEquality()
                    .equals(other.earnings, earnings)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(customerName) ^
      const DeepCollectionEquality().hash(joinedDate) ^
      const DeepCollectionEquality().hash(earnings);

  @JsonKey(ignore: true)
  @override
  _$ReferralEarningModelCopyWith<_ReferralEarningModel> get copyWith =>
      __$ReferralEarningModelCopyWithImpl<_ReferralEarningModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ReferralEarningModelToJson(this);
  }
}

abstract class _ReferralEarningModel implements ReferralEarningModel {
  const factory _ReferralEarningModel(
      {required int id,
      required String customerName,
      required String joinedDate,
      required double earnings}) = _$_ReferralEarningModel;

  factory _ReferralEarningModel.fromJson(Map<String, dynamic> json) =
      _$_ReferralEarningModel.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get customerName => throw _privateConstructorUsedError;
  @override
  String get joinedDate => throw _privateConstructorUsedError;
  @override
  double get earnings => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ReferralEarningModelCopyWith<_ReferralEarningModel> get copyWith =>
      throw _privateConstructorUsedError;
}
