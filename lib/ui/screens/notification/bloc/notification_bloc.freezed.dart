// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'notification_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NotificationEventTearOff {
  const _$NotificationEventTearOff();

  _FetchData fetchData() {
    return const _FetchData();
  }

  _ReadNotification readNotification() {
    return const _ReadNotification();
  }
}

/// @nodoc
const $NotificationEvent = _$NotificationEventTearOff();

/// @nodoc
mixin _$NotificationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchData,
    required TResult Function() readNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchData,
    TResult Function()? readNotification,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchData value) fetchData,
    required TResult Function(_ReadNotification value) readNotification,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchData value)? fetchData,
    TResult Function(_ReadNotification value)? readNotification,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationEventCopyWith<$Res> {
  factory $NotificationEventCopyWith(
          NotificationEvent value, $Res Function(NotificationEvent) then) =
      _$NotificationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotificationEventCopyWithImpl<$Res>
    implements $NotificationEventCopyWith<$Res> {
  _$NotificationEventCopyWithImpl(this._value, this._then);

  final NotificationEvent _value;
  // ignore: unused_field
  final $Res Function(NotificationEvent) _then;
}

/// @nodoc
abstract class _$FetchDataCopyWith<$Res> {
  factory _$FetchDataCopyWith(
          _FetchData value, $Res Function(_FetchData) then) =
      __$FetchDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$FetchDataCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res>
    implements _$FetchDataCopyWith<$Res> {
  __$FetchDataCopyWithImpl(_FetchData _value, $Res Function(_FetchData) _then)
      : super(_value, (v) => _then(v as _FetchData));

  @override
  _FetchData get _value => super._value as _FetchData;
}

/// @nodoc

class _$_FetchData implements _FetchData {
  const _$_FetchData();

  @override
  String toString() {
    return 'NotificationEvent.fetchData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FetchData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchData,
    required TResult Function() readNotification,
  }) {
    return fetchData();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchData,
    TResult Function()? readNotification,
    required TResult orElse(),
  }) {
    if (fetchData != null) {
      return fetchData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchData value) fetchData,
    required TResult Function(_ReadNotification value) readNotification,
  }) {
    return fetchData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchData value)? fetchData,
    TResult Function(_ReadNotification value)? readNotification,
    required TResult orElse(),
  }) {
    if (fetchData != null) {
      return fetchData(this);
    }
    return orElse();
  }
}

abstract class _FetchData implements NotificationEvent {
  const factory _FetchData() = _$_FetchData;
}

/// @nodoc
abstract class _$ReadNotificationCopyWith<$Res> {
  factory _$ReadNotificationCopyWith(
          _ReadNotification value, $Res Function(_ReadNotification) then) =
      __$ReadNotificationCopyWithImpl<$Res>;
}

/// @nodoc
class __$ReadNotificationCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res>
    implements _$ReadNotificationCopyWith<$Res> {
  __$ReadNotificationCopyWithImpl(
      _ReadNotification _value, $Res Function(_ReadNotification) _then)
      : super(_value, (v) => _then(v as _ReadNotification));

  @override
  _ReadNotification get _value => super._value as _ReadNotification;
}

/// @nodoc

class _$_ReadNotification implements _ReadNotification {
  const _$_ReadNotification();

  @override
  String toString() {
    return 'NotificationEvent.readNotification()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ReadNotification);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchData,
    required TResult Function() readNotification,
  }) {
    return readNotification();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchData,
    TResult Function()? readNotification,
    required TResult orElse(),
  }) {
    if (readNotification != null) {
      return readNotification();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchData value) fetchData,
    required TResult Function(_ReadNotification value) readNotification,
  }) {
    return readNotification(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchData value)? fetchData,
    TResult Function(_ReadNotification value)? readNotification,
    required TResult orElse(),
  }) {
    if (readNotification != null) {
      return readNotification(this);
    }
    return orElse();
  }
}

abstract class _ReadNotification implements NotificationEvent {
  const factory _ReadNotification() = _$_ReadNotification;
}

/// @nodoc
class _$NotificationStateTearOff {
  const _$NotificationStateTearOff();

  _Loading loading() {
    return const _Loading();
  }

  _Loaded loaded(List<NotificationModel> data) {
    return _Loaded(
      data,
    );
  }
}

/// @nodoc
const $NotificationState = _$NotificationStateTearOff();

/// @nodoc
mixin _$NotificationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<NotificationModel> data) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<NotificationModel> data)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationStateCopyWith<$Res> {
  factory $NotificationStateCopyWith(
          NotificationState value, $Res Function(NotificationState) then) =
      _$NotificationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotificationStateCopyWithImpl<$Res>
    implements $NotificationStateCopyWith<$Res> {
  _$NotificationStateCopyWithImpl(this._value, this._then);

  final NotificationState _value;
  // ignore: unused_field
  final $Res Function(NotificationState) _then;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$NotificationStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'NotificationState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<NotificationModel> data) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<NotificationModel> data)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements NotificationState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call({List<NotificationModel> data});
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res> extends _$NotificationStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_Loaded(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<NotificationModel>,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(this.data);

  @override
  final List<NotificationModel> data;

  @override
  String toString() {
    return 'NotificationState.loaded(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Loaded &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<NotificationModel> data) loaded,
  }) {
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<NotificationModel> data)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements NotificationState {
  const factory _Loaded(List<NotificationModel> data) = _$_Loaded;

  List<NotificationModel> get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadedCopyWith<_Loaded> get copyWith => throw _privateConstructorUsedError;
}
