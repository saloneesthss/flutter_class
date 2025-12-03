import 'package:flutter/material.dart';
import 'package:pinterest/constants/app_routes.dart';
import 'package:pinterest/constants/app_text_styles.dart';
import 'package:pinterest/modules/home/bottom_navigation.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool isObscure = true;
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF3E8DF),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 60, left: 20, right: 20, bottom: 20),
          child: Form(
            key: formKey,
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
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    } else if (!value.contains('@')) {
                      return 'Please enter a valid email';
                    }
                    return null;
                  },
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
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    } else if (value.length < 8) {
                      return 'Password must be at least 8 characters';
                    }
                    return null;
                  },
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
                    
                SizedBox(height: 10),
                Align(
                  alignment:Alignment.centerRight,
                  child: TextButton(onPressed: () {}, child: Text('Forgot Password?',
                    style: AppTextStyle.poppinsMedium.copyWith(
                      color: Colors.blue,
                      fontSize: 16,
                    ),
                  ),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minimumSize: Size(double.infinity,56),
                  ),
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      // print('Email: ${emailController.text}');
                      // print('Password: ${passwordController.text}');
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BottomNavigation(),
                        ),
                            (route) => false,
                      );
                    }
                  },
                  child: Text('Login'.toUpperCase(),
                    style: AppTextStyle.poppinsMedium.copyWith(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'or'.toUpperCase(),
                    style: AppTextStyle.poppinsRegular.copyWith(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minimumSize: Size(double.infinity,60),
                    side: BorderSide(color: Colors.black,width: 1.5),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment:MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/google-logo.png',
                        width: 26,
                        height: 26,
                      ),
                      SizedBox(width: 10),
                      Text('Sign-In with Google',
                      style: AppTextStyle.poppinsMedium.copyWith(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Don\'t have an account?',
                      style: AppTextStyle.poppinsMedium.copyWith(
                        fontSize: 18,
                        color: Colors.black,
                      )
                    ),
                    SizedBox(width: 8),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, AppRoute.signup);
                      },
                      child: Text('Signup',
                        style: AppTextStyle.poppinsMedium.copyWith(
                          fontSize: 18,
                          color: Colors.blue,
                        )
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
