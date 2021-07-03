import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:woodle/core/models/address/address_model.dart';
import 'package:woodle/core/network/api_response/api_response.dart';
import 'package:woodle/core/network/network_exceptions/network_exceptions.dart';
import 'package:woodle/core/repository/repository.dart';
import 'package:woodle/core/services/storage.dart';

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
      localStorage.set('currentAddress', jsonEncode(event.address));
      Navigator.of(context).pushNamedAndRemoveUntil('/home', (route) => false);
    }
  }
}
