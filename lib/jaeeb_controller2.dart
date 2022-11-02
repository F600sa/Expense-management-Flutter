// ignore_for_file: non_constant_identifier_names, avoid_print ,prefer_interpolation_to_compose_strings, unnecessary_new, camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:get/get.dart';

class Home_Controller2 extends GetxController {
  final income = 0.0.obs;
  void onchangedIncome(double num) {
    income.value = num;
    print("onchangedIncome" + income.value.toString());
  }

  

  final greenColor1 = Color(0xFF519872).obs;
  final greenColor2 = Color(0xFFB7DEC9).obs;
  final orangeColor1 = Color(0xFFEBA90D).obs;
  final orangeColor2 = Color(0xFFFEF0D0).obs;

  final isExpenses = true.obs;
  void onPressedisExpenses() {
    isExpenses.value = !isExpenses.value;
  }

  @override
  void onInit() {
    super.onInit();
    print("onInit");
  }

  @override
  void onReady() {
    super.onReady();
    print("onReady");
  }

  @override
  void onClose() {
    super.onClose();
    print("onClose");
  }
}
