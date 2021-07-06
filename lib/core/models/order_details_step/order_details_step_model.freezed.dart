// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'order_details_step_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderDetailStepModel _$OrderDetailStepModelFromJson(Map<String, dynamic> json) {
  return _OrderDetailStepModel.fromJson(json);
}

/// @nodoc
class _$OrderDetailStepModelTearOff {
  const _$OrderDetailStepModelTearOff();

  _OrderDetailStepModel call(
      {required int step,
      required String key,
      required String status,
      required bool completed,
      required String statusTime}) {
    return _OrderDetailStepModel(
      step: step,
      key: key,
      status: status,
      completed: completed,
      statusTime: statusTime,
    );
  }

  OrderDetailStepModel fromJson(Map<String, Object> json) {
    return OrderDetailStepModel.fromJson(json);
  }
}

/// @nodoc
const $OrderDetailStepModel = _$OrderDetailStepModelTearOff();

/// @nodoc
mixin _$OrderDetailStepModel {
  int get step => throw _privateConstructorUsedError;
  String get key => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  bool get completed => throw _privateConstructorUsedError;
  String get statusTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderDetailStepModelCopyWith<OrderDetailStepModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderDetailStepModelCopyWith<$Res> {
  factory $OrderDetailStepModelCopyWith(OrderDetailStepModel value,
          $Res Function(OrderDetailStepModel) then) =
      _$OrderDetailStepModelCopyWithImpl<$Res>;
  $Res call(
      {int step, String key, String status, bool completed, String statusTime});
}

/// @nodoc
class _$OrderDetailStepModelCopyWithImpl<$Res>
    implements $OrderDetailStepModelCopyWith<$Res> {
  _$OrderDetailStepModelCopyWithImpl(this._value, this._then);

  final OrderDetailStepModel _value;
  // ignore: unused_field
  final $Res Function(OrderDetailStepModel) _then;

  @override
  $Res call({
    Object? step = freezed,
    Object? key = freezed,
    Object? status = freezed,
    Object? completed = freezed,
    Object? statusTime = freezed,
  }) {
    return _then(_value.copyWith(
      step: step == freezed
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as int,
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      completed: completed == freezed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
      statusTime: statusTime == freezed
          ? _value.statusTime
          : statusTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$OrderDetailStepModelCopyWith<$Res>
    implements $OrderDetailStepModelCopyWith<$Res> {
  factory _$OrderDetailStepModelCopyWith(_OrderDetailStepModel value,
          $Res Function(_OrderDetailStepModel) then) =
      __$OrderDetailStepModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int step, String key, String status, bool completed, String statusTime});
}

/// @nodoc
class __$OrderDetailStepModelCopyWithImpl<$Res>
    extends _$OrderDetailStepModelCopyWithImpl<$Res>
    implements _$OrderDetailStepModelCopyWith<$Res> {
  __$OrderDetailStepModelCopyWithImpl(
      _OrderDetailStepModel _value, $Res Function(_OrderDetailStepModel) _then)
      : super(_value, (v) => _then(v as _OrderDetailStepModel));

  @override
  _OrderDetailStepModel get _value => super._value as _OrderDetailStepModel;

  @override
  $Res call({
    Object? step = freezed,
    Object? key = freezed,
    Object? status = freezed,
    Object? completed = freezed,
    Object? statusTime = freezed,
  }) {
    return _then(_OrderDetailStepModel(
      step: step == freezed
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as int,
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      completed: completed == freezed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
      statusTime: statusTime == freezed
          ? _value.statusTime
          : statusTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderDetailStepModel implements _OrderDetailStepModel {
  const _$_OrderDetailStepModel(
      {required this.step,
      required this.key,
      required this.status,
      required this.completed,
      required this.statusTime});

  factory _$_OrderDetailStepModel.fromJson(Map<String, dynamic> json) =>
      _$_$_OrderDetailStepModelFromJson(json);

  @override
  final int step;
  @override
  final String key;
  @override
  final String status;
  @override
  final bool completed;
  @override
  final String statusTime;

  @override
  String toString() {
    return 'OrderDetailStepModel(step: $step, key: $key, status: $status, completed: $completed, statusTime: $statusTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _OrderDetailStepModel &&
            (identical(other.step, step) ||
                const DeepCollectionEquality().equals(other.step, step)) &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.completed, completed) ||
                const DeepCollectionEquality()
                    .equals(other.completed, completed)) &&
            (identical(other.statusTime, statusTime) ||
                const DeepCollectionEquality()
                    .equals(other.statusTime, statusTime)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(step) ^
      const DeepCollectionEquality().hash(key) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(completed) ^
      const DeepCollectionEquality().hash(statusTime);

  @JsonKey(ignore: true)
  @override
  _$OrderDetailStepModelCopyWith<_OrderDetailStepModel> get copyWith =>
      __$OrderDetailStepModelCopyWithImpl<_OrderDetailStepModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_OrderDetailStepModelToJson(this);
  }
}

abstract class _OrderDetailStepModel implements OrderDetailStepModel {
  const factory _OrderDetailStepModel(
      {required int step,
      required String key,
      required String status,
      required bool completed,
      required String statusTime}) = _$_OrderDetailStepModel;

  factory _OrderDetailStepModel.fromJson(Map<String, dynamic> json) =
      _$_OrderDetailStepModel.fromJson;

  @override
  int get step => throw _privateConstructorUsedError;
  @override
  String get key => throw _privateConstructorUsedError;
  @override
  String get status => throw _privateConstructorUsedError;
  @override
  bool get completed => throw _privateConstructorUsedError;
  @override
  String get statusTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$OrderDetailStepModelCopyWith<_OrderDetailStepModel> get copyWith =>
      throw _privateConstructorUsedError;
}
