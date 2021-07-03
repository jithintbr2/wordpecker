part of 'wallet_bloc.dart';

@freezed
class WalletState with _$WalletState {
  const factory WalletState.loading() = _Loading;
  const factory WalletState.loaded(WalletModel data) = _Loaded;
  const factory WalletState.failed(NetworkExceptions exceptions) = _Failed;
}
