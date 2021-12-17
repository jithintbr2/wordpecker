// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'request_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RequestItemModel _$RequestItemModelFromJson(Map<String, dynamic> json) {
  return _RequestItemModel.fromJson(json);
}

/// @nodoc
class _$RequestItemModelTearOff {
  const _$RequestItemModelTearOff();

  _RequestItemModel call(
      {required int request_id,
      required String request_date,
      required String request_time,
      required String status,
      required bool completed,
      required int items}) {
    return _RequestItemModel(
      request_id: request_id,
      request_date: request_date,
      request_time: request_time,
      status: status,
      completed: completed,
      items: items,
    );
  }

  RequestItemModel fromJson(Map<String, Object> json) {
    return RequestItemModel.fromJson(json);
  }
}

/// @nodoc
const $RequestItemModel = _$RequestItemModelTearOff();

/// @nodoc
mixin _$RequestItemModel {
  int get request_id => throw _privateConstructorUsedError;
  String get request_date => throw _privateConstructorUsedError;
  String get request_time => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  bool get completed => throw _privateConstructorUsedError;
  int get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestItemModelCopyWith<RequestItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestItemModelCopyWith<$Res> {
  factory $RequestItemModelCopyWith(
          RequestItemModel value, $Res Function(RequestItemModel) then) =
      _$RequestItemModelCopyWithImpl<$Res>;
  $Res call(
      {int request_id,
      String request_date,
      String request_time,
      String status,
      bool completed,
      int items});
}

/// @nodoc
class _$RequestItemModelCopyWithImpl<$Res>
    implements $RequestItemModelCopyWith<$Res> {
  _$RequestItemModelCopyWithImpl(this._value, this._then);

  final RequestItemModel _value;
  // ignore: unused_field
  final $Res Function(RequestItemModel) _then;

  @override
  $Res call({
    Object? request_id = freezed,
    Object? request_date = freezed,
    Object? request_time = freezed,
    Object? status = freezed,
    Object? completed = freezed,
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      request_id: request_id == freezed
          ? _value.request_id
          : request_id // ignore: cast_nullable_to_non_nullable
              as int,
      request_date: request_date == freezed
          ? _value.request_date
          : request_date // ignore: cast_nullable_to_non_nullable
              as String,
      request_time: request_time == freezed
          ? _value.request_time
          : request_time // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      completed: completed == freezed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$RequestItemModelCopyWith<$Res>
    implements $RequestItemModelCopyWith<$Res> {
  factory _$RequestItemModelCopyWith(
          _RequestItemModel value, $Res Function(_RequestItemModel) then) =
      __$RequestItemModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int request_id,
      String request_date,
      String request_time,
      String status,
      bool completed,
      int items});
}

/// @nodoc
class __$RequestItemModelCopyWithImpl<$Res>
    extends _$RequestItemModelCopyWithImpl<$Res>
    implements _$RequestItemModelCopyWith<$Res> {
  __$RequestItemModelCopyWithImpl(
      _RequestItemModel _value, $Res Function(_RequestItemModel) _then)
      : super(_value, (v) => _then(v as _RequestItemModel));

  @override
  _RequestItemModel get _value => super._value as _RequestItemModel;

  @override
  $Res call({
    Object? request_id = freezed,
    Object? request_date = freezed,
    Object? request_time = freezed,
    Object? status = freezed,
    Object? completed = freezed,
    Object? items = freezed,
  }) {
    return _then(_RequestItemModel(
      request_id: request_id == freezed
          ? _value.request_id
          : request_id // ignore: cast_nullable_to_non_nullable
              as int,
      request_date: request_date == freezed
          ? _value.request_date
          : request_date // ignore: cast_nullable_to_non_nullable
              as String,
      request_time: request_time == freezed
          ? _value.request_time
          : request_time // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      completed: completed == freezed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RequestItemModel
    with DiagnosticableTreeMixin
    implements _RequestItemModel {
  const _$_RequestItemModel(
      {required this.request_id,
      required this.request_date,
      required this.request_time,
      required this.status,
      required this.completed,
      required this.items});

  factory _$_RequestItemModel.fromJson(Map<String, dynamic> json) =>
      _$_$_RequestItemModelFromJson(json);

  @override
  final int request_id;
  @override
  final String request_date;
  @override
  final String request_time;
  @override
  final String status;
  @override
  final bool completed;
  @override
  final int items;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RequestItemModel(request_id: $request_id, request_date: $request_date, request_time: $request_time, status: $status, completed: $completed, items: $items)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RequestItemModel'))
      ..add(DiagnosticsProperty('request_id', request_id))
      ..add(DiagnosticsProperty('request_date', request_date))
      ..add(DiagnosticsProperty('request_time', request_time))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('completed', completed))
      ..add(DiagnosticsProperty('items', items));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RequestItemModel &&
            (identical(other.request_id, request_id) ||
                const DeepCollectionEquality()
                    .equals(other.request_id, request_id)) &&
            (identical(other.request_date, request_date) ||
                const DeepCollectionEquality()
                    .equals(other.request_date, request_date)) &&
            (identical(other.request_time, request_time) ||
                const DeepCollectionEquality()
                    .equals(other.request_time, request_time)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.completed, completed) ||
                const DeepCollectionEquality()
                    .equals(other.completed, completed)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(request_id) ^
      const DeepCollectionEquality().hash(request_date) ^
      const DeepCollectionEquality().hash(request_time) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(completed) ^
      const DeepCollectionEquality().hash(items);

  @JsonKey(ignore: true)
  @override
  _$RequestItemModelCopyWith<_RequestItemModel> get copyWith =>
      __$RequestItemModelCopyWithImpl<_RequestItemModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RequestItemModelToJson(this);
  }
}

abstract class _RequestItemModel implements RequestItemModel {
  const factory _RequestItemModel(
      {required int request_id,
      required String request_date,
      required String request_time,
      required String status,
      required bool completed,
      required int items}) = _$_RequestItemModel;

  factory _RequestItemModel.fromJson(Map<String, dynamic> json) =
      _$_RequestItemModel.fromJson;

  @override
  int get request_id => throw _privateConstructorUsedError;
  @override
  String get request_date => throw _privateConstructorUsedError;
  @override
  String get request_time => throw _privateConstructorUsedError;
  @override
  String get status => throw _privateConstructorUsedError;
  @override
  bool get completed => throw _privateConstructorUsedError;
  @override
  int get items => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RequestItemModelCopyWith<_RequestItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}
