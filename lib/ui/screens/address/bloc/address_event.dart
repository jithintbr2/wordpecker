part of 'address_bloc.dart';

@freezed
class AddressEvent with _$AddressEvent {
  const factory AddressEvent.fetchSavedAddress() = _FetchSavedAddress;
  const factory AddressEvent.deleteAddress(AddressModel address) =
      _DeleteAddress;
  const factory AddressEvent.selectAddress(
      AddressModel address, bool shouldReturn) = _SelectAddress;
  const factory AddressEvent.emitLoad() = _EmitLoad;
}
