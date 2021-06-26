import 'package:flutter/material.dart';

class BodyCard extends StatelessWidget {
  final TextEditingController controller;
  final bool isLoading;
  final String label;
  final String buttonText;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final void Function()? onSubmit;
  const BodyCard({
    required this.buttonText,
    required this.label,
    required this.controller,
    this.keyboardType,
    this.validator,
    this.isLoading = false,
    required this.onSubmit,
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
              TextFormField(
                controller: controller,
                enabled: !isLoading,
                validator: validator,
                keyboardType: keyboardType,
                decoration: InputDecoration(
                    counterText: "",
                    labelText: label,
                    icon: Icon(Icons.phone_android),
                    isDense: true,
                    border: OutlineInputBorder()),
              ),
              ElevatedButton(
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
                      : Text(buttonText))
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
