// ignore_for_file: unnecessary_this, prefer_initializing_formals

import 'package:flutter/material.dart';

class Shopping {
  double? price;
  bool? isExpenses;
  DateTime? date;
  String? note;
  IconData? icon=Icons.store;
  String type = "التسوق";
  Shopping(double price, bool isExpenses, DateTime date,String note) {
    this.date = date;
    this.isExpenses = isExpenses;
    this.price = price;
    this.note = note;
    this.icon = icon;

  }
}

class Restaurant {
  double? price;
  bool? isExpenses;
  DateTime? date;
  String? note;
  IconData? icon=Icons.restaurant_menu;
  String type = "المطعم";
  Restaurant(double price, bool isExpenses, DateTime date,String note) {
    this.date = date;
    this.isExpenses = isExpenses;
    this.price = price;
    this.note = note;
  }
}
class Coffee {
  double? price;
  bool? isExpenses;
  DateTime? date;
  String? note;
  IconData? icon=Icons.local_cafe;
  String type = "قهوة";
  Coffee(double price, bool isExpenses, DateTime date,String note) {
    this.date = date;
    this.isExpenses = isExpenses;
    this.price = price;
    this.note = note;
  }
}
class Transport {
  double? price;
  bool? isExpenses;
  DateTime? date;
  String? note;
  IconData? icon=Icons.directions_bus;
  String type = "النقل";
  Transport(double price, bool isExpenses, DateTime date,String note) {
    this.date = date;
    this.isExpenses = isExpenses;
    this.price = price;
    this.note = note;
  }
}

class Bill {
  double? price;
  bool? isExpenses;
  DateTime? date;
  String? note;
  IconData? icon=Icons.receipt_long;
  String type = "فواتير";

  Bill(double price, bool isExpenses, DateTime date,String note) {
    this.date = date;
    this.isExpenses = isExpenses;
    this.price = price;
    this.note = note;
    this.icon = icon;
  }
}

class Another {
  double? price;
  bool? isExpenses;
  DateTime? date;
  String? note;
  IconData? icon=Icons.control_point;
  String type = "اخر";

  Another(double price, bool isExpenses, DateTime date,String note) {
    this.date = date;
    this.isExpenses = isExpenses;
    this.price = price;
    this.note = note;
  }
}


class Goals {
  double? total;
  double? monthlyCost;
  String? goal;
  Goals(double total, double monthlyCost,String goal) {
    this.total = total;
    this.monthlyCost = monthlyCost;
    this.goal = goal;
  }
}
