// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'service_request_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ServiceRequestEventTearOff {
  const _$ServiceRequestEventTearOff();

  _Started started(int franchiseId, int service, String jobTitle,
      String jobDescription, String preferableDate, String time) {
    return _Started(
      franchiseId,
      service,
      jobTitle,
      jobDescription,
      preferableDate,
      time,
    );
  }
}

/// @nodoc
const $ServiceRequestEvent = _$ServiceRequestEventTearOff();

/// @nodoc
mixin _$ServiceRequestEvent {
  int get franchiseId => throw _privateConstructorUsedError;
  int get service => throw _privateConstructorUsedError;
  String get jobTitle => throw _privateConstructorUsedError;
  String get jobDescription => throw _privateConstructorUsedError;
  String get preferableDate => throw _privateConstructorUsedError;
  String get time => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int franchiseId, int service, String jobTitle,
            String jobDescription, String preferableDate, String time)
        started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int franchiseId, int service, String jobTitle,
            String jobDescription, String preferableDate, String time)?
        started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ServiceRequestEventCopyWith<ServiceRequestEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceRequestEventCopyWith<$Res> {
  factory $ServiceRequestEventCopyWith(
          ServiceRequestEvent value, $Res Function(ServiceRequestEvent) then) =
      _$ServiceRequestEventCopyWithImpl<$Res>;
  $Res call(
      {int franchiseId,
      int service,
      String jobTitle,
      String jobDescription,
      String preferableDate,
      String time});
}

