// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'notification_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NotificationModel _$NotificationModelFromJson(Map<String, dynamic> json) {
  return _NotificationModel.fromJson(json);
}

/// @nodoc
class _$NotificationModelTearOff {
  const _$NotificationModelTearOff();

  _NotificationModel call(
      {required int id,
      @JsonKey(defaultValue: '') String? title,
      @JsonKey(defaultValue: '') String? message,
      required String typeName,
      required bool isRead,
      required int detailId,
      required String sentDate,
      required String sentTime}) {
    return _NotificationModel(
      id: id,
      title: title,
      message: message,
      typeName: typeName,
      isRead: isRead,
      detailId: detailId,
      sentDate: sentDate,
      sentTime: sentTime,
    );
  }

  NotificationModel fromJson(Map<String, Object> json) {
    return NotificationModel.fromJson(json);
  }
}

/// @nodoc
const $NotificationModel = _$NotificationModelTearOff();

/// @nodoc
mixin _$NotificationModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: '')
  String? get message => throw _privateConstructorUsedError;
  String get typeName => throw _privateConstructorUsedError;
  bool get isRead => throw _privateConstructorUsedError;
  int get detailId => throw _privateConstructorUsedError;
  String get sentDate => throw _privateConstructorUsedError;
  String get sentTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NotificationModelCopyWith<NotificationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationModelCopyWith<$Res> {
  factory $NotificationModelCopyWith(
          NotificationModel value, $Res Function(NotificationModel) then) =
      _$NotificationModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      @JsonKey(defaultValue: '') String? title,
      @JsonKey(defaultValue: '') String? message,
      String typeName,
      bool isRead,
      int detailId,
      String sentDate,
      String sentTime});
}

/// @nodoc
class _$NotificationModelCopyWithImpl<$Res>
    implements $NotificationModelCopyWith<$Res> {
  _$NotificationModelCopyWithImpl(this._value, this._then);

  final NotificationModel _value;
  // ignore: unused_field
  final $Res Function(NotificationModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? message = freezed,
    Object? typeName = freezed,
    Object? isRead = freezed,
    Object? detailId = freezed,
    Object? sentDate = freezed,
    Object? sentTime = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      typeName: typeName == freezed
          ? _value.typeName
          : typeName // ignore: cast_nullable_to_non_nullable
              as String,
      isRead: isRead == freezed
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool,
      detailId: detailId == freezed
          ? _value.detailId
          : detailId // ignore: cast_nullable_to_non_nullable
              as int,
      sentDate: sentDate == freezed
          ? _value.sentDate
          : sentDate // ignore: cast_nullable_to_non_nullable
              as String,
      sentTime: sentTime == freezed
          ? _value.sentTime
          : sentTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$NotificationModelCopyWith<$Res>
    implements $NotificationModelCopyWith<$Res> {
  factory _$NotificationModelCopyWith(
          _NotificationModel value, $Res Function(_NotificationModel) then) =
      __$NotificationModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      @JsonKey(defaultValue: '') String? title,
      @JsonKey(defaultValue: '') String? message,
      String typeName,
      bool isRead,
      int detailId,
      String sentDate,
      String sentTime});
}

