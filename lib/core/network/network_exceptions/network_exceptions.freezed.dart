// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'network_exceptions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NetworkExceptionsTearOff {
  const _$NetworkExceptionsTearOff();

  NoInternetConnection noInternetConnection() {
    return const NoInternetConnection();
  }

  ServerError serverError() {
    return const ServerError();
  }

  UnAuthorized unAuthorized() {
    return const UnAuthorized();
  }

  DefaultError defaultError() {
    return const DefaultError();
  }

  FormatError formatError() {
    return const FormatError();
  }
}

/// @nodoc
const $NetworkExceptions = _$NetworkExceptionsTearOff();

/// @nodoc
mixin _$NetworkExceptions {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noInternetConnection,
    required TResult Function() serverError,
    required TResult Function() unAuthorized,
    required TResult Function() defaultError,
    required TResult Function() formatError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noInternetConnection,
    TResult Function()? serverError,
    TResult Function()? unAuthorized,
    TResult Function()? defaultError,
    TResult Function()? formatError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(ServerError value) serverError,
    required TResult Function(UnAuthorized value) unAuthorized,
    required TResult Function(DefaultError value) defaultError,
    required TResult Function(FormatError value) formatError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(ServerError value)? serverError,
    TResult Function(UnAuthorized value)? unAuthorized,
    TResult Function(DefaultError value)? defaultError,
    TResult Function(FormatError value)? formatError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkExceptionsCopyWith<$Res> {
  factory $NetworkExceptionsCopyWith(
          NetworkExceptions value, $Res Function(NetworkExceptions) then) =
      _$NetworkExceptionsCopyWithImpl<$Res>;
}

/// @nodoc
class _$NetworkExceptionsCopyWithImpl<$Res>
    implements $NetworkExceptionsCopyWith<$Res> {
  _$NetworkExceptionsCopyWithImpl(this._value, this._then);

  final NetworkExceptions _value;
  // ignore: unused_field
  final $Res Function(NetworkExceptions) _then;
}

/// @nodoc
abstract class $NoInternetConnectionCopyWith<$Res> {
  factory $NoInternetConnectionCopyWith(NoInternetConnection value,
          $Res Function(NoInternetConnection) then) =
      _$NoInternetConnectionCopyWithImpl<$Res>;
}

/// @nodoc
class _$NoInternetConnectionCopyWithImpl<$Res>
    extends _$NetworkExceptionsCopyWithImpl<$Res>
    implements $NoInternetConnectionCopyWith<$Res> {
  _$NoInternetConnectionCopyWithImpl(
      NoInternetConnection _value, $Res Function(NoInternetConnection) _then)
      : super(_value, (v) => _then(v as NoInternetConnection));

  @override
  NoInternetConnection get _value => super._value as NoInternetConnection;
}

/// @nodoc

class _$NoInternetConnection implements NoInternetConnection {
  const _$NoInternetConnection();

  @override
  String toString() {
    return 'NetworkExceptions.noInternetConnection()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is NoInternetConnection);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noInternetConnection,
    required TResult Function() serverError,
    required TResult Function() unAuthorized,
    required TResult Function() defaultError,
    required TResult Function() formatError,
  }) {
    return noInternetConnection();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noInternetConnection,
    TResult Function()? serverError,
    TResult Function()? unAuthorized,
    TResult Function()? defaultError,
    TResult Function()? formatError,
    required TResult orElse(),
  }) {
    if (noInternetConnection != null) {
      return noInternetConnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(ServerError value) serverError,
    required TResult Function(UnAuthorized value) unAuthorized,
    required TResult Function(DefaultError value) defaultError,
    required TResult Function(FormatError value) formatError,
  }) {
    return noInternetConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(ServerError value)? serverError,
    TResult Function(UnAuthorized value)? unAuthorized,
    TResult Function(DefaultError value)? defaultError,
    TResult Function(FormatError value)? formatError,
    required TResult orElse(),
  }) {
    if (noInternetConnection != null) {
      return noInternetConnection(this);
    }
    return orElse();
  }
}

