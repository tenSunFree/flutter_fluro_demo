import 'package:flutter/painting.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutterflurodemo/screen/home_screen.dart';
import 'package:flutterflurodemo/screen/login_screen.dart';

var homeHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) =>
        HomeScreen());

var loginHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  String message = params["message"]?.first;
  return LoginScreen(message: message);
});

var dialogHandler = Handler(
    type: HandlerType.function,
    // ignore: missing_return
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      String message = params["message"]?.first;
      showCustomDialog(context, message);
    });

void showCustomDialog(BuildContext context, String message) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
            title: Text("活動",
                style: TextStyle(
                    color: const Color(0xFF00D6F7),
                    fontFamily: "Lazer84",
                    fontSize: 22.0)),
            content: Text("$message"),
            actions: <Widget>[
              Padding(
                  padding: EdgeInsets.only(bottom: 8.0, right: 8.0),
                  child: FlatButton(
                      onPressed: () => Navigator.of(context).pop(true),
                      child: Text("OK")))
            ]);
      });
}
