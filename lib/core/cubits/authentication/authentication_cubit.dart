import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:woodle/core/models/user/user_model.dart';

part 'authentication_state.dart';
part 'authentication_cubit.freezed.dart';

class AuthenticationCubit extends Cubit<AuthenticationState> {
  AuthenticationCubit() : super(AuthenticationState.unknown());

  void _authenticate(UserModel user, bool updateAvailable) =>
      emit(AuthenticationState.authorized(
          user: user, updateAvailable: updateAvailable));

  void _unAuthenticate(bool updateAvailable) =>
      emit(AuthenticationState.unAuthorized(updateAvailable: updateAvailable));

  void changeState({UserModel? user, bool? updateAvailable}) {
    if (user != null)
      _authenticate(user, updateAvailable ?? false);
    else
      _unAuthenticate(updateAvailable ?? false);
  }
}
