import 'package:flutter/material.dart';
import 'package:flutter_shared_preference/controller/splash_controller.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  SplashController splashController = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.indigo,
          child: Text('Ini halaman splash screen'),
        ),
      ),
    );
  }
}
