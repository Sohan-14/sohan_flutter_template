import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sohan_flutter_template/core/themes/theme_manager.dart';
import 'package:sohan_flutter_template/presentation/controllers/sample_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final SampleController controller = Get.find<SampleController>();
    final themeManager = Get.find<ThemeManager>();

    return Scaffold(
      body: Center(child:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: () => controller.fetchSampleData(), child: Text("Click here")),

            const SizedBox(height: 10,),

            ElevatedButton(
              onPressed: () {
                themeManager.toggleTheme(ThemeMode.light);
              },
              child: Text("Light Theme"),
            ),

            const SizedBox(height: 10,),

            ElevatedButton(
              onPressed: () {
                themeManager.toggleTheme(ThemeMode.dark);
              },
              child: Text("Dark Theme"),
            ),

            const SizedBox(height: 10,),

            ElevatedButton(
              onPressed: () {
                themeManager.toggleTheme(ThemeMode.system);
              },
              child: Text("System Theme"),
            ),
        ]),
      ),
    );
  }
}
