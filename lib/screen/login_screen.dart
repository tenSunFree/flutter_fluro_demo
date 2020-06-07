import 'package:flutter/material.dart';
import 'package:flutterflurodemo/router/routes.dart';

class LoginScreen extends StatefulWidget {
  final String message;

  LoginScreen({@required String message}) : this.message = message;

  @override
  _LoginScreen createState() => _LoginScreen();
}

class _LoginScreen extends State<LoginScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 600), () {
      print('延时1s执行');
      Routes.router.navigateTo(context,
          "${Routes.dialog}?message=${Uri.encodeComponent(widget.message)}");
    });
  }

  @override
  Widget build(BuildContext context) =>
      Image.asset("assets/images/login_screen.png");
}
