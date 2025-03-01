import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sohan_flutter_template/core/di/app_bindings.dart';
import 'package:sohan_flutter_template/core/routes/app_routes.dart';
import 'package:sohan_flutter_template/core/routes/app_screens.dart';
import 'package:sohan_flutter_template/core/themes/theme.dart';

void main() {
  initStorage();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Template',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      initialRoute: AppScreens.initialRoute,
      getPages: AppRoutes.routes,
      initialBinding: AppBindings(),
    );
  }
}


void initStorage() async {
  await GetStorage.init();
}
