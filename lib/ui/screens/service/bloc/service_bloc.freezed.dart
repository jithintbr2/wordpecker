// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'service_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ServiceEventTearOff {
  const _$ServiceEventTearOff();

  _FetchServices fetchServices(int franchiseId) {
    return _FetchServices(
      franchiseId,
    );
  }

  _RequestService requestService() {
    return const _RequestService();
  }
}

/// @nodoc
const $ServiceEvent = _$ServiceEventTearOff();

/// @nodoc
mixin _$ServiceEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int franchiseId) fetchServices,
    required TResult Function() requestService,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int franchiseId)? fetchServices,
    TResult Function()? requestService,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchServices value) fetchServices,
    required TResult Function(_RequestService value) requestService,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchServices value)? fetchServices,
    TResult Function(_RequestService value)? requestService,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceEventCopyWith<$Res> {
  factory $ServiceEventCopyWith(
          ServiceEvent value, $Res Function(ServiceEvent) then) =
      _$ServiceEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ServiceEventCopyWithImpl<$Res> implements $ServiceEventCopyWith<$Res> {
  _$ServiceEventCopyWithImpl(this._value, this._then);

  final ServiceEvent _value;
  // ignore: unused_field
  final $Res Function(ServiceEvent) _then;
}

/// @nodoc
abstract class _$FetchServicesCopyWith<$Res> {
  factory _$FetchServicesCopyWith(
          _FetchServices value, $Res Function(_FetchServices) then) =
      __$FetchServicesCopyWithImpl<$Res>;
  $Res call({int franchiseId});
}

/// @nodoc
class __$FetchServicesCopyWithImpl<$Res>
    extends _$ServiceEventCopyWithImpl<$Res>
    implements _$FetchServicesCopyWith<$Res> {
  __$FetchServicesCopyWithImpl(
      _FetchServices _value, $Res Function(_FetchServices) _then)
      : super(_value, (v) => _then(v as _FetchServices));

  @override
  _FetchServices get _value => super._value as _FetchServices;

  @override
  $Res call({
    Object? franchiseId = freezed,
  }) {
    return _then(_FetchServices(
      franchiseId == freezed
          ? _value.franchiseId
          : franchiseId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_FetchServices implements _FetchServices {
  const _$_FetchServices(this.franchiseId);

  @override
  final int franchiseId;

  @override
  String toString() {
    return 'ServiceEvent.fetchServices(franchiseId: $franchiseId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FetchServices &&
            (identical(other.franchiseId, franchiseId) ||
                const DeepCollectionEquality()
                    .equals(other.franchiseId, franchiseId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(franchiseId);

  @JsonKey(ignore: true)
  @override
  _$FetchServicesCopyWith<_FetchServices> get copyWith =>
      __$FetchServicesCopyWithImpl<_FetchServices>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int franchiseId) fetchServices,
    required TResult Function() requestService,
  }) {
    return fetchServices(franchiseId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int franchiseId)? fetchServices,
    TResult Function()? requestService,
    required TResult orElse(),
  }) {
    if (fetchServices != null) {
      return fetchServices(franchiseId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchServices value) fetchServices,
    required TResult Function(_RequestService value) requestService,
  }) {
    return fetchServices(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchServices value)? fetchServices,
    TResult Function(_RequestService value)? requestService,
    required TResult orElse(),
  }) {
    if (fetchServices != null) {
      return fetchServices(this);
    }
    return orElse();
  }
}

abstract class _FetchServices implements ServiceEvent {
  const factory _FetchServices(int franchiseId) = _$_FetchServices;

  int get franchiseId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FetchServicesCopyWith<_FetchServices> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RequestServiceCopyWith<$Res> {
  factory _$RequestServiceCopyWith(
          _RequestService value, $Res Function(_RequestService) then) =
      __$RequestServiceCopyWithImpl<$Res>;
}

/// @nodoc
class __$RequestServiceCopyWithImpl<$Res>
    extends _$ServiceEventCopyWithImpl<$Res>
    implements _$RequestServiceCopyWith<$Res> {
  __$RequestServiceCopyWithImpl(
      _RequestService _value, $Res Function(_RequestService) _then)
      : super(_value, (v) => _then(v as _RequestService));

  @override
  _RequestService get _value => super._value as _RequestService;
}

/// @nodoc

class _$_RequestService implements _RequestService {
  const _$_RequestService();

  @override
  String toString() {
    return 'ServiceEvent.requestService()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _RequestService);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int franchiseId) fetchServices,
    required TResult Function() requestService,
  }) {
    return requestService();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int franchiseId)? fetchServices,
    TResult Function()? requestService,
    required TResult orElse(),
  }) {
    if (requestService != null) {
      return requestService();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchServices value) fetchServices,
    required TResult Function(_RequestService value) requestService,
  }) {
    return requestService(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchServices value)? fetchServices,
    TResult Function(_RequestService value)? requestService,
    required TResult orElse(),
  }) {
    if (requestService != null) {
      return requestService(this);
    }
    return orElse();
  }
}

