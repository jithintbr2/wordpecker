// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'push_notification_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PushNotificationModel _$PushNotificationModelFromJson(
    Map<String, dynamic> json) {
  return _PushNotificationModel.fromJson(json);
}

/// @nodoc
class _$PushNotificationModelTearOff {
  const _$PushNotificationModelTearOff();

  _PushNotificationModel call(
      {String? title,
      String? message,
      String? type,
      String? image,
      int? notificationId,
      int? detailId,
      int? detailParentId}) {
    return _PushNotificationModel(
      title: title,
      message: message,
      type: type,
      image: image,
      notificationId: notificationId,
      detailId: detailId,
      detailParentId: detailParentId,
    );
  }

  PushNotificationModel fromJson(Map<String, Object> json) {
    return PushNotificationModel.fromJson(json);
  }
}

/// @nodoc
const $PushNotificationModel = _$PushNotificationModelTearOff();

/// @nodoc
mixin _$PushNotificationModel {
  String? get title => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  int? get notificationId => throw _privateConstructorUsedError;
  int? get detailId => throw _privateConstructorUsedError;
  int? get detailParentId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PushNotificationModelCopyWith<PushNotificationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PushNotificationModelCopyWith<$Res> {
  factory $PushNotificationModelCopyWith(PushNotificationModel value,
          $Res Function(PushNotificationModel) then) =
      _$PushNotificationModelCopyWithImpl<$Res>;
  $Res call(
      {String? title,
      String? message,
      String? type,
      String? image,
      int? notificationId,
      int? detailId,
      int? detailParentId});
}

/// @nodoc
class _$PushNotificationModelCopyWithImpl<$Res>
    implements $PushNotificationModelCopyWith<$Res> {
  _$PushNotificationModelCopyWithImpl(this._value, this._then);

  final PushNotificationModel _value;
  // ignore: unused_field
  final $Res Function(PushNotificationModel) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? message = freezed,
    Object? type = freezed,
    Object? image = freezed,
    Object? notificationId = freezed,
    Object? detailId = freezed,
    Object? detailParentId = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      notificationId: notificationId == freezed
          ? _value.notificationId
          : notificationId // ignore: cast_nullable_to_non_nullable
              as int?,
      detailId: detailId == freezed
          ? _value.detailId
          : detailId // ignore: cast_nullable_to_non_nullable
              as int?,
      detailParentId: detailParentId == freezed
          ? _value.detailParentId
          : detailParentId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$PushNotificationModelCopyWith<$Res>
    implements $PushNotificationModelCopyWith<$Res> {
  factory _$PushNotificationModelCopyWith(_PushNotificationModel value,
          $Res Function(_PushNotificationModel) then) =
      __$PushNotificationModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? title,
      String? message,
      String? type,
      String? image,
      int? notificationId,
      int? detailId,
      int? detailParentId});
}

/// @nodoc
class __$PushNotificationModelCopyWithImpl<$Res>
    extends _$PushNotificationModelCopyWithImpl<$Res>
    implements _$PushNotificationModelCopyWith<$Res> {
  __$PushNotificationModelCopyWithImpl(_PushNotificationModel _value,
      $Res Function(_PushNotificationModel) _then)
      : super(_value, (v) => _then(v as _PushNotificationModel));

  @override
  _PushNotificationModel get _value => super._value as _PushNotificationModel;

  @override
  $Res call({
    Object? title = freezed,
    Object? message = freezed,
    Object? type = freezed,
    Object? image = freezed,
    Object? notificationId = freezed,
    Object? detailId = freezed,
    Object? detailParentId = freezed,
  }) {
    return _then(_PushNotificationModel(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      notificationId: notificationId == freezed
          ? _value.notificationId
          : notificationId // ignore: cast_nullable_to_non_nullable
              as int?,
      detailId: detailId == freezed
          ? _value.detailId
          : detailId // ignore: cast_nullable_to_non_nullable
              as int?,
      detailParentId: detailParentId == freezed
          ? _value.detailParentId
          : detailParentId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PushNotificationModel implements _PushNotificationModel {
  const _$_PushNotificationModel(
      {this.title,
      this.message,
      this.type,
      this.image,
      this.notificationId,
      this.detailId,
      this.detailParentId});

  factory _$_PushNotificationModel.fromJson(Map<String, dynamic> json) =>
      _$_$_PushNotificationModelFromJson(json);

  @override
  final String? title;
  @override
  final String? message;
  @override
  final String? type;
  @override
  final String? image;
  @override
  final int? notificationId;
  @override
  final int? detailId;
  @override
  final int? detailParentId;

  @override
  String toString() {
    return 'PushNotificationModel(title: $title, message: $message, type: $type, image: $image, notificationId: $notificationId, detailId: $detailId, detailParentId: $detailParentId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PushNotificationModel &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.message, message) ||
                const DeepCollectionEquality()
                    .equals(other.message, message)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)) &&
            (identical(other.notificationId, notificationId) ||
                const DeepCollectionEquality()
                    .equals(other.notificationId, notificationId)) &&
            (identical(other.detailId, detailId) ||
                const DeepCollectionEquality()
                    .equals(other.detailId, detailId)) &&
            (identical(other.detailParentId, detailParentId) ||
                const DeepCollectionEquality()
                    .equals(other.detailParentId, detailParentId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(message) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(image) ^
      const DeepCollectionEquality().hash(notificationId) ^
      const DeepCollectionEquality().hash(detailId) ^
      const DeepCollectionEquality().hash(detailParentId);

  @JsonKey(ignore: true)
  @override
  _$PushNotificationModelCopyWith<_PushNotificationModel> get copyWith =>
      __$PushNotificationModelCopyWithImpl<_PushNotificationModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PushNotificationModelToJson(this);
  }
}

abstract class _PushNotificationModel implements PushNotificationModel {
  const factory _PushNotificationModel(
      {String? title,
      String? message,
      String? type,
      String? image,
      int? notificationId,
      int? detailId,
      int? detailParentId}) = _$_PushNotificationModel;

  factory _PushNotificationModel.fromJson(Map<String, dynamic> json) =
      _$_PushNotificationModel.fromJson;

  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  String? get type => throw _privateConstructorUsedError;
  @override
  String? get image => throw _privateConstructorUsedError;
  @override
  int? get notificationId => throw _privateConstructorUsedError;
  @override
  int? get detailId => throw _privateConstructorUsedError;
  @override
  int? get detailParentId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PushNotificationModelCopyWith<_PushNotificationModel> get copyWith =>
      throw _privateConstructorUsedError;
}
