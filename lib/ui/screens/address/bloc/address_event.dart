part of 'address_bloc.dart';

@freezed
class AddressEvent with _$AddressEvent {
  const factory AddressEvent.fetchSavedAddress() = _FetchSavedAddress;
  const factory AddressEvent.deleteAddress() = _DeleteAddress;
}
