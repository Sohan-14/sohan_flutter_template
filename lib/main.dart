import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sohan_flutter_template/core/di/app_bindings.dart';
import 'package:sohan_flutter_template/core/routes/app_routes.dart';
import 'package:sohan_flutter_template/core/routes/app_screens.dart';
import 'package:sohan_flutter_template/core/themes/theme.dart';

import 'core/config/app_constants.dart';
import 'core/themes/theme_manager.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  final storage = GetStorage();
  debugPrint("Stored Theme Mode at Startup: ${storage.read(AppConstants.themeMode)}");
  Get.put<ThemeManager>(ThemeManager());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Template',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: Get.find<ThemeManager>().currentThemeMode,
      initialRoute: AppScreens.initialRoute,
      getPages: AppRoutes.routes,
      initialBinding: AppBindings(),
    );
  }
}
