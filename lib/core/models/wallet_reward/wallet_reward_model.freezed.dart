// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'wallet_reward_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WalletRewardModel _$WalletRewardModelFromJson(Map<String, dynamic> json) {
  return _WalletRewardModel.fromJson(json);
}

/// @nodoc
class _$WalletRewardModelTearOff {
  const _$WalletRewardModelTearOff();

  _WalletRewardModel call(
      {required int id,
      required int point,
      required String dateCreate,
      required String description,
      required bool isOpen,
      required bool scratched}) {
    return _WalletRewardModel(
      id: id,
      point: point,
      dateCreate: dateCreate,
      description: description,
      isOpen: isOpen,
      scratched: scratched,
    );
  }

  WalletRewardModel fromJson(Map<String, Object> json) {
    return WalletRewardModel.fromJson(json);
  }
}

/// @nodoc
const $WalletRewardModel = _$WalletRewardModelTearOff();

/// @nodoc
mixin _$WalletRewardModel {
  int get id => throw _privateConstructorUsedError;
  int get point => throw _privateConstructorUsedError;
  String get dateCreate => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  bool get isOpen => throw _privateConstructorUsedError;
  bool get scratched => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WalletRewardModelCopyWith<WalletRewardModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletRewardModelCopyWith<$Res> {
  factory $WalletRewardModelCopyWith(
          WalletRewardModel value, $Res Function(WalletRewardModel) then) =
      _$WalletRewardModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      int point,
      String dateCreate,
      String description,
      bool isOpen,
      bool scratched});
}

/// @nodoc
class _$WalletRewardModelCopyWithImpl<$Res>
    implements $WalletRewardModelCopyWith<$Res> {
  _$WalletRewardModelCopyWithImpl(this._value, this._then);

  final WalletRewardModel _value;
  // ignore: unused_field
  final $Res Function(WalletRewardModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? point = freezed,
    Object? dateCreate = freezed,
    Object? description = freezed,
    Object? isOpen = freezed,
    Object? scratched = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      point: point == freezed
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as int,
      dateCreate: dateCreate == freezed
          ? _value.dateCreate
          : dateCreate // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isOpen: isOpen == freezed
          ? _value.isOpen
          : isOpen // ignore: cast_nullable_to_non_nullable
              as bool,
      scratched: scratched == freezed
          ? _value.scratched
          : scratched // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$WalletRewardModelCopyWith<$Res>
    implements $WalletRewardModelCopyWith<$Res> {
  factory _$WalletRewardModelCopyWith(
          _WalletRewardModel value, $Res Function(_WalletRewardModel) then) =
      __$WalletRewardModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      int point,
      String dateCreate,
      String description,
      bool isOpen,
      bool scratched});
}

/// @nodoc
class __$WalletRewardModelCopyWithImpl<$Res>
    extends _$WalletRewardModelCopyWithImpl<$Res>
    implements _$WalletRewardModelCopyWith<$Res> {
  __$WalletRewardModelCopyWithImpl(
      _WalletRewardModel _value, $Res Function(_WalletRewardModel) _then)
      : super(_value, (v) => _then(v as _WalletRewardModel));

  @override
  _WalletRewardModel get _value => super._value as _WalletRewardModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? point = freezed,
    Object? dateCreate = freezed,
    Object? description = freezed,
    Object? isOpen = freezed,
    Object? scratched = freezed,
  }) {
    return _then(_WalletRewardModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      point: point == freezed
          ? _value.point
          : point // ignore: cast_nullable_to_non_nullable
              as int,
      dateCreate: dateCreate == freezed
          ? _value.dateCreate
          : dateCreate // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isOpen: isOpen == freezed
          ? _value.isOpen
          : isOpen // ignore: cast_nullable_to_non_nullable
              as bool,
      scratched: scratched == freezed
          ? _value.scratched
          : scratched // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WalletRewardModel implements _WalletRewardModel {
  const _$_WalletRewardModel(
      {required this.id,
      required this.point,
      required this.dateCreate,
      required this.description,
      required this.isOpen,
      required this.scratched});

  factory _$_WalletRewardModel.fromJson(Map<String, dynamic> json) =>
      _$_$_WalletRewardModelFromJson(json);

  @override
  final int id;
  @override
  final int point;
  @override
  final String dateCreate;
  @override
  final String description;
  @override
  final bool isOpen;
  @override
  final bool scratched;

  @override
  String toString() {
    return 'WalletRewardModel(id: $id, point: $point, dateCreate: $dateCreate, description: $description, isOpen: $isOpen, scratched: $scratched)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WalletRewardModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.point, point) ||
                const DeepCollectionEquality().equals(other.point, point)) &&
            (identical(other.dateCreate, dateCreate) ||
                const DeepCollectionEquality()
                    .equals(other.dateCreate, dateCreate)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.isOpen, isOpen) ||
                const DeepCollectionEquality().equals(other.isOpen, isOpen)) &&
            (identical(other.scratched, scratched) ||
                const DeepCollectionEquality()
                    .equals(other.scratched, scratched)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(point) ^
      const DeepCollectionEquality().hash(dateCreate) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(isOpen) ^
      const DeepCollectionEquality().hash(scratched);

  @JsonKey(ignore: true)
  @override
  _$WalletRewardModelCopyWith<_WalletRewardModel> get copyWith =>
      __$WalletRewardModelCopyWithImpl<_WalletRewardModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_WalletRewardModelToJson(this);
  }
}

abstract class _WalletRewardModel implements WalletRewardModel {
  const factory _WalletRewardModel(
      {required int id,
      required int point,
      required String dateCreate,
      required String description,
      required bool isOpen,
      required bool scratched}) = _$_WalletRewardModel;

  factory _WalletRewardModel.fromJson(Map<String, dynamic> json) =
      _$_WalletRewardModel.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  int get point => throw _privateConstructorUsedError;
  @override
  String get dateCreate => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  bool get isOpen => throw _privateConstructorUsedError;
  @override
  bool get scratched => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WalletRewardModelCopyWith<_WalletRewardModel> get copyWith =>
      throw _privateConstructorUsedError;
}
