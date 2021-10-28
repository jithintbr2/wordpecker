import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:woodle/core/models/home_page/home_page_model.dart';
import 'package:woodle/core/network/api_response/api_response.dart';
import 'package:woodle/core/network/network_exceptions/network_exceptions.dart';
import 'package:woodle/core/repository/repository.dart';
import 'package:woodle/core/services/storage.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  ApplicationRepository repository;
  LocalStorage localStorage;
  BuildContext context;
  HomeBloc({
    required this.repository,
    required this.localStorage,
    required this.context,
  }) : super(_Loading());

  @override
  Stream<HomeState> mapEventToState(
    HomeEvent event,
  ) async* {
    if (event is _FetchData) {
      yield _Loading();
      ApiResponse<HomePageModel> response =
          await repository.fetchHomePageData(event.franchiseId);
      response.when(
          success: (data) => {
                localStorage.set('minOrderCost', data.minOrderCost ?? 0),
                emit(_Loaded(data))
              },
          failure: (error) => emit(_Failed(error)));
    }

    if (event is _Logout) {
      final firebaseId = await FirebaseMessaging.instance.getToken();
      final response = await repository.logout(firebaseId);
      response.when(success: (data) {
        if (data) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text('Logged out'),
            backgroundColor: Colors.green,
            elevation: 10,
            behavior: SnackBarBehavior.floating,
            margin: EdgeInsets.all(10),
          ));
          localStorage.remove('type');
          localStorage.remove('vehicle');
          localStorage.remove('currentAddress');
          localStorage.remove('token');
        } else {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text('Could not log out'),
            backgroundColor: Colors.red,
            elevation: 10,
            behavior: SnackBarBehavior.floating,
            margin: EdgeInsets.all(10),
          ));
        }
      }, failure: (error) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('Something went Wrong'),
          backgroundColor: Colors.red,
          elevation: 10,
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.all(10),
        ));
      });
    }
  }
}
