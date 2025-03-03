import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sohan_flutter_template/presentation/controllers/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.find<SplashController>();
    return Scaffold(
      body: Container(),
    );
  }
}