abstract class NoInternetConnection implements NetworkExceptions {
  const factory NoInternetConnection() = _$NoInternetConnection;
}

/// @nodoc
abstract class $ServerErrorCopyWith<$Res> {
  factory $ServerErrorCopyWith(
          ServerError value, $Res Function(ServerError) then) =
      _$ServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$ServerErrorCopyWithImpl<$Res>
    extends _$NetworkExceptionsCopyWithImpl<$Res>
    implements $ServerErrorCopyWith<$Res> {
  _$ServerErrorCopyWithImpl(
      ServerError _value, $Res Function(ServerError) _then)
      : super(_value, (v) => _then(v as ServerError));

  @override
  ServerError get _value => super._value as ServerError;
}

/// @nodoc

class _$ServerError implements ServerError {
  const _$ServerError();

  @override
  String toString() {
    return 'NetworkExceptions.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noInternetConnection,
    required TResult Function() serverError,
    required TResult Function() unAuthorized,
    required TResult Function() defaultError,
    required TResult Function() formatError,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noInternetConnection,
    TResult Function()? serverError,
    TResult Function()? unAuthorized,
    TResult Function()? defaultError,
    TResult Function()? formatError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(ServerError value) serverError,
    required TResult Function(UnAuthorized value) unAuthorized,
    required TResult Function(DefaultError value) defaultError,
    required TResult Function(FormatError value) formatError,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(ServerError value)? serverError,
    TResult Function(UnAuthorized value)? unAuthorized,
    TResult Function(DefaultError value)? defaultError,
    TResult Function(FormatError value)? formatError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements NetworkExceptions {
  const factory ServerError() = _$ServerError;
}

/// @nodoc
abstract class $UnAuthorizedCopyWith<$Res> {
  factory $UnAuthorizedCopyWith(
          UnAuthorized value, $Res Function(UnAuthorized) then) =
      _$UnAuthorizedCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnAuthorizedCopyWithImpl<$Res>
    extends _$NetworkExceptionsCopyWithImpl<$Res>
    implements $UnAuthorizedCopyWith<$Res> {
  _$UnAuthorizedCopyWithImpl(
      UnAuthorized _value, $Res Function(UnAuthorized) _then)
      : super(_value, (v) => _then(v as UnAuthorized));

  @override
  UnAuthorized get _value => super._value as UnAuthorized;
}

/// @nodoc

class _$UnAuthorized implements UnAuthorized {
  const _$UnAuthorized();

  @override
  String toString() {
    return 'NetworkExceptions.unAuthorized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UnAuthorized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noInternetConnection,
    required TResult Function() serverError,
    required TResult Function() unAuthorized,
    required TResult Function() defaultError,
    required TResult Function() formatError,
  }) {
    return unAuthorized();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noInternetConnection,
    TResult Function()? serverError,
    TResult Function()? unAuthorized,
    TResult Function()? defaultError,
    TResult Function()? formatError,
    required TResult orElse(),
  }) {
    if (unAuthorized != null) {
      return unAuthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(ServerError value) serverError,
    required TResult Function(UnAuthorized value) unAuthorized,
    required TResult Function(DefaultError value) defaultError,
    required TResult Function(FormatError value) formatError,
  }) {
    return unAuthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(ServerError value)? serverError,
    TResult Function(UnAuthorized value)? unAuthorized,
    TResult Function(DefaultError value)? defaultError,
    TResult Function(FormatError value)? formatError,
    required TResult orElse(),
  }) {
    if (unAuthorized != null) {
      return unAuthorized(this);
    }
    return orElse();
  }
}

abstract class UnAuthorized implements NetworkExceptions {
  const factory UnAuthorized() = _$UnAuthorized;
}

/// @nodoc
abstract class $DefaultErrorCopyWith<$Res> {
  factory $DefaultErrorCopyWith(
          DefaultError value, $Res Function(DefaultError) then) =
      _$DefaultErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$DefaultErrorCopyWithImpl<$Res>
    extends _$NetworkExceptionsCopyWithImpl<$Res>
    implements $DefaultErrorCopyWith<$Res> {
  _$DefaultErrorCopyWithImpl(
      DefaultError _value, $Res Function(DefaultError) _then)
      : super(_value, (v) => _then(v as DefaultError));

  @override
  DefaultError get _value => super._value as DefaultError;
}

/// @nodoc

class _$DefaultError implements DefaultError {
  const _$DefaultError();

