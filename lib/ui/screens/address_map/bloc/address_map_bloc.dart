import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:woodle/core/models/address/address_model.dart';
import 'package:woodle/core/repository/repository.dart';
import 'package:woodle/core/services/storage.dart';
import 'package:woodle/core/settings/config.dart';

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
      final serviceAvailablityResponse =
          await repository.checkServiceAvailability(event.lat, event.lng);

      serviceAvailablityResponse.when(success: (franchiseId) async {
        if (franchiseId != -1) {
          final addResponse = await repository.addAddress(
              event.locality,
              event.house,
              event.nickName,
              event.pincode,
              event.lat,
              event.lng,
              franchiseId);

          addResponse.when(success: (id) {
            localStorage.set(
                'currentAddress',
                jsonEncode(AddressModel(
                    id: id,
                    house: event.house,
                    locality: event.locality,
                    pin: int.parse(event.pincode),
                    lat: event.lat,
                    lng: event.lng,
                    nickName: event.nickName,
                    franchiseId: franchiseId)));
            Navigator.of(context).pushNamedAndRemoveUntil(
                Config.useDashboardEntry ? '/homeDashboard' : '/home',
                (route) => false);
          }, failure: (error) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text(
                  'Service Available but could not save address. Try again later.'),
              backgroundColor: Colors.orange,
              elevation: 10,
              behavior: SnackBarBehavior.floating,
              margin: EdgeInsets.all(10),
            ));
            emit(_Loaded());
          });
        } else {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text('Service Not Available.'),
            backgroundColor: Colors.red,
            elevation: 10,
            behavior: SnackBarBehavior.floating,
            margin: EdgeInsets.all(10),
          ));

          emit(_Loaded());
        }
      }, failure: (error) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('Something Went Wrong'),
          backgroundColor: Colors.red,
          elevation: 10,
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.all(10),
        ));

        emit(_Loaded());
      });
    }

    if (event is _UseAddress) {
      yield _Loading();
      final serviceAvailablityResponse =
          await repository.checkServiceAvailability(event.lat, event.lng);

      serviceAvailablityResponse.when(success: (franchiseId) {
        if (franchiseId != -1) {
          localStorage.set(
              'currentAddress',
              jsonEncode(AddressModel(
                  id: -1,
                  house: event.house,
                  locality: event.locality,
                  pin: int.parse(event.pincode),
                  lat: event.lat,
                  lng: event.lng,
                  nickName: event.nickName,
                  franchiseId: franchiseId)));
          Navigator.of(context).pushNamedAndRemoveUntil(
              Config.useDashboardEntry ? '/homeDashboard' : '/home',
              (route) => false);
        } else {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text('Service Not Available.'),
            backgroundColor: Colors.red,
            elevation: 10,
            behavior: SnackBarBehavior.floating,
            margin: EdgeInsets.all(10),
          ));

          emit(_Loaded());
        }
      }, failure: (error) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('Something Went Wrong'),
          backgroundColor: Colors.red,
          elevation: 10,
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.all(10),
        ));

        emit(_Loaded());
      });
    }
  }
}
