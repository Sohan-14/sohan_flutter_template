import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sohan_flutter_template/presentation/controllers/sample_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final SampleController controller = Get.find<SampleController>();
    return Scaffold(
      body: Center(child:
        ElevatedButton(onPressed: () => controller.fetchSampleData(), child: Text("Click here")),
      ),
    );
  }
}
