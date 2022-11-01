// ignore_for_file: unnecessary_this, prefer_initializing_formals

import 'package:flutter/material.dart';

class Shopping {
  double? price;
  bool? isCash;
  DateTime? date;
  String? note;
  IconData? icon;
  String type = "Shopping";
  Shopping(double price, bool isCash, DateTime date,String note,IconData icon) {
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
  IconData? icon;
  String type = "Restaurant";
  Restaurant(double price, bool isCash, DateTime date,String note,IconData icon) {
    this.date = date;
    this.isCash = isCash;
    this.price = price;
    this.note = note;
    this.icon = icon;
  }
}

class Transport {
  double? price;
  bool? isCash;
  DateTime? date;
  String? note;
  IconData? icon;
  String type = "Transport";
  Transport(double price, bool isCash, DateTime date,String note,IconData icon) {
    this.date = date;
    this.isCash = isCash;
    this.price = price;
    this.note = note;
    this.icon = icon;
  }
}

class Bill {
  double? price;
  bool? isCash;
  DateTime? date;
  String? note;
  IconData? icon;
  String type = "Bill";

  Bill(double price, bool isCash, DateTime date,String note,IconData icon) {
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
  IconData? icon;
  String type = "Another";

  Another(double price, bool isCash, DateTime date,String note,IconData icon) {
    this.date = date;
    this.isCash = isCash;
    this.price = price;
    this.note = note;
    this.icon = icon;
  }
}
