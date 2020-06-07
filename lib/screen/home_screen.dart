import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterflurodemo/router/routes.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset("assets/images/home_screen.png"),
        Column(
          children: <Widget>[
            Expanded(flex: 33, child: SizedBox()),
            Expanded(
              flex: 10,
              child: GestureDetector(
                onTap: () {
                  String message = '嗶悠遊卡支付週四滿388送20現金折價券活動';
                  Routes.router.navigateTo(context,
                      "${Routes.login}?message=${Uri.encodeComponent(message)}",
                      transition: TransitionType.inFromRight,
                      transitionDuration: const Duration(milliseconds: 500));
                },
              ),
            ),
            Expanded(flex: 77, child: SizedBox()),
          ],
        ),
      ],
    );
  }
}
