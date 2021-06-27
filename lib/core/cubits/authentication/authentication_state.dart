part of 'authentication_cubit.dart';

class AuthenticationState {
  UserModel? user;
  bool updateAvailable;

  AuthenticationState({required this.updateAvailable, this.user});
}