  @override
  String toString() {
    return 'NetworkExceptions.defaultError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is DefaultError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noInternetConnection,
    required TResult Function() serverError,
    required TResult Function() unAuthorized,
    required TResult Function() defaultError,
    required TResult Function() formatError,
  }) {
    return defaultError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noInternetConnection,
    TResult Function()? serverError,
    TResult Function()? unAuthorized,
    TResult Function()? defaultError,
    TResult Function()? formatError,
    required TResult orElse(),
  }) {
    if (defaultError != null) {
      return defaultError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(ServerError value) serverError,
    required TResult Function(UnAuthorized value) unAuthorized,
    required TResult Function(DefaultError value) defaultError,
    required TResult Function(FormatError value) formatError,
  }) {
    return defaultError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(ServerError value)? serverError,
    TResult Function(UnAuthorized value)? unAuthorized,
    TResult Function(DefaultError value)? defaultError,
    TResult Function(FormatError value)? formatError,
    required TResult orElse(),
  }) {
    if (defaultError != null) {
      return defaultError(this);
    }
    return orElse();
  }
}

abstract class DefaultError implements NetworkExceptions {
  const factory DefaultError() = _$DefaultError;
}

/// @nodoc
abstract class $FormatErrorCopyWith<$Res> {
  factory $FormatErrorCopyWith(
          FormatError value, $Res Function(FormatError) then) =
      _$FormatErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$FormatErrorCopyWithImpl<$Res>
    extends _$NetworkExceptionsCopyWithImpl<$Res>
    implements $FormatErrorCopyWith<$Res> {
  _$FormatErrorCopyWithImpl(
      FormatError _value, $Res Function(FormatError) _then)
      : super(_value, (v) => _then(v as FormatError));

  @override
  FormatError get _value => super._value as FormatError;
}

/// @nodoc

class _$FormatError implements FormatError {
  const _$FormatError();

  @override
  String toString() {
    return 'NetworkExceptions.formatError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is FormatError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() noInternetConnection,
    required TResult Function() serverError,
    required TResult Function() unAuthorized,
    required TResult Function() defaultError,
    required TResult Function() formatError,
  }) {
    return formatError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? noInternetConnection,
    TResult Function()? serverError,
    TResult Function()? unAuthorized,
    TResult Function()? defaultError,
    TResult Function()? formatError,
    required TResult orElse(),
  }) {
    if (formatError != null) {
      return formatError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoInternetConnection value) noInternetConnection,
    required TResult Function(ServerError value) serverError,
    required TResult Function(UnAuthorized value) unAuthorized,
    required TResult Function(DefaultError value) defaultError,
    required TResult Function(FormatError value) formatError,
  }) {
    return formatError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoInternetConnection value)? noInternetConnection,
    TResult Function(ServerError value)? serverError,
    TResult Function(UnAuthorized value)? unAuthorized,
    TResult Function(DefaultError value)? defaultError,
    TResult Function(FormatError value)? formatError,
    required TResult orElse(),
  }) {
    if (formatError != null) {
      return formatError(this);
    }
    return orElse();
  }
}

abstract class FormatError implements NetworkExceptions {
  const factory FormatError() = _$FormatError;
}
