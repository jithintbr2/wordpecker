import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:woodle/core/repository/repository.dart';
import 'package:woodle/core/settings/assets.dart';
import 'package:woodle/ui/screens/authentication/bloc/referal_check_bloc.dart';
import 'package:woodle/ui/screens/authentication/referral_code_widget_section.dart';

class RegisterCard extends HookWidget {
  final void Function() onRegister;
  final TextEditingController name;
  final TextEditingController password;
  final TextEditingController passwordConfirmation;
  final TextEditingController? referalId;
  final bool isLoading;
  const RegisterCard({
    required this.onRegister,
    required this.name,
    required this.password,
    required this.passwordConfirmation,
    required this.isLoading,
    this.referalId,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _showReferralBox = useState(false);
    final _formKey = GlobalKey<FormState>();
    return Form(
      key: _formKey,
      child: Card(
        margin: EdgeInsets.symmetric(horizontal: 20),
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 20),
              Hero(
                  tag: 'logo',
                  child: Image.asset(Assets.appIcon,
                      height: 80, fit: BoxFit.contain)),
              SizedBox(height: 30),
              Text(
                'Register',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                  child: TextFormField(
                    controller: name,
                    enabled: !isLoading,
                    validator: (value) {
                      if (value!.isEmpty) return "Enter your name";
                      return null;
                    },
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                        counterText: "",
                        labelText: "Name",
                        icon: Icon(Icons.person),
                        isDense: true,
                        border: OutlineInputBorder()),
                  )),
              Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                  child: TextFormField(
                    controller: password,
                    enabled: !isLoading,
                    validator: (value) {
                      if (value!.isEmpty) return "Enter a password";
                      return null;
                    },
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                        counterText: "",
                        labelText: "Password",
                        icon: Icon(Icons.lock_outline),
                        isDense: true,
                        border: OutlineInputBorder()),
                  )),
              Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                  child: TextFormField(
                    controller: passwordConfirmation,
                    enabled: !isLoading,
                    validator: (value) {
                      if (value != password.text) return "Password Mismatch";
                      return null;
                    },
                    obscureText: true,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                        counterText: "",
                        labelText: "Confirm Password",
                        icon: Icon(Icons.lock),
                        isDense: true,
                        border: OutlineInputBorder()),
                  )),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                child: InkWell(
                  onTap: () => _showReferralBox.value = !_showReferralBox.value,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Expanded(
                        child: Center(
                          child: RichText(
                            text: TextSpan(
                              style: DefaultTextStyle.of(context).style,
                              children: [
                                TextSpan(
                                    text: "Have a referral code?",
                                    style: Theme.of(context).textTheme.caption),
                                TextSpan(
                                    text: "Apply",
                                    style: Theme.of(context)
                                        .textTheme
                                        .caption!
                                        .copyWith(
                                            color:
                                                Theme.of(context).primaryColor))
                              ],
                            ),
                          ),
                        ),
                      ),
                      Icon(_showReferralBox.value
                          ? Icons.keyboard_arrow_up
                          : Icons.keyboard_arrow_down),
                    ],
                  ),
                ),
              ),
              referalId != null
                  ? BlocProvider(
                      create: (context) => ReferalCheckBloc(
                          repository: context.read<ApplicationRepository>()),
                      child: ReferralCodeWidgetSection(
                          visible: _showReferralBox.value,
                          controller: referalId!),
                    )
                  : SizedBox(),
              // Visibility(
              //   visible: _showReferralBox.value,
              //   child: Padding(
              //     padding:
              //         const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
              //     child: TextFormField(
              //       controller: referalId,
              //       keyboardType: TextInputType.text,
              //       enabled: !isLoading,
              //       decoration: InputDecoration(
              //           labelText: "Referral ID (optional)",
              //           icon: Icon(Icons.perm_identity),
              //           isDense: true,
              //           border: OutlineInputBorder()),
              //     ),
              //   ),
              // ),
              // SizedBox(height: 10),
              // referalId != null
              //     ? TextFormField(
              //         controller: referalId,
              //         enabled: !isLoading,
              //         decoration: InputDecoration(
              //             counterText: "",
              //             labelText: "Referal Id",
              //             icon: Icon(Icons.pages),
              //             isDense: true,
              //             border: OutlineInputBorder()),
              //       )
              //     : SizedBox(),
              Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8.0, horizontal: 56),
                  child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          onRegister();
                        }
                      },
                      child: Text("Register")))
            ],
          ),
        ),
      ),
    );
  }
}
