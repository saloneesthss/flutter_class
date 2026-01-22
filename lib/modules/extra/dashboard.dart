import 'package:flutter/material.dart';
import 'package:pinterest/constants/app_text_styles.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff010101),
      appBar: AppBar(
        backgroundColor: Color(0xff010101),
      ),
      body: Column(
        children: [
          TextFormField(
            style: AppTextStyle.poppinsRegular.copyWith(fontSize: 14),
            decoration: InputDecoration(
              filled: true,
              hintText: 'Enter Search Items',
              hintStyle: AppTextStyle.poppinsRegular.copyWith(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
