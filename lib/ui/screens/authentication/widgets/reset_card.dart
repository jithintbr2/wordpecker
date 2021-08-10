import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:woodle/core/settings/assets.dart';

class ResetCard extends HookWidget {
  final void Function() onReset;
  final TextEditingController password;
  final TextEditingController passwordConfirmation;
  final bool isLoading;
  const ResetCard({
    required this.onReset,
    required this.password,
    required this.passwordConfirmation,
    required this.isLoading,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    return Form(
      key: _formKey,
      child: Card(
        margin: EdgeInsets.symmetric(horizontal: 20),
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: isLoading
            ? Column(
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
                    'Resetting',
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 30),
                  Wrap(
                    alignment: WrapAlignment.center,
                    children: [
                      CircularProgressIndicator(),
                    ],
                  ),
                  SizedBox(height: 30),
                ],
              )
            : SingleChildScrollView(
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
                      'Reset with new password',
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 10),
                    Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 16),
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
                              labelText: "Password*",
                              icon: Icon(Icons.lock_outline),
                              isDense: true,
                              border: OutlineInputBorder()),
                        )),
                    Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 16),
                        child: TextFormField(
                          controller: passwordConfirmation,
                          enabled: !isLoading,
                          validator: (value) {
                            if (value != password.text)
                              return "Password Mismatch";
                            return null;
                          },
                          obscureText: true,
                          keyboardType: TextInputType.visiblePassword,
                          decoration: InputDecoration(
                              counterText: "",
                              labelText: "Confirm Password*",
                              icon: Icon(Icons.lock),
                              isDense: true,
                              border: OutlineInputBorder()),
                        )),
                    Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 8.0, horizontal: 56),
                        child: ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                onReset();
                              }
                            },
                            child: Text("Reset")))
                  ],
                ),
              ),
      ),
    );
  }
}
