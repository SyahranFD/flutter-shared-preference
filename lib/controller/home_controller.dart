import 'package:flutter_shared_preference/pages/login_page.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeController extends GetxController{

  late final SharedPreferences prefs;
  RxString strName = "".obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    checkSharedPreference();
  }

  void checkSharedPreference() async{
    prefs = await SharedPreferences.getInstance();
    strName.value = prefs.getString('username') ?? "no data";
  }

  void logoutAction() async{
    prefs = await SharedPreferences.getInstance();
    await prefs.remove('counter');
    Get.off(LoginPage());
  }

}