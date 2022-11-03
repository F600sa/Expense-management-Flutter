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

 final itemList = [
    new Item('التسوق', Icons.store),
    new Item('مطعم', Icons.restaurant_menu),
    new Item('قهوة', Icons.local_cafe),
    new Item('نقل', Icons.directions_bus),
    new Item('فواتير', Icons.receipt_long),
    new Item('اخر', Icons.control_point),
  ].obs;
  void changeitemList() {
    if (isExpenses == true) {
      itemList.value = [
      new Item('التسوق', Icons.store),
    new Item('مطعم', Icons.restaurant_menu),
    new Item('قهوة', Icons.local_cafe),
    new Item('نقل', Icons.directions_bus),
    new Item('فواتير', Icons.receipt_long),
    new Item('اخر', Icons.control_point),
  ];
    }
    
    if (isExpenses == false) {
      itemList.value = [
      new Item('  ايجار ', Icons.store),
      new Item('دخل متجر ', Icons.restaurant_menu),
      new Item('عمل حر', Icons.local_cafe),
      new Item('بيع ممتلكات ', Icons.directions_bus),
      new Item('عيديه', Icons.receipt_long),
      new Item('اخر', Icons.money),
    ];
    }
    
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

class Item {
  String? name;
  IconData? icon;
  Item(String name, IconData? icon) {
    this.name = name;
    this.icon = icon;
  }
}
