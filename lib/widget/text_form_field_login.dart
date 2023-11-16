import 'package:flutter/material.dart';

Widget textFormFieldLogin({required String label, required bool isObsecure, required controller}) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
    child: TextFormField(
      obscureText: isObsecure,
      style: TextStyle(color: Colors.white),

      controller: controller,

      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.orange, width: 2),
        ),

        labelText: label,
        labelStyle: TextStyle(color: Colors.white),
      ),
    ),
  );
}