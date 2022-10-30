
// ignore_for_file: prefer_const_constructors, unnecessary_new, avoid_print

import 'dart:ffi';

import 'package:expense_management/Chart/Chart2.dart';
import 'package:flutter/material.dart';
import 'Home/home_controller.dart';
import 'Profile/profile.dart';
void main() {
  C sho = new C();
  sho.add_shopping_list(200.00, true, DateTime.now(), "shopping", "shopping");
  sho.add_shopping_list(100.00, false, DateTime.now(), "shopping", "shopping");

  sho.add_bill_list(100, false, DateTime.now(), "bill", "bill");
  sho.add_bill_list(100, false, DateTime.now(), "bill", "bill");

  sho.add_restaurant_list(20, true, DateTime.now(), "restaurant", "restaurant");
  sho.add_restaurant_list(20, true, DateTime.now(), "restaurant", "restaurant");

  sho.add_transport_list(50, true, DateTime.now(), "transport", "transport");

  sho.add_another_list(50, true, DateTime.now(), "another", "another");
  print(sho.total_expenses_fun());
  sho.total_expenses_fun();
  
  
  runApp(MyApp());
  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Chart(),
    );
  }
}