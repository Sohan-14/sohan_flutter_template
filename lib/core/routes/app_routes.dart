import 'package:get/get.dart';
import 'package:sohan_flutter_template/core/routes/app_screens.dart';
import 'package:sohan_flutter_template/presentation/screens/splash_screen.dart';

class AppRoutes{
  AppRoutes._();

  static final routes = [
    GetPage(name: AppScreens.initialRoute, page: () => SplashScreen()),
  ];
}