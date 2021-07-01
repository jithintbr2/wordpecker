import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:woodle/core/models/address/address_model.dart';
import 'package:woodle/core/repository/repository.dart';
import 'package:woodle/core/services/storage.dart';

part 'address_event.dart';
part 'address_state.dart';
part 'address_bloc.freezed.dart';

class AddressBloc extends Bloc<AddressEvent, AddressState> {
  ApplicationRepository repository;
  LocalStorage localStorage;
  AddressBloc({
    required this.localStorage,
    required this.repository,
  }) : super(_Loading());

  @override
  Stream<AddressState> mapEventToState(
    AddressEvent event,
  ) async* {
    if (event is _FetchSavedAddress) {
      try {
        final response = await repository.fetchSavedAddress();
        yield _Loaded(response);
      } catch (e) {}
    }
  }
}
