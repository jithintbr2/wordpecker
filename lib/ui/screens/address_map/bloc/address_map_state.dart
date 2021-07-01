part of 'address_map_bloc.dart';

@freezed
class AddressMapState with _$AddressMapState {
  const factory AddressMapState.loading() = _Loading;
  const factory AddressMapState.loaded() = _Loaded;
}
