import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/home_controller.dart';

class HomePage extends StatelessWidget {
  final HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          children: [
            Obx(() => Text("User logged: " + homeController.strName.value)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                homeController.logoutAction();
              },
              child: Text('Logout'),
            ),
          ],
        ),
      ),
    );
  }
}
