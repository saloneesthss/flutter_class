import 'package:flutter/material.dart';
import 'package:pinterest/app_text_styles.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF3E8DF),
      body: Padding(
        padding: const EdgeInsets.only(top: 60, left: 20, right: 20, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/swastik-logo.png',
              width: 200,
            ),
            SizedBox(height: 12),
            Text(
              'Welcome Back',
              style: AppTextStyle.poppinsBold.copyWith(fontSize: 28),
            ),
            Text(
              'Make it work, Make it right, Make it fast',
              style: AppTextStyle.poppinsSemiBold.copyWith(fontSize: 16),
            ),
            SizedBox(height: 30),
            TextFormField(
              style: AppTextStyle.poppinsRegular.copyWith(fontSize: 14),
              keyboardType: TextInputType.emailAddress,
              controller: emailController,
              decoration: InputDecoration(
                hintText: 'E-Mail',
                hintStyle: AppTextStyle.poppinsRegular.copyWith(
                  fontSize: 14,
                  color: Colors.black.withOpacity(0.6),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 1),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 1),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 20,
                ),
                prefixIcon: Icon(Icons.person, size: 26),
              ),
            ),
            SizedBox(height: 14),
            TextFormField(
              style: AppTextStyle.poppinsRegular.copyWith(fontSize: 14),
              controller: passwordController,
              obscureText: isObscure,
              decoration: InputDecoration(
                hintText: 'Password',
                hintStyle: AppTextStyle.poppinsRegular.copyWith(
                  fontSize: 14,
                  color: Colors.black.withOpacity(0.6),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 1),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey, width: 1),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 20,
                ),
                prefixIcon: Icon(Icons.fingerprint, size: 26),
                suffixIcon: IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {
                    setState(() {
                      isObscure = !isObscure;
                    });
                  },
                  icon: Icon(isObscure ? Icons.visibility_off : Icons.visibility),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
