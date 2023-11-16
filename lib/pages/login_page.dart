import 'package:flutter/material.dart';
import 'package:flutter_shared_preference/widget/text_form_field_login.dart';
import 'package:get/get.dart';

import '../controller/login_controller.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  TextEditingController ctrUsername = new TextEditingController();
  TextEditingController ctrPassword = new TextEditingController();
  LoginController loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.black38,
          child: Column(
            children: [
              SizedBox(height: 40),

              Text('Login', style: tsTitleLogin, textAlign: TextAlign.center),

              SizedBox(height: 20),
              textFormFieldLogin(label: "Username", isObsecure: false, controller: ctrUsername),
              textFormFieldLogin(label: "Password", isObsecure: true, controller: ctrPassword),

              SizedBox(height: 20),

              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 25),
                child: ElevatedButton(
                  onPressed: () {
                    loginController.loginAction(ctrUsername.text, ctrPassword.text);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text("Login", style: tsButtonLogin),
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}

TextStyle tsTitleLogin = const TextStyle(
  color: Colors.orange,
  fontWeight: FontWeight.bold,
  fontSize: 32,
);

TextStyle tsButtonLogin = const TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.w600,
  fontSize: 16,
);