import 'package:flutter/material.dart';
import 'package:pinterest/app_routes.dart';
import 'package:pinterest/home_page.dart';
import 'package:pinterest/identity_card.dart';
import 'package:pinterest/mobile_app.dart';
import 'package:pinterest/mobile_app2.dart';
import 'package:pinterest/monday_class.dart';
import 'package:pinterest/multiplication.dart';
import 'package:pinterest/simple_interest.dart';
import 'package:pinterest/subtraction.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: IdentityCard(),
      initialRoute: AppRoute.home,
      routes: AppRoute.getAppRoutes(),
      // base flutter widget
    );
  }
}
