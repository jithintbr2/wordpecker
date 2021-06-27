import 'package:bloc/bloc.dart';
import 'package:woodle/core/models/user/user_model.dart';

part 'authentication_state.dart';

class AuthenticationCubit extends Cubit<AuthenticationState> {
  AuthenticationCubit() : super(AuthenticationState(updateAvailable: false));

  void _authenticate(UserModel user, bool updateAvailable) =>
      emit(AuthenticationState(user: user, updateAvailable: updateAvailable));

  void _unAuthenticate(bool updateAvailable) =>
      emit(AuthenticationState(updateAvailable: updateAvailable, user: null));

  void changeState({UserModel? user, bool? updateAvailable}) {
    if (user != null)
      _authenticate(user, updateAvailable ?? state.updateAvailable);
    else
      _unAuthenticate(updateAvailable ?? state.updateAvailable);
  }
}
