import 'package:flutter_shared_preference/pages/login_page.dart';
import 'package:flutter_shared_preference/pages/splash_screen.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashController extends GetxController {

  late final SharedPreferences prefs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    checkSharedPreference();
  }

  void checkSharedPreference() async{
    prefs = await SharedPreferences.getInstance();
    Future.delayed(Duration(seconds: 2), () async {
      if(prefs.getString('username') == null){
        Get.off(LoginPage());
      } else {
        Get.off(SplashScreen());
      }
    });

  }
}