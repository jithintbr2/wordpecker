part of 'address_map_bloc.dart';

@freezed
class AddressMapEvent with _$AddressMapEvent {
  const factory AddressMapEvent.saveAddress({
    required String locality,
    required String house,
    required String nickName,
    required String pincode,
    required double lat,
    required double lng,
  }) = _SaveAddress;
  const factory AddressMapEvent.useAddress({
    required String locality,
    required String house,
    required String nickName,
    required String pincode,
    required double lat,
    required double lng,
    required bool shouldReturn,
  }) = _UseAddress;
}
