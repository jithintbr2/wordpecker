part of 'address_bloc.dart';

@freezed
class AddressState with _$AddressState {
  const factory AddressState.loading() = _Loading;
  const factory AddressState.loaded(List<AddressModel> data) = _Loaded;
  const factory AddressState.failed(NetworkExceptions exceptions) = _Failed;
}
