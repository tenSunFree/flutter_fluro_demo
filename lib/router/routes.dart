import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import './router_handlers.dart';

class Routes {
  static Router router;
  static String home = "/";
  static String login = "/login";
  static String dialog = "/dialog";

  static void configureRoutes(Router router) {
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      print("ROUTE WAS NOT FOUND !!!");
      return null;
    });

    router.define(home, handler: homeHandler);

    router.define(login, handler: loginHandler);

    router.define(dialog, handler: dialogHandler);
  }
}