/// @nodoc
class __$NotificationModelCopyWithImpl<$Res>
    extends _$NotificationModelCopyWithImpl<$Res>
    implements _$NotificationModelCopyWith<$Res> {
  __$NotificationModelCopyWithImpl(
      _NotificationModel _value, $Res Function(_NotificationModel) _then)
      : super(_value, (v) => _then(v as _NotificationModel));

  @override
  _NotificationModel get _value => super._value as _NotificationModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? message = freezed,
    Object? typeName = freezed,
    Object? isRead = freezed,
    Object? detailId = freezed,
    Object? sentDate = freezed,
    Object? sentTime = freezed,
  }) {
    return _then(_NotificationModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      typeName: typeName == freezed
          ? _value.typeName
          : typeName // ignore: cast_nullable_to_non_nullable
              as String,
      isRead: isRead == freezed
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool,
      detailId: detailId == freezed
          ? _value.detailId
          : detailId // ignore: cast_nullable_to_non_nullable
              as int,
      sentDate: sentDate == freezed
          ? _value.sentDate
          : sentDate // ignore: cast_nullable_to_non_nullable
              as String,
      sentTime: sentTime == freezed
          ? _value.sentTime
          : sentTime // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NotificationModel
    with DiagnosticableTreeMixin
    implements _NotificationModel {
  const _$_NotificationModel(
      {required this.id,
      @JsonKey(defaultValue: '') this.title,
      @JsonKey(defaultValue: '') this.message,
      required this.typeName,
      required this.isRead,
      required this.detailId,
      required this.sentDate,
      required this.sentTime});

  factory _$_NotificationModel.fromJson(Map<String, dynamic> json) =>
      _$_$_NotificationModelFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(defaultValue: '')
  final String? title;
  @override
  @JsonKey(defaultValue: '')
  final String? message;
  @override
  final String typeName;
  @override
  final bool isRead;
  @override
  final int detailId;
  @override
  final String sentDate;
  @override
  final String sentTime;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotificationModel(id: $id, title: $title, message: $message, typeName: $typeName, isRead: $isRead, detailId: $detailId, sentDate: $sentDate, sentTime: $sentTime)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NotificationModel'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('message', message))
      ..add(DiagnosticsProperty('typeName', typeName))
      ..add(DiagnosticsProperty('isRead', isRead))
      ..add(DiagnosticsProperty('detailId', detailId))
      ..add(DiagnosticsProperty('sentDate', sentDate))
      ..add(DiagnosticsProperty('sentTime', sentTime));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NotificationModel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.typeName, typeName) ||
                const DeepCollectionEquality()
                    .equals(other.typeName, typeName)) &&
            (identical(other.isRead, isRead) ||
                const DeepCollectionEquality().equals(other.isRead, isRead)) &&
            (identical(other.detailId, detailId) ||
                const DeepCollectionEquality()
                    .equals(other.detailId, detailId)) &&
            (identical(other.sentDate, sentDate) ||
                const DeepCollectionEquality()
                    .equals(other.sentDate, sentDate)) &&
            (identical(other.sentTime, sentTime) ||
                const DeepCollectionEquality()
                    .equals(other.sentTime, sentTime)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(typeName) ^
      const DeepCollectionEquality().hash(isRead) ^
      const DeepCollectionEquality().hash(detailId) ^
      const DeepCollectionEquality().hash(sentDate) ^
      const DeepCollectionEquality().hash(sentTime);

  @JsonKey(ignore: true)
  @override
  _$NotificationModelCopyWith<_NotificationModel> get copyWith =>
      __$NotificationModelCopyWithImpl<_NotificationModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NotificationModelToJson(this);
  }
}

abstract class _NotificationModel implements NotificationModel {
  const factory _NotificationModel(
      {required int id,
      @JsonKey(defaultValue: '') String? title,
      @JsonKey(defaultValue: '') String? message,
      required String typeName,
      required bool isRead,
      required int detailId,
      required String sentDate,
      required String sentTime}) = _$_NotificationModel;

  factory _NotificationModel.fromJson(Map<String, dynamic> json) =
      _$_NotificationModel.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(defaultValue: '')
  String? get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(defaultValue: '')
  String? get message => throw _privateConstructorUsedError;
  @override
  String get typeName => throw _privateConstructorUsedError;
  @override
  bool get isRead => throw _privateConstructorUsedError;
  @override
  int get detailId => throw _privateConstructorUsedError;
  @override
  String get sentDate => throw _privateConstructorUsedError;
  @override
  String get sentTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NotificationModelCopyWith<_NotificationModel> get copyWith =>
      throw _privateConstructorUsedError;
}
