// ignore_for_file: unnecessary_this, prefer_initializing_formals

import 'package:flutter/material.dart';

class Shopping {
  double? price;
  bool? isCash;
  DateTime? date;
  String? note;
  IconData? icon=Icons.store;
  String type = "Shopping";
  Shopping(double price, bool isCash, DateTime date,String note) {
    this.date = date;
    this.isCash = isCash;
    this.price = price;
    this.note = note;
    this.icon = icon;

  }
}

class Restaurant {
  double? price;
  bool? isCash;
  DateTime? date;
  String? note;
  IconData? icon=Icons.restaurant_menu;
  String type = "Restaurant";
  Restaurant(double price, bool isCash, DateTime date,String note) {
    this.date = date;
    this.isCash = isCash;
    this.price = price;
    this.note = note;
  }
}
class Coffee {
  double? price;
  bool? isCash;
  DateTime? date;
  String? note;
  IconData? icon=Icons.local_cafe;
  String type = "Coffee";
  Coffee(double price, bool isCash, DateTime date,String note) {
    this.date = date;
    this.isCash = isCash;
    this.price = price;
    this.note = note;
  }
}
class Transport {
  double? price;
  bool? isCash;
  DateTime? date;
  String? note;
  IconData? icon=Icons.directions_bus;
  String type = "Transport";
  Transport(double price, bool isCash, DateTime date,String note) {
    this.date = date;
    this.isCash = isCash;
    this.price = price;
    this.note = note;
  }
}

class Bill {
  double? price;
  bool? isCash;
  DateTime? date;
  String? note;
  IconData? icon=Icons.receipt_long;
  String type = "Bill";

  Bill(double price, bool isCash, DateTime date,String note) {
    this.date = date;
    this.isCash = isCash;
    this.price = price;
    this.note = note;
    this.icon = icon;
  }
}

class Another {
  double? price;
  bool? isCash;
  DateTime? date;
  String? note;
  IconData? icon=Icons.control_point;
  String type = "Another";

  Another(double price, bool isCash, DateTime date,String note) {
    this.date = date;
    this.isCash = isCash;
    this.price = price;
    this.note = note;
  }
}
