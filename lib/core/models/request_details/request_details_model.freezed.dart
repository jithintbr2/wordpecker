// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'request_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RequestDetailsModel _$RequestDetailsModelFromJson(Map<String, dynamic> json) {
  return _RequestDetailsModel.fromJson(json);
}

/// @nodoc
class _$RequestDetailsModelTearOff {
  const _$RequestDetailsModelTearOff();

  _RequestDetailsModel call(
      {required int request_id,
      required String request_date,
      required String request_time,
      required String status,
      required String remarks,
      required bool completed,
      required List<RequestDetailsItemModel> items,
      required List<String> imageUrl}) {
    return _RequestDetailsModel(
      request_id: request_id,
      request_date: request_date,
      request_time: request_time,
      status: status,
      remarks: remarks,
      completed: completed,
      items: items,
      imageUrl: imageUrl,
    );
  }

  RequestDetailsModel fromJson(Map<String, Object> json) {
    return RequestDetailsModel.fromJson(json);
  }
}

/// @nodoc
const $RequestDetailsModel = _$RequestDetailsModelTearOff();

/// @nodoc
mixin _$RequestDetailsModel {
  int get request_id => throw _privateConstructorUsedError;
  String get request_date => throw _privateConstructorUsedError;
  String get request_time => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String get remarks => throw _privateConstructorUsedError;
  bool get completed => throw _privateConstructorUsedError;
  List<RequestDetailsItemModel> get items => throw _privateConstructorUsedError;
  List<String> get imageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestDetailsModelCopyWith<RequestDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestDetailsModelCopyWith<$Res> {
  factory $RequestDetailsModelCopyWith(
          RequestDetailsModel value, $Res Function(RequestDetailsModel) then) =
      _$RequestDetailsModelCopyWithImpl<$Res>;
  $Res call(
      {int request_id,
      String request_date,
      String request_time,
      String status,
      String remarks,
      bool completed,
      List<RequestDetailsItemModel> items,
      List<String> imageUrl});
}

/// @nodoc
class _$RequestDetailsModelCopyWithImpl<$Res>
    implements $RequestDetailsModelCopyWith<$Res> {
  _$RequestDetailsModelCopyWithImpl(this._value, this._then);

  final RequestDetailsModel _value;
  // ignore: unused_field
  final $Res Function(RequestDetailsModel) _then;

  @override
  $Res call({
    Object? request_id = freezed,
    Object? request_date = freezed,
    Object? request_time = freezed,
    Object? status = freezed,
    Object? remarks = freezed,
    Object? completed = freezed,
    Object? items = freezed,
    Object? imageUrl = freezed,
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
      remarks: remarks == freezed
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String,
      completed: completed == freezed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<RequestDetailsItemModel>,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$RequestDetailsModelCopyWith<$Res>
    implements $RequestDetailsModelCopyWith<$Res> {
  factory _$RequestDetailsModelCopyWith(_RequestDetailsModel value,
          $Res Function(_RequestDetailsModel) then) =
      __$RequestDetailsModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int request_id,
      String request_date,
      String request_time,
      String status,
      String remarks,
      bool completed,
      List<RequestDetailsItemModel> items,
      List<String> imageUrl});
}

/// @nodoc
class __$RequestDetailsModelCopyWithImpl<$Res>
    extends _$RequestDetailsModelCopyWithImpl<$Res>
    implements _$RequestDetailsModelCopyWith<$Res> {
  __$RequestDetailsModelCopyWithImpl(
      _RequestDetailsModel _value, $Res Function(_RequestDetailsModel) _then)
      : super(_value, (v) => _then(v as _RequestDetailsModel));

  @override
  _RequestDetailsModel get _value => super._value as _RequestDetailsModel;

  @override
  $Res call({
    Object? request_id = freezed,
    Object? request_date = freezed,
    Object? request_time = freezed,
    Object? status = freezed,
    Object? remarks = freezed,
    Object? completed = freezed,
    Object? items = freezed,
    Object? imageUrl = freezed,
  }) {
    return _then(_RequestDetailsModel(
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
      remarks: remarks == freezed
          ? _value.remarks
          : remarks // ignore: cast_nullable_to_non_nullable
              as String,
      completed: completed == freezed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<RequestDetailsItemModel>,
      imageUrl: imageUrl == freezed
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RequestDetailsModel
    with DiagnosticableTreeMixin
    implements _RequestDetailsModel {
  const _$_RequestDetailsModel(
      {required this.request_id,
      required this.request_date,
      required this.request_time,
      required this.status,
      required this.remarks,
      required this.completed,
      required this.items,
      required this.imageUrl});

  factory _$_RequestDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$_$_RequestDetailsModelFromJson(json);

  @override
  final int request_id;
  @override
  final String request_date;
  @override
  final String request_time;
  @override
  final String status;
  @override
  final String remarks;
  @override
  final bool completed;
  @override
  final List<RequestDetailsItemModel> items;
  @override
  final List<String> imageUrl;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RequestDetailsModel(request_id: $request_id, request_date: $request_date, request_time: $request_time, status: $status, remarks: $remarks, completed: $completed, items: $items, imageUrl: $imageUrl)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RequestDetailsModel'))
      ..add(DiagnosticsProperty('request_id', request_id))
      ..add(DiagnosticsProperty('request_date', request_date))
      ..add(DiagnosticsProperty('request_time', request_time))
      ..add(DiagnosticsProperty('status', status))
      ..add(DiagnosticsProperty('remarks', remarks))
      ..add(DiagnosticsProperty('completed', completed))
      ..add(DiagnosticsProperty('items', items))
      ..add(DiagnosticsProperty('imageUrl', imageUrl));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RequestDetailsModel &&
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
            (identical(other.remarks, remarks) ||
                const DeepCollectionEquality()
                    .equals(other.remarks, remarks)) &&
            (identical(other.completed, completed) ||
                const DeepCollectionEquality()
                    .equals(other.completed, completed)) &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)) &&
            (identical(other.imageUrl, imageUrl) ||
                const DeepCollectionEquality()
                    .equals(other.imageUrl, imageUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(request_id) ^
      const DeepCollectionEquality().hash(request_date) ^
      const DeepCollectionEquality().hash(request_time) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(remarks) ^
      const DeepCollectionEquality().hash(completed) ^
      const DeepCollectionEquality().hash(items) ^
      const DeepCollectionEquality().hash(imageUrl);

  @JsonKey(ignore: true)
  @override
  _$RequestDetailsModelCopyWith<_RequestDetailsModel> get copyWith =>
      __$RequestDetailsModelCopyWithImpl<_RequestDetailsModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RequestDetailsModelToJson(this);
  }
}

abstract class _RequestDetailsModel implements RequestDetailsModel {
  const factory _RequestDetailsModel(
      {required int request_id,
      required String request_date,
      required String request_time,
      required String status,
      required String remarks,
      required bool completed,
      required List<RequestDetailsItemModel> items,
      required List<String> imageUrl}) = _$_RequestDetailsModel;

  factory _RequestDetailsModel.fromJson(Map<String, dynamic> json) =
      _$_RequestDetailsModel.fromJson;

  @override
  int get request_id => throw _privateConstructorUsedError;
  @override
  String get request_date => throw _privateConstructorUsedError;
  @override
  String get request_time => throw _privateConstructorUsedError;
  @override
  String get status => throw _privateConstructorUsedError;
  @override
  String get remarks => throw _privateConstructorUsedError;
  @override
  bool get completed => throw _privateConstructorUsedError;
  @override
  List<RequestDetailsItemModel> get items => throw _privateConstructorUsedError;
  @override
  List<String> get imageUrl => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RequestDetailsModelCopyWith<_RequestDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

RequestDetailsItemModel _$RequestDetailsItemModelFromJson(
    Map<String, dynamic> json) {
  return _RequestDetailsItemModel.fromJson(json);
}

/// @nodoc
class _$RequestDetailsItemModelTearOff {
  const _$RequestDetailsItemModelTearOff();

  _RequestDetailsItemModel call(
      {required int detail_id,
      required int master_id,
      required String item,
      required int qty}) {
    return _RequestDetailsItemModel(
      detail_id: detail_id,
      master_id: master_id,
      item: item,
      qty: qty,
    );
  }

  RequestDetailsItemModel fromJson(Map<String, Object> json) {
    return RequestDetailsItemModel.fromJson(json);
  }
}

/// @nodoc
const $RequestDetailsItemModel = _$RequestDetailsItemModelTearOff();

/// @nodoc
mixin _$RequestDetailsItemModel {
  int get detail_id => throw _privateConstructorUsedError;
  int get master_id => throw _privateConstructorUsedError;
  String get item => throw _privateConstructorUsedError;
  int get qty => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RequestDetailsItemModelCopyWith<RequestDetailsItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequestDetailsItemModelCopyWith<$Res> {
  factory $RequestDetailsItemModelCopyWith(RequestDetailsItemModel value,
          $Res Function(RequestDetailsItemModel) then) =
      _$RequestDetailsItemModelCopyWithImpl<$Res>;
  $Res call({int detail_id, int master_id, String item, int qty});
}

/// @nodoc
class _$RequestDetailsItemModelCopyWithImpl<$Res>
    implements $RequestDetailsItemModelCopyWith<$Res> {
  _$RequestDetailsItemModelCopyWithImpl(this._value, this._then);

  final RequestDetailsItemModel _value;
  // ignore: unused_field
  final $Res Function(RequestDetailsItemModel) _then;

  @override
  $Res call({
    Object? detail_id = freezed,
    Object? master_id = freezed,
    Object? item = freezed,
    Object? qty = freezed,
  }) {
    return _then(_value.copyWith(
      detail_id: detail_id == freezed
          ? _value.detail_id
          : detail_id // ignore: cast_nullable_to_non_nullable
              as int,
      master_id: master_id == freezed
          ? _value.master_id
          : master_id // ignore: cast_nullable_to_non_nullable
              as int,
      item: item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as String,
      qty: qty == freezed
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$RequestDetailsItemModelCopyWith<$Res>
    implements $RequestDetailsItemModelCopyWith<$Res> {
  factory _$RequestDetailsItemModelCopyWith(_RequestDetailsItemModel value,
          $Res Function(_RequestDetailsItemModel) then) =
      __$RequestDetailsItemModelCopyWithImpl<$Res>;
  @override
  $Res call({int detail_id, int master_id, String item, int qty});
}

/// @nodoc
class __$RequestDetailsItemModelCopyWithImpl<$Res>
    extends _$RequestDetailsItemModelCopyWithImpl<$Res>
    implements _$RequestDetailsItemModelCopyWith<$Res> {
  __$RequestDetailsItemModelCopyWithImpl(_RequestDetailsItemModel _value,
      $Res Function(_RequestDetailsItemModel) _then)
      : super(_value, (v) => _then(v as _RequestDetailsItemModel));

  @override
  _RequestDetailsItemModel get _value =>
      super._value as _RequestDetailsItemModel;

  @override
  $Res call({
    Object? detail_id = freezed,
    Object? master_id = freezed,
    Object? item = freezed,
    Object? qty = freezed,
  }) {
    return _then(_RequestDetailsItemModel(
      detail_id: detail_id == freezed
          ? _value.detail_id
          : detail_id // ignore: cast_nullable_to_non_nullable
              as int,
      master_id: master_id == freezed
          ? _value.master_id
          : master_id // ignore: cast_nullable_to_non_nullable
              as int,
      item: item == freezed
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as String,
      qty: qty == freezed
          ? _value.qty
          : qty // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RequestDetailsItemModel
    with DiagnosticableTreeMixin
    implements _RequestDetailsItemModel {
  const _$_RequestDetailsItemModel(
      {required this.detail_id,
      required this.master_id,
      required this.item,
      required this.qty});

  factory _$_RequestDetailsItemModel.fromJson(Map<String, dynamic> json) =>
      _$_$_RequestDetailsItemModelFromJson(json);

  @override
  final int detail_id;
  @override
  final int master_id;
  @override
  final String item;
  @override
  final int qty;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RequestDetailsItemModel(detail_id: $detail_id, master_id: $master_id, item: $item, qty: $qty)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RequestDetailsItemModel'))
      ..add(DiagnosticsProperty('detail_id', detail_id))
      ..add(DiagnosticsProperty('master_id', master_id))
      ..add(DiagnosticsProperty('item', item))
      ..add(DiagnosticsProperty('qty', qty));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RequestDetailsItemModel &&
            (identical(other.detail_id, detail_id) ||
                const DeepCollectionEquality()
                    .equals(other.detail_id, detail_id)) &&
            (identical(other.master_id, master_id) ||
                const DeepCollectionEquality()
                    .equals(other.master_id, master_id)) &&
            (identical(other.item, item) ||
                const DeepCollectionEquality().equals(other.item, item)) &&
            (identical(other.qty, qty) ||
                const DeepCollectionEquality().equals(other.qty, qty)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(detail_id) ^
      const DeepCollectionEquality().hash(master_id) ^
      const DeepCollectionEquality().hash(item) ^
      const DeepCollectionEquality().hash(qty);

  @JsonKey(ignore: true)
  @override
  _$RequestDetailsItemModelCopyWith<_RequestDetailsItemModel> get copyWith =>
      __$RequestDetailsItemModelCopyWithImpl<_RequestDetailsItemModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RequestDetailsItemModelToJson(this);
  }
}

abstract class _RequestDetailsItemModel implements RequestDetailsItemModel {
  const factory _RequestDetailsItemModel(
      {required int detail_id,
      required int master_id,
      required String item,
      required int qty}) = _$_RequestDetailsItemModel;

  factory _RequestDetailsItemModel.fromJson(Map<String, dynamic> json) =
      _$_RequestDetailsItemModel.fromJson;

  @override
  int get detail_id => throw _privateConstructorUsedError;
  @override
  int get master_id => throw _privateConstructorUsedError;
  @override
  String get item => throw _privateConstructorUsedError;
  @override
  int get qty => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RequestDetailsItemModelCopyWith<_RequestDetailsItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}
