import 'package:jolibee_app_clone/app/authenticator/login.dart';
import 'package:jolibee_app_clone/app/resources/screen.dart';
import 'package:jolibee_app_clone/app/view/home.dart';

class Routes {
  static String homeScreen = '/homeScreen';
  static String loginScreen = '/loginScreen';
}

final getPages = [
  GetPage(
    name: Routes.homeScreen,
    page: () => const HomePage(),
  ),
  GetPage(
    name: Routes.loginScreen,
    page: () => const LoginPage(),
  ),
];
