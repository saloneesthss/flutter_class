import 'package:flutter/material.dart';

class MobileApp extends StatelessWidget {
  const MobileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Flutter App',
          style: TextStyle(fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.indigo),),
      ),
      body: Center(
        child: Text('Hi, This is a basic flutter app'),
      ),
    );
  }
}
