import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:woodle/core/models/address/address_model.dart';
import 'package:woodle/core/network/api_response/api_response.dart';
import 'package:woodle/core/network/network_exceptions/network_exceptions.dart';
import 'package:woodle/core/repository/repository.dart';
import 'package:woodle/core/services/storage.dart';
import 'package:woodle/core/settings/config.dart';

part 'address_event.dart';
part 'address_state.dart';
part 'address_bloc.freezed.dart';

class AddressBloc extends Bloc<AddressEvent, AddressState> {
  ApplicationRepository repository;
  LocalStorage localStorage;
  BuildContext context;
  AddressBloc({
    required this.localStorage,
    required this.repository,
    required this.context,
  }) : super(_Loading());

  @override
  Stream<AddressState> mapEventToState(
    AddressEvent event,
  ) async* {
    if (event is _FetchSavedAddress) {
      ApiResponse<List<AddressModel>> response =
          await repository.fetchSavedAddress();
      response.when(
          success: (data) => emit(_Loaded(data)),
          failure: (error) => emit(_Failed(error)));
    }

    if (event is _SelectAddress) {
      AddressModel? _getAddress() {
        if (localStorage.get('currentAddress') != null) {
          Map<String, dynamic> currentAddressRaw =
              jsonDecode(localStorage.get('currentAddress') as String);
          return AddressModel.fromJson(currentAddressRaw);
        }
        return null;
      }

      AddressModel? address = _getAddress();

      if (event.shouldReturn) {
        localStorage.set('currentAddress', jsonEncode(event.address));
        Navigator.of(context).pop(event.address);
      } else if (address != null &&
          event.address.franchiseId != address.franchiseId) {
        showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  title: Text('Warning'),
                  content: Text(
                      'This service location is different from your current service location. By selecting this location your cart will be cleared.'),
                  actions: [
                    ElevatedButton(
                        onPressed: () {
                          localStorage.set('cart', []);
                          localStorage.set(
                              'currentAddress', jsonEncode(event.address));
                          Navigator.of(context).pushNamedAndRemoveUntil(
                              Config.useDashboardEntry
                                  ? '/homeDashboard'
                                  : '/home',
                              (route) => false);
                        },
                        child: Text('Okay')),
                    ElevatedButton(
                        onPressed: () => Navigator.of(context).pop(),
                        child: Text('Cancel'))
                  ],
                ));
      } else {
        localStorage.set('currentAddress', jsonEncode(event.address));
        Navigator.of(context).pushNamedAndRemoveUntil(
            Config.useDashboardEntry ? '/homeDashboard' : '/home',
            (route) => false);
      }
    }

    if (event is _DeleteAddress) {
      ApiResponse<bool> deleteRequestResponse =
          await repository.deleteSavedAddress(event.address.id);
      deleteRequestResponse.when(
          success: (data) async {
            ApiResponse<List<AddressModel>> response =
                await repository.fetchSavedAddress();
            response.when(
                success: (data) => emit(_Loaded(data)),
                failure: (error) => emit(_Failed(error)));
          },
          failure: (error) => emit(_Failed(error)));
    }
  }
}
