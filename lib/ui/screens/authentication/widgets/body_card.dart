import 'package:flutter/material.dart';
import 'package:woodle/core/settings/assets.dart';

class BodyCard extends StatelessWidget {
  final TextEditingController controller;
  final bool isLoading;
  final String label;
  final String buttonText;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final void Function()? onSubmit;
  final void Function()? onForgotPassword;
  final bool? isPassword;
  const BodyCard({
    required this.buttonText,
    required this.label,
    required this.controller,
    this.keyboardType,
    this.validator,
    this.isPassword,
    this.isLoading = false,
    required this.onSubmit,
    this.onForgotPassword,
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
        child: Container(
          height: 450,
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 50),
              Hero(
                  tag: 'logo',
                  child: Image.asset(Assets.appIcon,
                      height: 80, fit: BoxFit.contain)),
              SizedBox(height: 30),
              Padding(
                padding:
                    EdgeInsets.only(top: 8.0, bottom: 8, left: 16, right: 48),
                child: TextFormField(
                  controller: controller,
                  enabled: !isLoading,
                  validator: validator,
                  keyboardType: keyboardType,
                  obscureText: isPassword ?? false,
                  decoration: InputDecoration(
                      counterText: "",
                      labelText: label,
                      icon: Icon(Icons.phone_android),
                      isDense: true,
                      border: OutlineInputBorder()),
                ),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 50),
                  child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          onSubmit!();
                        }
                      },
                      child: isLoading
                          ? SizedBox(
                              height: 25,
                              width: 25,
                              child: CircularProgressIndicator(
                                color: Colors.white,
                                strokeWidth: 2,
                              ),
                            )
                          : Text(buttonText))),
              onForgotPassword == null
                  ? Container(
                      height: 100,
                      alignment: Alignment.bottomRight,
                      child: TextButton(
                        child: Text("Back",
                            style: TextStyle(
                                color: Theme.of(context).primaryColor)),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    )
                  : Container(
                      height: 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            child: Text("Forgot Password ?",
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor)),
                            onPressed: onForgotPassword,
                          ),
                          TextButton(
                            child: Text("Back",
                                style: TextStyle(
                                    color: Theme.of(context).primaryColor)),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      ))
            ],
          ),
        ),
      ),
    );
  }
}
