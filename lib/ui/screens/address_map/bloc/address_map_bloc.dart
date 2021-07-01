import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:woodle/core/models/address/address_model.dart';
import 'package:woodle/core/repository/repository.dart';
import 'package:woodle/core/services/storage.dart';

part 'address_map_event.dart';
part 'address_map_state.dart';
part 'address_map_bloc.freezed.dart';

class AddressMapBloc extends Bloc<AddressMapEvent, AddressMapState> {
  ApplicationRepository repository;
  LocalStorage localStorage;
  BuildContext context;
  AddressMapBloc(
      {required this.localStorage,
      required this.repository,
      required this.context})
      : super(_Loaded());

  @override
  Stream<AddressMapState> mapEventToState(
    AddressMapEvent event,
  ) async* {
    if (event is _SaveAddress) {
      yield _Loading();
      try {
        final franchiseId =
            await repository.checkServiceAvailability(event.lat, event.lng);

        if (franchiseId != -1) {
          final response = await repository.addAddress(
              event.locality,
              event.house,
              event.nickName,
              event.pincode,
              event.lat,
              event.lng,
              franchiseId);
          if (response != null) {
            localStorage.set('franchiseId', franchiseId);
            localStorage.set(
                'currentAddress',
                AddressModel(
                    id: response,
                    house: event.house,
                    locality: event.locality,
                    pin: int.parse(event.pincode),
                    lat: event.lat,
                    lng: event.lng,
                    nickName: event.nickName,
                    franchiseId: franchiseId));
            Navigator.of(context)
                .pushNamedAndRemoveUntil('/home', (route) => false);
          } else {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(
                  'Service Available but could not save address. Try again later.'),
              backgroundColor: Colors.red,
              elevation: 10,
              behavior: SnackBarBehavior.floating,
              margin: EdgeInsets.all(10),
            ));

            yield _Loaded();
          }
        } else {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text('Service Not Available.'),
            backgroundColor: Colors.red,
            elevation: 10,
            behavior: SnackBarBehavior.floating,
            margin: EdgeInsets.all(10),
          ));

          yield _Loaded();
        }
      } catch (e) {}
    }

    if (event is _UseAddress) {
      yield _Loading();

      try {
        final franchiseId =
            await repository.checkServiceAvailability(event.lat, event.lng);
        if (franchiseId != -1) {
          localStorage.set(
              'currentAddress',
              AddressModel(
                  id: -1,
                  house: event.house,
                  locality: event.locality,
                  pin: int.parse(event.pincode),
                  lat: event.lat,
                  lng: event.lng,
                  nickName: event.nickName,
                  franchiseId: franchiseId));
          Navigator.of(context)
              .pushNamedAndRemoveUntil('/home', (route) => false);
        } else {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text('Service Not Available.'),
            backgroundColor: Colors.red,
            elevation: 10,
            behavior: SnackBarBehavior.floating,
            margin: EdgeInsets.all(10),
          ));

          yield _Loaded();
        }
      } catch (e) {}
    }
  }
}
