import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:woodle/core/settings/assets.dart';
import 'package:woodle/core/settings/config.dart';
import 'package:woodle/ui/screens/password_change/bloc/password_change_bloc.dart';

final _key = GlobalKey<FormState>();

class PasswordChangePage extends HookWidget {
  const PasswordChangePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _newPasswordController = useTextEditingController();
    final _newPasswordConfirmController = useTextEditingController();
    return Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(Assets.loginBackground),
                      fit: BoxFit.cover)),
            ),
            Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Theme.of(context).primaryColor.withOpacity(0.7),
                      Colors.transparent
                    ], begin: Alignment.bottomCenter, end: Alignment.topCenter))),
            Center(
                child: Form(
                  key: _key,
                  child: Card(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    elevation: 5,
                    shape:
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
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
                            padding: EdgeInsets.only(
                                top: 8.0, bottom: 8, left: 16, right: 48),
                            child: TextFormField(
                              style: TextStyle(
                                  color: Colors.black, fontFamily: Config.fontFamily),
                              controller: _newPasswordController,
                              validator: (value) {
                                if (value != null && value.isNotEmpty) return null;
                                return "Can't be empty";
                              },
                              obscureText: true,
                              decoration: InputDecoration(
                                  counterText: "",
                                  labelText: "New Password",
                                  icon: Icon(Icons.password),
                                  isDense: true,
                                  border: OutlineInputBorder()),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: 8.0, bottom: 8, left: 16, right: 48),
                            child: TextFormField(
                              style: TextStyle(
                                  color: Colors.black, fontFamily: Config.fontFamily),
                              controller: _newPasswordConfirmController,
                              validator: (value) {
                                if (value != null &&
                                    value.isNotEmpty &&
                                    _newPasswordController.text == value) return null;
                                return "Password Mismatch";
                              },
                              obscureText: true,
                              decoration: InputDecoration(
                                  counterText: "",
                                  labelText: "Confirm New Password",
                                  icon: Icon(Icons.password),
                                  isDense: true,
                                  border: OutlineInputBorder()),
                            ),
                          ),
                          Padding(
                              padding:
                              EdgeInsets.symmetric(vertical: 8.0, horizontal: 50),
                              child:
                              BlocBuilder<PasswordChangeBloc, PasswordChangeState>(
                                  builder: (context, state) {
                                    return state.when(
                                        busy: () => Center(
                                          child: SizedBox(
                                            width: 30,
                                            height: 30,
                                            child: CircularProgressIndicator(),
                                          ),
                                        ),
                                        idle: () => ElevatedButton(
                                            onPressed: () {
                                              if (_key.currentState!.validate()) {
                                                context.read<PasswordChangeBloc>().add(
                                                    PasswordChangeEvent.changePassword(
                                                        _newPasswordController.text));
                                              }
                                            },
                                            child: Text('Reset')));
                                  })),
                          Container(
                            height: 70,
                            alignment: Alignment.bottomRight,
                            child: TextButton(
                              child: Text("Back",
                                  style:
                                  TextStyle(color: Theme.of(context).primaryColor)),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ))
          ],
        ));
  }
}