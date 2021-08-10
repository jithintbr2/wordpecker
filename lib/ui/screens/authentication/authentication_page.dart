import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:woodle/ui/screens/authentication/bloc/authenticationpage_bloc.dart';
import 'package:woodle/ui/screens/authentication/widgets/body_card.dart';
import 'package:woodle/ui/screens/authentication/widgets/otp_card.dart';
import 'package:woodle/ui/screens/authentication/widgets/register_card.dart';
import 'package:woodle/ui/screens/authentication/widgets/reset_card.dart';
import 'package:woodle/ui/screens/authentication/widgets/styled_scaffold.dart';

class AuthenticationPage extends HookWidget {
  final String? referredLink;
  const AuthenticationPage({this.referredLink, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _phoneController = useTextEditingController();
    final _passwordController = useTextEditingController();
    final _passwordConfirmController = useTextEditingController();
    final _otpController = useTextEditingController();
    final _nameController = useTextEditingController();
    final _referalController = useTextEditingController();

    Widget _viewer = SizedBox();
    return StyledScaffold(child:
        BlocBuilder<AuthenticationpageBloc, AuthenticationpageState>(
            builder: (context, state) {
      state.when(initial: (isLoading) {
        _viewer = BodyCard(
            isLoading: isLoading,
            buttonText: "Proceed",
            label: "Phone Number",
            keyboardType: TextInputType.phone,
            validator: (value) {
              if (value!.length != 10) return "Enter valid mobile number";
              return null;
            },
            controller: _phoneController,
            onSubmit: () => context.read<AuthenticationpageBloc>().add(
                AuthenticationpageEvent.verifyPhone(
                    phone: _phoneController.text)));
      }, loginState: (isLoading) {
        _viewer = BodyCard(
            isLoading: isLoading,
            buttonText: "Login",
            label: "Password",
            isPassword: true,
            keyboardType: TextInputType.visiblePassword,
            validator: (value) {
              if (value!.length < 4) return "Enter a valid password";
              return null;
            },
            controller: _passwordController,
            onForgotPassword: () => context
                .read<AuthenticationpageBloc>()
                .add(AuthenticationpageEvent.yeildOTPState()),
            onSubmit: () => context.read<AuthenticationpageBloc>().add(
                AuthenticationpageEvent.login(
                    phone: _phoneController.text,
                    password: _passwordController.text)));
      }, otpState: (isResetting) {
        _viewer = OTPCard(
            sendOTP: (signature, generatedOTP) => context
                .read<AuthenticationpageBloc>()
                .add(AuthenticationpageEvent.generateOTP(
                    phone: _phoneController.text,
                    signature: signature,
                    otp: generatedOTP)),
            otp: _otpController,
            yeildRegisterState: () => context
                .read<AuthenticationpageBloc>()
                .add(isResetting
                    ? AuthenticationpageEvent.yeildResetState()
                    : AuthenticationpageEvent.yeildRegisterState()));
      }, registerState: (isLoading) {
        _viewer = RegisterCard(
          onRegister: () => context.read<AuthenticationpageBloc>().add(
              AuthenticationpageEvent.register(
                  name: _nameController.text,
                  phone: _phoneController.text,
                  password: _passwordController.text,
                  referalId: _referalController.text,
                  referredLink: referredLink)),
          name: _nameController,
          password: _passwordController,
          passwordConfirmation: _passwordConfirmController,
          isLoading: isLoading,
          referalId: referredLink == null ? _referalController : null,
        );
      }, resetState: (isLoading) {
        _viewer = ResetCard(
            onReset: () => context.read<AuthenticationpageBloc>().add(
                AuthenticationpageEvent.resetPassword(
                    phone: _phoneController.text,
                    password: _passwordController.text)),
            password: _passwordController,
            passwordConfirmation: _passwordConfirmController,
            isLoading: isLoading);
      });
      return _viewer;
    }));
  }
}
