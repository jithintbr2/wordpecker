import 'package:flutter/material.dart';

class RegisterCard extends StatelessWidget {
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
    final _formKey = GlobalKey<FormState>();
    return Form(
      key: _formKey,
      child: Card(
        margin: EdgeInsets.symmetric(horizontal: 20),
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 16),
              _logo(),
              SizedBox(height: 8),
              Text(
                'Register',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              TextFormField(
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
              ),
              SizedBox(height: 10),
              TextFormField(
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
                    icon: Icon(Icons.password),
                    isDense: true,
                    border: OutlineInputBorder()),
              ),
              SizedBox(height: 10),
              TextFormField(
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
                    icon: Icon(Icons.password),
                    isDense: true,
                    border: OutlineInputBorder()),
              ),
              SizedBox(height: 10),
              referalId != null
                  ? TextFormField(
                      controller: referalId,
                      enabled: !isLoading,
                      decoration: InputDecoration(
                          counterText: "",
                          labelText: "Referal Id",
                          icon: Icon(Icons.pages),
                          isDense: true,
                          border: OutlineInputBorder()),
                    )
                  : SizedBox(),
              SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      onRegister();
                    }
                  },
                  child: Text("Register"))
            ],
          ),
        ),
      ),
    );
  }

  Widget _logo() {
    return SizedBox(height: 80);
    // child: Image.asset(
    //   IA_APP_LOGO,
    // ));
  }
}
