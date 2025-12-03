import 'package:pinterest/modules/extra/home_page.dart';
import 'package:pinterest/modules/auth/login_screen.dart';
import 'package:pinterest/modules/extra/identity_card.dart';
import 'package:pinterest/modules/extra/monday_class.dart';
import 'package:pinterest/modules/auth/signup_screen.dart';
import 'package:pinterest/modules/extra/simple_interest.dart';

class AppRoute {
  AppRoute._();

  static const String identityCard = '/identityCard';
  static const String login = '/login';
  static const String signup = '/signup';
  static const String home = '/home';
  static const String mondayClass = '/mondayClass';
  static const String simpleInterest = '/simpleInterest';

  static getAppRoutes() => {
    identityCard: (context) => const IdentityCard(),
    login: (context) => const LoginScreen(),
    signup: (context) => const SignupScreen(),
    home: (context) => const HomePage(),
    mondayClass: (context) => const MondayClass(),
    simpleInterest: (context) => const SimpleInterest(),
  };
}