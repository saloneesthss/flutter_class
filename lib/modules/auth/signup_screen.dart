import 'package:flutter/material.dart';
import 'package:pinterest/constants/app_routes.dart';
import 'package:pinterest/constants/app_text_styles.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final fullNameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/swastik-logo.png',
                  width: 200,
                ),
                Text(
                  'Get On Board!',
                  style: AppTextStyle.poppinsExtraBold.copyWith(fontSize: 28, fontWeight: FontWeight.w900),
                ),
                Text(
                  'Create your profile to start your Journey.',
                  style: AppTextStyle.poppinsSemiBold.copyWith(fontSize: 16),
                ),
                SizedBox(height: 15),
                TextFormField(
                  style: AppTextStyle.poppinsRegular.copyWith(fontSize: 14),
                  keyboardType: TextInputType.text,
                  controller: fullNameController,
                  validator: (value) {
                    if (value == null) {
                      return 'Please enter your full name';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: 'Full Name',
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
                    prefixIcon: Icon(Icons.person_outline_outlined, size: 26),
                  ),
                ),
                SizedBox(height: 12),
                TextFormField(
                  style: AppTextStyle.poppinsRegular.copyWith(fontSize: 14),
                  keyboardType: TextInputType.emailAddress,
                  controller: emailController,
                  validator: (value) {
                    if (value == null) {
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
                    prefixIcon: Icon(Icons.email_outlined, size: 26),
                  ),
                ),
                SizedBox(height: 12),
                TextFormField(
                  style: AppTextStyle.poppinsRegular.copyWith(fontSize: 14),
                  keyboardType: TextInputType.phone,
                  controller: phoneController,
                  validator: (value) {
                    if (value == null) {
                      return 'Please enter your phone number';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    hintText: 'Phone No',
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
                    prefixIcon: Icon(Icons.phone_outlined, size: 26),
                  ),
                ),
                SizedBox(height: 12),
                TextFormField(
                  style: AppTextStyle.poppinsRegular.copyWith(fontSize: 14),
                  controller: passwordController,
                  validator: (value) {
                    if (value == null) {
                      return 'Please enter your password';
                    } else if (value.length < 8) {
                      return 'Password must be at least 8 characters long';
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
                      print('Full Name: ${fullNameController.text}');
                      print('Email: ${emailController.text}');
                      print('Phone No: ${phoneController.text}');
                      print('Password: ${passwordController.text}');
                    }
                  },
                  child: Text('Signup',
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
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minimumSize: Size(double.infinity,56),
                  ),
                  onPressed: () {},
                  child: Text('Connect With Phone Number',
                    style: AppTextStyle.poppinsMedium.copyWith(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: Color(0xffC6D8E4),
                    minimumSize: Size(double.infinity,60),
                    side: BorderSide(color: Color(0xffC6D8E4),width: 1.5),
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
                      Text('Connect With Google',
                        style: AppTextStyle.poppinsMedium.copyWith(
                          fontSize: 18,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already have an account?',
                        style: AppTextStyle.poppinsMedium.copyWith(
                          fontSize: 18,
                          color: Colors.black,
                        )
                    ),
                    SizedBox(width: 8),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, AppRoute.login);
                      },
                      child: Text('Login',
                          style: AppTextStyle.poppinsMedium.copyWith(
                            fontSize: 18,
                            color: Colors.blue,
                          ),
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
