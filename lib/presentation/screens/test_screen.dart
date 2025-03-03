import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sohan_flutter_template/core/themes/theme_manager.dart';
import 'package:sohan_flutter_template/presentation/controllers/sample_controller.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final SampleController controller = Get.find<SampleController>();
    final themeManager = Get.find<ThemeManager>();

    return Scaffold(
      appBar: AppBar(title: Text('App Theme Example')),
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
              child: Text("Light Theme", style: Theme.of(context).textTheme.displayLarge,),
            ),

            const SizedBox(height: 10,),

            ElevatedButton(
              onPressed: () {
                themeManager.toggleTheme(ThemeMode.dark);
              },
              child: Text("Dark Theme", style: Get.theme.textTheme.displayLarge?.copyWith(color: Colors.blue)),
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
