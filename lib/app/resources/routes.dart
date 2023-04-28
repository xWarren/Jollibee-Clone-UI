import 'package:jolibee_app_clone/app/resources/screen.dart';
import 'package:jolibee_app_clone/app/view/home.dart';

class Routes {
  static String homeScreen = '/homeScreen';
}

final getPages = [
  GetPage(
    name: Routes.homeScreen,
    page: () => const HomePage(),
  ),
];
