// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'authenticationpage_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthenticationpageEventTearOff {
  const _$AuthenticationpageEventTearOff();

  _VerifyPhone verifyPhone({required String phone}) {
    return _VerifyPhone(
      phone: phone,
    );
  }

  _GenerateOTP generateOTP(
      {required String phone, required String signature, required int otp}) {
    return _GenerateOTP(
      phone: phone,
      signature: signature,
      otp: otp,
    );
  }

  _Login login({required String phone, required String password}) {
    return _Login(
      phone: phone,
      password: password,
    );
  }

  _YieldRegisterState yeildRegisterState() {
    return const _YieldRegisterState();
  }

  _Register register(
      {required String name,
      required String phone,
      required String password,
      String? referredLink,
      String? referalId}) {
    return _Register(
      name: name,
      phone: phone,
      password: password,
      referredLink: referredLink,
      referalId: referalId,
    );
  }
}

/// @nodoc
const $AuthenticationpageEvent = _$AuthenticationpageEventTearOff();

/// @nodoc
mixin _$AuthenticationpageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phone) verifyPhone,
    required TResult Function(String phone, String signature, int otp)
        generateOTP,
    required TResult Function(String phone, String password) login,
    required TResult Function() yeildRegisterState,
    required TResult Function(String name, String phone, String password,
            String? referredLink, String? referalId)
        register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? verifyPhone,
    TResult Function(String phone, String signature, int otp)? generateOTP,
    TResult Function(String phone, String password)? login,
    TResult Function()? yeildRegisterState,
    TResult Function(String name, String phone, String password,
            String? referredLink, String? referalId)?
        register,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VerifyPhone value) verifyPhone,
    required TResult Function(_GenerateOTP value) generateOTP,
    required TResult Function(_Login value) login,
    required TResult Function(_YieldRegisterState value) yeildRegisterState,
    required TResult Function(_Register value) register,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VerifyPhone value)? verifyPhone,
    TResult Function(_GenerateOTP value)? generateOTP,
    TResult Function(_Login value)? login,
    TResult Function(_YieldRegisterState value)? yeildRegisterState,
    TResult Function(_Register value)? register,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationpageEventCopyWith<$Res> {
  factory $AuthenticationpageEventCopyWith(AuthenticationpageEvent value,
          $Res Function(AuthenticationpageEvent) then) =
      _$AuthenticationpageEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticationpageEventCopyWithImpl<$Res>
    implements $AuthenticationpageEventCopyWith<$Res> {
  _$AuthenticationpageEventCopyWithImpl(this._value, this._then);

  final AuthenticationpageEvent _value;
  // ignore: unused_field
  final $Res Function(AuthenticationpageEvent) _then;
}

/// @nodoc
abstract class _$VerifyPhoneCopyWith<$Res> {
  factory _$VerifyPhoneCopyWith(
          _VerifyPhone value, $Res Function(_VerifyPhone) then) =
      __$VerifyPhoneCopyWithImpl<$Res>;
  $Res call({String phone});
}

/// @nodoc
class __$VerifyPhoneCopyWithImpl<$Res>
    extends _$AuthenticationpageEventCopyWithImpl<$Res>
    implements _$VerifyPhoneCopyWith<$Res> {
  __$VerifyPhoneCopyWithImpl(
      _VerifyPhone _value, $Res Function(_VerifyPhone) _then)
      : super(_value, (v) => _then(v as _VerifyPhone));

  @override
  _VerifyPhone get _value => super._value as _VerifyPhone;

  @override
  $Res call({
    Object? phone = freezed,
  }) {
    return _then(_VerifyPhone(
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_VerifyPhone implements _VerifyPhone {
  const _$_VerifyPhone({required this.phone});

  @override
  final String phone;

  @override
  String toString() {
    return 'AuthenticationpageEvent.verifyPhone(phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _VerifyPhone &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(phone);

  @JsonKey(ignore: true)
  @override
  _$VerifyPhoneCopyWith<_VerifyPhone> get copyWith =>
      __$VerifyPhoneCopyWithImpl<_VerifyPhone>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phone) verifyPhone,
    required TResult Function(String phone, String signature, int otp)
        generateOTP,
    required TResult Function(String phone, String password) login,
    required TResult Function() yeildRegisterState,
    required TResult Function(String name, String phone, String password,
            String? referredLink, String? referalId)
        register,
  }) {
    return verifyPhone(phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? verifyPhone,
    TResult Function(String phone, String signature, int otp)? generateOTP,
    TResult Function(String phone, String password)? login,
    TResult Function()? yeildRegisterState,
    TResult Function(String name, String phone, String password,
            String? referredLink, String? referalId)?
        register,
    required TResult orElse(),
  }) {
    if (verifyPhone != null) {
      return verifyPhone(phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VerifyPhone value) verifyPhone,
    required TResult Function(_GenerateOTP value) generateOTP,
    required TResult Function(_Login value) login,
    required TResult Function(_YieldRegisterState value) yeildRegisterState,
    required TResult Function(_Register value) register,
  }) {
    return verifyPhone(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VerifyPhone value)? verifyPhone,
    TResult Function(_GenerateOTP value)? generateOTP,
    TResult Function(_Login value)? login,
    TResult Function(_YieldRegisterState value)? yeildRegisterState,
    TResult Function(_Register value)? register,
    required TResult orElse(),
  }) {
    if (verifyPhone != null) {
      return verifyPhone(this);
    }
    return orElse();
  }
}

abstract class _VerifyPhone implements AuthenticationpageEvent {
  const factory _VerifyPhone({required String phone}) = _$_VerifyPhone;

  String get phone => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$VerifyPhoneCopyWith<_VerifyPhone> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GenerateOTPCopyWith<$Res> {
  factory _$GenerateOTPCopyWith(
          _GenerateOTP value, $Res Function(_GenerateOTP) then) =
      __$GenerateOTPCopyWithImpl<$Res>;
  $Res call({String phone, String signature, int otp});
}

/// @nodoc
class __$GenerateOTPCopyWithImpl<$Res>
    extends _$AuthenticationpageEventCopyWithImpl<$Res>
    implements _$GenerateOTPCopyWith<$Res> {
  __$GenerateOTPCopyWithImpl(
      _GenerateOTP _value, $Res Function(_GenerateOTP) _then)
      : super(_value, (v) => _then(v as _GenerateOTP));

  @override
  _GenerateOTP get _value => super._value as _GenerateOTP;

  @override
  $Res call({
    Object? phone = freezed,
    Object? signature = freezed,
    Object? otp = freezed,
  }) {
    return _then(_GenerateOTP(
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      signature: signature == freezed
          ? _value.signature
          : signature // ignore: cast_nullable_to_non_nullable
              as String,
      otp: otp == freezed
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GenerateOTP implements _GenerateOTP {
  const _$_GenerateOTP(
      {required this.phone, required this.signature, required this.otp});

  @override
  final String phone;
  @override
  final String signature;
  @override
  final int otp;

  @override
  String toString() {
    return 'AuthenticationpageEvent.generateOTP(phone: $phone, signature: $signature, otp: $otp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GenerateOTP &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.signature, signature) ||
                const DeepCollectionEquality()
                    .equals(other.signature, signature)) &&
            (identical(other.otp, otp) ||
                const DeepCollectionEquality().equals(other.otp, otp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(signature) ^
      const DeepCollectionEquality().hash(otp);

  @JsonKey(ignore: true)
  @override
  _$GenerateOTPCopyWith<_GenerateOTP> get copyWith =>
      __$GenerateOTPCopyWithImpl<_GenerateOTP>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phone) verifyPhone,
    required TResult Function(String phone, String signature, int otp)
        generateOTP,
    required TResult Function(String phone, String password) login,
    required TResult Function() yeildRegisterState,
    required TResult Function(String name, String phone, String password,
            String? referredLink, String? referalId)
        register,
  }) {
    return generateOTP(phone, signature, otp);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? verifyPhone,
    TResult Function(String phone, String signature, int otp)? generateOTP,
    TResult Function(String phone, String password)? login,
    TResult Function()? yeildRegisterState,
    TResult Function(String name, String phone, String password,
            String? referredLink, String? referalId)?
        register,
    required TResult orElse(),
  }) {
    if (generateOTP != null) {
      return generateOTP(phone, signature, otp);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VerifyPhone value) verifyPhone,
    required TResult Function(_GenerateOTP value) generateOTP,
    required TResult Function(_Login value) login,
    required TResult Function(_YieldRegisterState value) yeildRegisterState,
    required TResult Function(_Register value) register,
  }) {
    return generateOTP(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VerifyPhone value)? verifyPhone,
    TResult Function(_GenerateOTP value)? generateOTP,
    TResult Function(_Login value)? login,
    TResult Function(_YieldRegisterState value)? yeildRegisterState,
    TResult Function(_Register value)? register,
    required TResult orElse(),
  }) {
    if (generateOTP != null) {
      return generateOTP(this);
    }
    return orElse();
  }
}

abstract class _GenerateOTP implements AuthenticationpageEvent {
  const factory _GenerateOTP(
      {required String phone,
      required String signature,
      required int otp}) = _$_GenerateOTP;

  String get phone => throw _privateConstructorUsedError;
  String get signature => throw _privateConstructorUsedError;
  int get otp => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GenerateOTPCopyWith<_GenerateOTP> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoginCopyWith<$Res> {
  factory _$LoginCopyWith(_Login value, $Res Function(_Login) then) =
      __$LoginCopyWithImpl<$Res>;
  $Res call({String phone, String password});
}

/// @nodoc
class __$LoginCopyWithImpl<$Res>
    extends _$AuthenticationpageEventCopyWithImpl<$Res>
    implements _$LoginCopyWith<$Res> {
  __$LoginCopyWithImpl(_Login _value, $Res Function(_Login) _then)
      : super(_value, (v) => _then(v as _Login));

  @override
  _Login get _value => super._value as _Login;

  @override
  $Res call({
    Object? phone = freezed,
    Object? password = freezed,
  }) {
    return _then(_Login(
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Login implements _Login {
  const _$_Login({required this.phone, required this.password});

  @override
  final String phone;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthenticationpageEvent.login(phone: $phone, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Login &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  _$LoginCopyWith<_Login> get copyWith =>
      __$LoginCopyWithImpl<_Login>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phone) verifyPhone,
    required TResult Function(String phone, String signature, int otp)
        generateOTP,
    required TResult Function(String phone, String password) login,
    required TResult Function() yeildRegisterState,
    required TResult Function(String name, String phone, String password,
            String? referredLink, String? referalId)
        register,
  }) {
    return login(phone, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? verifyPhone,
    TResult Function(String phone, String signature, int otp)? generateOTP,
    TResult Function(String phone, String password)? login,
    TResult Function()? yeildRegisterState,
    TResult Function(String name, String phone, String password,
            String? referredLink, String? referalId)?
        register,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(phone, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VerifyPhone value) verifyPhone,
    required TResult Function(_GenerateOTP value) generateOTP,
    required TResult Function(_Login value) login,
    required TResult Function(_YieldRegisterState value) yeildRegisterState,
    required TResult Function(_Register value) register,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VerifyPhone value)? verifyPhone,
    TResult Function(_GenerateOTP value)? generateOTP,
    TResult Function(_Login value)? login,
    TResult Function(_YieldRegisterState value)? yeildRegisterState,
    TResult Function(_Register value)? register,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class _Login implements AuthenticationpageEvent {
  const factory _Login({required String phone, required String password}) =
      _$_Login;

  String get phone => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoginCopyWith<_Login> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$YieldRegisterStateCopyWith<$Res> {
  factory _$YieldRegisterStateCopyWith(
          _YieldRegisterState value, $Res Function(_YieldRegisterState) then) =
      __$YieldRegisterStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$YieldRegisterStateCopyWithImpl<$Res>
    extends _$AuthenticationpageEventCopyWithImpl<$Res>
    implements _$YieldRegisterStateCopyWith<$Res> {
  __$YieldRegisterStateCopyWithImpl(
      _YieldRegisterState _value, $Res Function(_YieldRegisterState) _then)
      : super(_value, (v) => _then(v as _YieldRegisterState));

  @override
  _YieldRegisterState get _value => super._value as _YieldRegisterState;
}

/// @nodoc

class _$_YieldRegisterState implements _YieldRegisterState {
  const _$_YieldRegisterState();

  @override
  String toString() {
    return 'AuthenticationpageEvent.yeildRegisterState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _YieldRegisterState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phone) verifyPhone,
    required TResult Function(String phone, String signature, int otp)
        generateOTP,
    required TResult Function(String phone, String password) login,
    required TResult Function() yeildRegisterState,
    required TResult Function(String name, String phone, String password,
            String? referredLink, String? referalId)
        register,
  }) {
    return yeildRegisterState();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? verifyPhone,
    TResult Function(String phone, String signature, int otp)? generateOTP,
    TResult Function(String phone, String password)? login,
    TResult Function()? yeildRegisterState,
    TResult Function(String name, String phone, String password,
            String? referredLink, String? referalId)?
        register,
    required TResult orElse(),
  }) {
    if (yeildRegisterState != null) {
      return yeildRegisterState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VerifyPhone value) verifyPhone,
    required TResult Function(_GenerateOTP value) generateOTP,
    required TResult Function(_Login value) login,
    required TResult Function(_YieldRegisterState value) yeildRegisterState,
    required TResult Function(_Register value) register,
  }) {
    return yeildRegisterState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VerifyPhone value)? verifyPhone,
    TResult Function(_GenerateOTP value)? generateOTP,
    TResult Function(_Login value)? login,
    TResult Function(_YieldRegisterState value)? yeildRegisterState,
    TResult Function(_Register value)? register,
    required TResult orElse(),
  }) {
    if (yeildRegisterState != null) {
      return yeildRegisterState(this);
    }
    return orElse();
  }
}

abstract class _YieldRegisterState implements AuthenticationpageEvent {
  const factory _YieldRegisterState() = _$_YieldRegisterState;
}

/// @nodoc
abstract class _$RegisterCopyWith<$Res> {
  factory _$RegisterCopyWith(_Register value, $Res Function(_Register) then) =
      __$RegisterCopyWithImpl<$Res>;
  $Res call(
      {String name,
      String phone,
      String password,
      String? referredLink,
      String? referalId});
}

/// @nodoc
class __$RegisterCopyWithImpl<$Res>
    extends _$AuthenticationpageEventCopyWithImpl<$Res>
    implements _$RegisterCopyWith<$Res> {
  __$RegisterCopyWithImpl(_Register _value, $Res Function(_Register) _then)
      : super(_value, (v) => _then(v as _Register));

  @override
  _Register get _value => super._value as _Register;

  @override
  $Res call({
    Object? name = freezed,
    Object? phone = freezed,
    Object? password = freezed,
    Object? referredLink = freezed,
    Object? referalId = freezed,
  }) {
    return _then(_Register(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      referredLink: referredLink == freezed
          ? _value.referredLink
          : referredLink // ignore: cast_nullable_to_non_nullable
              as String?,
      referalId: referalId == freezed
          ? _value.referalId
          : referalId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Register implements _Register {
  const _$_Register(
      {required this.name,
      required this.phone,
      required this.password,
      this.referredLink,
      this.referalId});

  @override
  final String name;
  @override
  final String phone;
  @override
  final String password;
  @override
  final String? referredLink;
  @override
  final String? referalId;

  @override
  String toString() {
    return 'AuthenticationpageEvent.register(name: $name, phone: $phone, password: $password, referredLink: $referredLink, referalId: $referalId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Register &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.phone, phone) ||
                const DeepCollectionEquality().equals(other.phone, phone)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.referredLink, referredLink) ||
                const DeepCollectionEquality()
                    .equals(other.referredLink, referredLink)) &&
            (identical(other.referalId, referalId) ||
                const DeepCollectionEquality()
                    .equals(other.referalId, referalId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(phone) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(referredLink) ^
      const DeepCollectionEquality().hash(referalId);

  @JsonKey(ignore: true)
  @override
  _$RegisterCopyWith<_Register> get copyWith =>
      __$RegisterCopyWithImpl<_Register>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phone) verifyPhone,
    required TResult Function(String phone, String signature, int otp)
        generateOTP,
    required TResult Function(String phone, String password) login,
    required TResult Function() yeildRegisterState,
    required TResult Function(String name, String phone, String password,
            String? referredLink, String? referalId)
        register,
  }) {
    return register(name, phone, password, referredLink, referalId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phone)? verifyPhone,
    TResult Function(String phone, String signature, int otp)? generateOTP,
    TResult Function(String phone, String password)? login,
    TResult Function()? yeildRegisterState,
    TResult Function(String name, String phone, String password,
            String? referredLink, String? referalId)?
        register,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(name, phone, password, referredLink, referalId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_VerifyPhone value) verifyPhone,
    required TResult Function(_GenerateOTP value) generateOTP,
    required TResult Function(_Login value) login,
    required TResult Function(_YieldRegisterState value) yeildRegisterState,
    required TResult Function(_Register value) register,
  }) {
    return register(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_VerifyPhone value)? verifyPhone,
    TResult Function(_GenerateOTP value)? generateOTP,
    TResult Function(_Login value)? login,
    TResult Function(_YieldRegisterState value)? yeildRegisterState,
    TResult Function(_Register value)? register,
    required TResult orElse(),
  }) {
    if (register != null) {
      return register(this);
    }
    return orElse();
  }
}

abstract class _Register implements AuthenticationpageEvent {
  const factory _Register(
      {required String name,
      required String phone,
      required String password,
      String? referredLink,
      String? referalId}) = _$_Register;

  String get name => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String? get referredLink => throw _privateConstructorUsedError;
  String? get referalId => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$RegisterCopyWith<_Register> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AuthenticationpageStateTearOff {
  const _$AuthenticationpageStateTearOff();

  _Initial initial({required bool isLoading}) {
    return _Initial(
      isLoading: isLoading,
    );
  }

  _LoginState loginState({required bool isLoading}) {
    return _LoginState(
      isLoading: isLoading,
    );
  }

  _RegisterState registerState({required bool isLoading}) {
    return _RegisterState(
      isLoading: isLoading,
    );
  }

  _OTPState otpState() {
    return const _OTPState();
  }
}

/// @nodoc
const $AuthenticationpageState = _$AuthenticationpageStateTearOff();

/// @nodoc
mixin _$AuthenticationpageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading) initial,
    required TResult Function(bool isLoading) loginState,
    required TResult Function(bool isLoading) registerState,
    required TResult Function() otpState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? initial,
    TResult Function(bool isLoading)? loginState,
    TResult Function(bool isLoading)? registerState,
    TResult Function()? otpState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoginState value) loginState,
    required TResult Function(_RegisterState value) registerState,
    required TResult Function(_OTPState value) otpState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoginState value)? loginState,
    TResult Function(_RegisterState value)? registerState,
    TResult Function(_OTPState value)? otpState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationpageStateCopyWith<$Res> {
  factory $AuthenticationpageStateCopyWith(AuthenticationpageState value,
          $Res Function(AuthenticationpageState) then) =
      _$AuthenticationpageStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticationpageStateCopyWithImpl<$Res>
    implements $AuthenticationpageStateCopyWith<$Res> {
  _$AuthenticationpageStateCopyWithImpl(this._value, this._then);

  final AuthenticationpageState _value;
  // ignore: unused_field
  final $Res Function(AuthenticationpageState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
  $Res call({bool isLoading});
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$AuthenticationpageStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;

  @override
  $Res call({
    Object? isLoading = freezed,
  }) {
    return _then(_Initial(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial({required this.isLoading});

  @override
  final bool isLoading;

  @override
  String toString() {
    return 'AuthenticationpageState.initial(isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initial &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isLoading);

  @JsonKey(ignore: true)
  @override
  _$InitialCopyWith<_Initial> get copyWith =>
      __$InitialCopyWithImpl<_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading) initial,
    required TResult Function(bool isLoading) loginState,
    required TResult Function(bool isLoading) registerState,
    required TResult Function() otpState,
  }) {
    return initial(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? initial,
    TResult Function(bool isLoading)? loginState,
    TResult Function(bool isLoading)? registerState,
    TResult Function()? otpState,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(isLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoginState value) loginState,
    required TResult Function(_RegisterState value) registerState,
    required TResult Function(_OTPState value) otpState,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoginState value)? loginState,
    TResult Function(_RegisterState value)? registerState,
    TResult Function(_OTPState value)? otpState,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthenticationpageState {
  const factory _Initial({required bool isLoading}) = _$_Initial;

  bool get isLoading => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$InitialCopyWith<_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoginStateCopyWith<$Res> {
  factory _$LoginStateCopyWith(
          _LoginState value, $Res Function(_LoginState) then) =
      __$LoginStateCopyWithImpl<$Res>;
  $Res call({bool isLoading});
}

/// @nodoc
class __$LoginStateCopyWithImpl<$Res>
    extends _$AuthenticationpageStateCopyWithImpl<$Res>
    implements _$LoginStateCopyWith<$Res> {
  __$LoginStateCopyWithImpl(
      _LoginState _value, $Res Function(_LoginState) _then)
      : super(_value, (v) => _then(v as _LoginState));

  @override
  _LoginState get _value => super._value as _LoginState;

  @override
  $Res call({
    Object? isLoading = freezed,
  }) {
    return _then(_LoginState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_LoginState implements _LoginState {
  const _$_LoginState({required this.isLoading});

  @override
  final bool isLoading;

  @override
  String toString() {
    return 'AuthenticationpageState.loginState(isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoginState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isLoading);

  @JsonKey(ignore: true)
  @override
  _$LoginStateCopyWith<_LoginState> get copyWith =>
      __$LoginStateCopyWithImpl<_LoginState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading) initial,
    required TResult Function(bool isLoading) loginState,
    required TResult Function(bool isLoading) registerState,
    required TResult Function() otpState,
  }) {
    return loginState(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? initial,
    TResult Function(bool isLoading)? loginState,
    TResult Function(bool isLoading)? registerState,
    TResult Function()? otpState,
    required TResult orElse(),
  }) {
    if (loginState != null) {
      return loginState(isLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoginState value) loginState,
    required TResult Function(_RegisterState value) registerState,
    required TResult Function(_OTPState value) otpState,
  }) {
    return loginState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoginState value)? loginState,
    TResult Function(_RegisterState value)? registerState,
    TResult Function(_OTPState value)? otpState,
    required TResult orElse(),
  }) {
    if (loginState != null) {
      return loginState(this);
    }
    return orElse();
  }
}

abstract class _LoginState implements AuthenticationpageState {
  const factory _LoginState({required bool isLoading}) = _$_LoginState;

  bool get isLoading => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$LoginStateCopyWith<_LoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RegisterStateCopyWith<$Res> {
  factory _$RegisterStateCopyWith(
          _RegisterState value, $Res Function(_RegisterState) then) =
      __$RegisterStateCopyWithImpl<$Res>;
  $Res call({bool isLoading});
}

/// @nodoc
class __$RegisterStateCopyWithImpl<$Res>
    extends _$AuthenticationpageStateCopyWithImpl<$Res>
    implements _$RegisterStateCopyWith<$Res> {
  __$RegisterStateCopyWithImpl(
      _RegisterState _value, $Res Function(_RegisterState) _then)
      : super(_value, (v) => _then(v as _RegisterState));

  @override
  _RegisterState get _value => super._value as _RegisterState;

  @override
  $Res call({
    Object? isLoading = freezed,
  }) {
    return _then(_RegisterState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_RegisterState implements _RegisterState {
  const _$_RegisterState({required this.isLoading});

  @override
  final bool isLoading;

  @override
  String toString() {
    return 'AuthenticationpageState.registerState(isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RegisterState &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isLoading);

  @JsonKey(ignore: true)
  @override
  _$RegisterStateCopyWith<_RegisterState> get copyWith =>
      __$RegisterStateCopyWithImpl<_RegisterState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading) initial,
    required TResult Function(bool isLoading) loginState,
    required TResult Function(bool isLoading) registerState,
    required TResult Function() otpState,
  }) {
    return registerState(isLoading);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? initial,
    TResult Function(bool isLoading)? loginState,
    TResult Function(bool isLoading)? registerState,
    TResult Function()? otpState,
    required TResult orElse(),
  }) {
    if (registerState != null) {
      return registerState(isLoading);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoginState value) loginState,
    required TResult Function(_RegisterState value) registerState,
    required TResult Function(_OTPState value) otpState,
  }) {
    return registerState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoginState value)? loginState,
    TResult Function(_RegisterState value)? registerState,
    TResult Function(_OTPState value)? otpState,
    required TResult orElse(),
  }) {
    if (registerState != null) {
      return registerState(this);
    }
    return orElse();
  }
}

abstract class _RegisterState implements AuthenticationpageState {
  const factory _RegisterState({required bool isLoading}) = _$_RegisterState;

  bool get isLoading => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$RegisterStateCopyWith<_RegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$OTPStateCopyWith<$Res> {
  factory _$OTPStateCopyWith(_OTPState value, $Res Function(_OTPState) then) =
      __$OTPStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$OTPStateCopyWithImpl<$Res>
    extends _$AuthenticationpageStateCopyWithImpl<$Res>
    implements _$OTPStateCopyWith<$Res> {
  __$OTPStateCopyWithImpl(_OTPState _value, $Res Function(_OTPState) _then)
      : super(_value, (v) => _then(v as _OTPState));

  @override
  _OTPState get _value => super._value as _OTPState;
}

/// @nodoc

class _$_OTPState implements _OTPState {
  const _$_OTPState();

  @override
  String toString() {
    return 'AuthenticationpageState.otpState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _OTPState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading) initial,
    required TResult Function(bool isLoading) loginState,
    required TResult Function(bool isLoading) registerState,
    required TResult Function() otpState,
  }) {
    return otpState();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading)? initial,
    TResult Function(bool isLoading)? loginState,
    TResult Function(bool isLoading)? registerState,
    TResult Function()? otpState,
    required TResult orElse(),
  }) {
    if (otpState != null) {
      return otpState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoginState value) loginState,
    required TResult Function(_RegisterState value) registerState,
    required TResult Function(_OTPState value) otpState,
  }) {
    return otpState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoginState value)? loginState,
    TResult Function(_RegisterState value)? registerState,
    TResult Function(_OTPState value)? otpState,
    required TResult orElse(),
  }) {
    if (otpState != null) {
      return otpState(this);
    }
    return orElse();
  }
}

abstract class _OTPState implements AuthenticationpageState {
  const factory _OTPState() = _$_OTPState;
}