/// @nodoc
class _$ServiceRequestEventCopyWithImpl<$Res>
    implements $ServiceRequestEventCopyWith<$Res> {
  _$ServiceRequestEventCopyWithImpl(this._value, this._then);

  final ServiceRequestEvent _value;
  // ignore: unused_field
  final $Res Function(ServiceRequestEvent) _then;

  @override
  $Res call({
    Object? franchiseId = freezed,
    Object? service = freezed,
    Object? jobTitle = freezed,
    Object? jobDescription = freezed,
    Object? preferableDate = freezed,
    Object? time = freezed,
  }) {
    return _then(_value.copyWith(
      franchiseId: franchiseId == freezed
          ? _value.franchiseId
          : franchiseId // ignore: cast_nullable_to_non_nullable
              as int,
      service: service == freezed
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as int,
      jobTitle: jobTitle == freezed
          ? _value.jobTitle
          : jobTitle // ignore: cast_nullable_to_non_nullable
              as String,
      jobDescription: jobDescription == freezed
          ? _value.jobDescription
          : jobDescription // ignore: cast_nullable_to_non_nullable
              as String,
      preferableDate: preferableDate == freezed
          ? _value.preferableDate
          : preferableDate // ignore: cast_nullable_to_non_nullable
              as String,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$StartedCopyWith<$Res>
    implements $ServiceRequestEventCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
  @override
  $Res call(
      {int franchiseId,
      int service,
      String jobTitle,
      String jobDescription,
      String preferableDate,
      String time});
}

/// @nodoc
class __$StartedCopyWithImpl<$Res>
    extends _$ServiceRequestEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;

  @override
  $Res call({
    Object? franchiseId = freezed,
    Object? service = freezed,
    Object? jobTitle = freezed,
    Object? jobDescription = freezed,
    Object? preferableDate = freezed,
    Object? time = freezed,
  }) {
    return _then(_Started(
      franchiseId == freezed
          ? _value.franchiseId
          : franchiseId // ignore: cast_nullable_to_non_nullable
              as int,
      service == freezed
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as int,
      jobTitle == freezed
          ? _value.jobTitle
          : jobTitle // ignore: cast_nullable_to_non_nullable
              as String,
      jobDescription == freezed
          ? _value.jobDescription
          : jobDescription // ignore: cast_nullable_to_non_nullable
              as String,
      preferableDate == freezed
          ? _value.preferableDate
          : preferableDate // ignore: cast_nullable_to_non_nullable
              as String,
      time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started(this.franchiseId, this.service, this.jobTitle,
      this.jobDescription, this.preferableDate, this.time);

  @override
  final int franchiseId;
  @override
  final int service;
  @override
  final String jobTitle;
  @override
  final String jobDescription;
  @override
  final String preferableDate;
  @override
  final String time;

  @override
  String toString() {
    return 'ServiceRequestEvent.started(franchiseId: $franchiseId, service: $service, jobTitle: $jobTitle, jobDescription: $jobDescription, preferableDate: $preferableDate, time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Started &&
            (identical(other.franchiseId, franchiseId) ||
                const DeepCollectionEquality()
                    .equals(other.franchiseId, franchiseId)) &&
            (identical(other.service, service) ||
                const DeepCollectionEquality()
                    .equals(other.service, service)) &&
            (identical(other.jobTitle, jobTitle) ||
                const DeepCollectionEquality()
                    .equals(other.jobTitle, jobTitle)) &&
            (identical(other.jobDescription, jobDescription) ||
                const DeepCollectionEquality()
                    .equals(other.jobDescription, jobDescription)) &&
            (identical(other.preferableDate, preferableDate) ||
                const DeepCollectionEquality()
                    .equals(other.preferableDate, preferableDate)) &&
            (identical(other.time, time) ||
                const DeepCollectionEquality().equals(other.time, time)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(franchiseId) ^
      const DeepCollectionEquality().hash(service) ^
      const DeepCollectionEquality().hash(jobTitle) ^
      const DeepCollectionEquality().hash(jobDescription) ^
      const DeepCollectionEquality().hash(preferableDate) ^
      const DeepCollectionEquality().hash(time);

  @JsonKey(ignore: true)
  @override
  _$StartedCopyWith<_Started> get copyWith =>
      __$StartedCopyWithImpl<_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int franchiseId, int service, String jobTitle,
            String jobDescription, String preferableDate, String time)
        started,
  }) {
    return started(
        franchiseId, service, jobTitle, jobDescription, preferableDate, time);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int franchiseId, int service, String jobTitle,
            String jobDescription, String preferableDate, String time)?
        started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(
          franchiseId, service, jobTitle, jobDescription, preferableDate, time);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ServiceRequestEvent {
  const factory _Started(int franchiseId, int service, String jobTitle,
      String jobDescription, String preferableDate, String time) = _$_Started;

  @override
  int get franchiseId => throw _privateConstructorUsedError;
  @override
  int get service => throw _privateConstructorUsedError;
  @override
  String get jobTitle => throw _privateConstructorUsedError;
  @override
  String get jobDescription => throw _privateConstructorUsedError;
  @override
  String get preferableDate => throw _privateConstructorUsedError;
  @override
  String get time => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$StartedCopyWith<_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ServiceRequestStateTearOff {
  const _$ServiceRequestStateTearOff();

  _Loading loading() {
    return const _Loading();
  }

  _Idle idle() {
    return const _Idle();
  }
}

/// @nodoc
const $ServiceRequestState = _$ServiceRequestStateTearOff();

/// @nodoc
mixin _$ServiceRequestState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? idle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Idle value) idle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Idle value)? idle,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceRequestStateCopyWith<$Res> {
  factory $ServiceRequestStateCopyWith(
          ServiceRequestState value, $Res Function(ServiceRequestState) then) =
      _$ServiceRequestStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ServiceRequestStateCopyWithImpl<$Res>
    implements $ServiceRequestStateCopyWith<$Res> {
  _$ServiceRequestStateCopyWithImpl(this._value, this._then);

  final ServiceRequestState _value;
  // ignore: unused_field
  final $Res Function(ServiceRequestState) _then;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res>
    extends _$ServiceRequestStateCopyWithImpl<$Res>
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
    return 'ServiceRequestState.loading()';
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
    required TResult Function() idle,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? idle,
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
    required TResult Function(_Idle value) idle,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Idle value)? idle,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ServiceRequestState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$IdleCopyWith<$Res> {
  factory _$IdleCopyWith(_Idle value, $Res Function(_Idle) then) =
      __$IdleCopyWithImpl<$Res>;
}

/// @nodoc
class __$IdleCopyWithImpl<$Res> extends _$ServiceRequestStateCopyWithImpl<$Res>
    implements _$IdleCopyWith<$Res> {
  __$IdleCopyWithImpl(_Idle _value, $Res Function(_Idle) _then)
      : super(_value, (v) => _then(v as _Idle));

  @override
  _Idle get _value => super._value as _Idle;
}

/// @nodoc

class _$_Idle implements _Idle {
  const _$_Idle();

  @override
  String toString() {
    return 'ServiceRequestState.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Idle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() idle,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? idle,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Idle value) idle,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Idle value)? idle,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _Idle implements ServiceRequestState {
  const factory _Idle() = _$_Idle;
}
