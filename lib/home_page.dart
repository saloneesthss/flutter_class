import 'package:flutter/material.dart';
import 'package:pinterest/app_routes.dart';
import 'package:pinterest/identity_card.dart';
import 'package:pinterest/monday_class.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffA0BEFF),
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Home Page',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          ElevatedButton(onPressed: () {
            Navigator.pushNamed(
                context,
                AppRoute.login,
            );
          }, child: Text('Login')),
          ElevatedButton(onPressed: () {
            Navigator.pushNamed(
              context,
              AppRoute.signup,
            );
          }, child: Text('Signup')),
          ElevatedButton(onPressed: () {
            Navigator.pushNamed(
                context,
                AppRoute.identityCard,
            );
          }, child: Text('Identity Card')),
          ElevatedButton(onPressed: () {

          }, child: Text('Monday Class')),
          ElevatedButton(onPressed: () {}, child: Text('Simple Interest')),
        ],
      ),
    );
  }
}
