import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutterflurodemo/router/routes.dart';

class Application extends StatefulWidget {
  @override
  State createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  _ApplicationState() {
    final router = Router();
    Routes.configureRoutes(router);
    Routes.router = router;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'FlutterFluroDemo', onGenerateRoute: Routes.router.generator);
  }
}