abstract class _RequestService implements ServiceEvent {
  const factory _RequestService() = _$_RequestService;
}

/// @nodoc
class _$ServiceStateTearOff {
  const _$ServiceStateTearOff();

  _Loading loading() {
    return const _Loading();
  }

  _Loaded loaded(List<ServiceModel> data) {
    return _Loaded(
      data,
    );
  }

  _Failed failed(NetworkExceptions exceptions) {
    return _Failed(
      exceptions,
    );
  }
}

/// @nodoc
const $ServiceState = _$ServiceStateTearOff();

/// @nodoc
mixin _$ServiceState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<ServiceModel> data) loaded,
    required TResult Function(NetworkExceptions exceptions) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ServiceModel> data)? loaded,
    TResult Function(NetworkExceptions exceptions)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceStateCopyWith<$Res> {
  factory $ServiceStateCopyWith(
          ServiceState value, $Res Function(ServiceState) then) =
      _$ServiceStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ServiceStateCopyWithImpl<$Res> implements $ServiceStateCopyWith<$Res> {
  _$ServiceStateCopyWithImpl(this._value, this._then);

  final ServiceState _value;
  // ignore: unused_field
  final $Res Function(ServiceState) _then;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$ServiceStateCopyWithImpl<$Res>
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
    return 'ServiceState.loading()';
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
    required TResult Function(List<ServiceModel> data) loaded,
    required TResult Function(NetworkExceptions exceptions) failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ServiceModel> data)? loaded,
    TResult Function(NetworkExceptions exceptions)? failed,
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
    required TResult Function(_Failed value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ServiceState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call({List<ServiceModel> data});
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res> extends _$ServiceStateCopyWithImpl<$Res>
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
              as List<ServiceModel>,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(this.data);

  @override
  final List<ServiceModel> data;

  @override
  String toString() {
    return 'ServiceState.loaded(data: $data)';
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
    required TResult Function(List<ServiceModel> data) loaded,
    required TResult Function(NetworkExceptions exceptions) failed,
  }) {
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ServiceModel> data)? loaded,
    TResult Function(NetworkExceptions exceptions)? failed,
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
    required TResult Function(_Failed value) failed,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements ServiceState {
  const factory _Loaded(List<ServiceModel> data) = _$_Loaded;

  List<ServiceModel> get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoadedCopyWith<_Loaded> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FailedCopyWith<$Res> {
  factory _$FailedCopyWith(_Failed value, $Res Function(_Failed) then) =
      __$FailedCopyWithImpl<$Res>;
  $Res call({NetworkExceptions exceptions});

  $NetworkExceptionsCopyWith<$Res> get exceptions;
}

/// @nodoc
class __$FailedCopyWithImpl<$Res> extends _$ServiceStateCopyWithImpl<$Res>
    implements _$FailedCopyWith<$Res> {
  __$FailedCopyWithImpl(_Failed _value, $Res Function(_Failed) _then)
      : super(_value, (v) => _then(v as _Failed));

  @override
  _Failed get _value => super._value as _Failed;

  @override
  $Res call({
    Object? exceptions = freezed,
  }) {
    return _then(_Failed(
      exceptions == freezed
          ? _value.exceptions
          : exceptions // ignore: cast_nullable_to_non_nullable
              as NetworkExceptions,
    ));
  }

  @override
  $NetworkExceptionsCopyWith<$Res> get exceptions {
    return $NetworkExceptionsCopyWith<$Res>(_value.exceptions, (value) {
      return _then(_value.copyWith(exceptions: value));
    });
  }
}

/// @nodoc

class _$_Failed implements _Failed {
  const _$_Failed(this.exceptions);

  @override
  final NetworkExceptions exceptions;

  @override
  String toString() {
    return 'ServiceState.failed(exceptions: $exceptions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Failed &&
            (identical(other.exceptions, exceptions) ||
                const DeepCollectionEquality()
                    .equals(other.exceptions, exceptions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(exceptions);

  @JsonKey(ignore: true)
  @override
  _$FailedCopyWith<_Failed> get copyWith =>
      __$FailedCopyWithImpl<_Failed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<ServiceModel> data) loaded,
    required TResult Function(NetworkExceptions exceptions) failed,
  }) {
    return failed(exceptions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<ServiceModel> data)? loaded,
    TResult Function(NetworkExceptions exceptions)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(exceptions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements ServiceState {
  const factory _Failed(NetworkExceptions exceptions) = _$_Failed;

  NetworkExceptions get exceptions => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$FailedCopyWith<_Failed> get copyWith => throw _privateConstructorUsedError;
}
