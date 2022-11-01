// ignore_for_file: non_constant_identifier_names, avoid_print ,prefer_interpolation_to_compose_strings, unnecessary_new, camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';

import 'jaeeb_calsses.dart';
import 'package:get/get.dart';

class Home_Controller extends GetxController {
  /* setting */
  final dropdownValue = "التسوق".obs;
  void onchangedropdownValue(String? dropdownvalue) {
    dropdownValue.value = dropdownvalue!;
  }

  final isExpenses = true.obs;
 void onPressedisExpenses(bool? isIt ){
  isExpenses.value=isIt!;
 }
   /* Expenses */
  List expenses = [];

  double total_expenses = 0;

  void expenses_list() {
    for (var ex in expenses) {
      print(ex.price);
      print(ex.isCash);
      print(ex.date.day.toString() +
          "-" +
          ex.date.month.toString() +
          "-" +
          ex.date.year.toString());
      print(ex.note);
    }
  }

  double total_expenses_fun() {
    total_expenses = 0;
    for (var ex in expenses) {
      total_expenses += ex.price;
    }
    return total_expenses;
  }

  /* income and  current_balance saving */
  final income = 10000.00.obs;
  void onchangedIncome(double? num) {
    income.value = num!;
  }

  double spending_fun(
    double goals,
  ) {
    double expenses = total_expenses_fun();
    return expenses + goals;
  }

  double current_balance_fun(
    double income,
    double goals,
  ) {
    double spending = total_expenses_fun() + goals;

    return income - spending;
  }

  double saving_fun(
    double income,
    double spending,
  ) {
    return income - spending;
  }

/* Shopping */
  List shopping = [];
  double total_shopping = 0;

  void add_shopping_list(
      double price, bool isCash, DateTime date, String note) {
    shopping.add(new Shopping(price, isCash, date, note));
    expenses.add(new Shopping(price, isCash, date, note));
  }

  void shopping_list() {
    for (var sho in shopping) {
      print(sho.price);
      print(sho.isCash);
      print(sho.date.day.toString() +
          "-" +
          sho.date.month.toString() +
          "-" +
          sho.date.year.toString());
      print(sho.note);
    }
  }

  double total_shopping_fun() {
    for (var sho in shopping) {
      total_shopping += sho.price;
    }
    return total_shopping;
  }

/* Restaurant */
  List restaurant = [];
  double total_restaurant = 0;

  void add_restaurant_list(
      double price, bool isCash, DateTime date, String note) {
    restaurant.add(new Restaurant(price, isCash, date, note));
    expenses.add(new Restaurant(price, isCash, date, note));
  }

  void restaurant_list() {
    for (var re in restaurant) {
      print(re.price);
      print(re.isCash);
      print(re.date.day.toString() +
          "-" +
          re.date.month.toString() +
          "-" +
          re.date.year.toString());
      print(re.note);
    }
  }

  double total_restaurant_fun() {
    for (var re in restaurant) {
      total_restaurant += re.price;
    }
    return total_restaurant;
  }

/* Transport */
  List transport = [];
  double total_transport = 0;

  void add_transport_list(
      double price, bool isCash, DateTime date, String note) {
    transport.add(new Transport(price, isCash, date, note));
    expenses.add(new Transport(price, isCash, date, note));
  }

  void transport_list() {
    for (var tr in transport) {
      print(tr.price);
      print(tr.isCash);
      print(tr.date.day.toString() +
          "-" +
          tr.date.month.toString() +
          "-" +
          tr.date.year.toString());
      print(tr.note);
    }
  }

  double total_transport_fun() {
    for (var tr in transport) {
      total_transport += tr.price;
    }
    return total_transport;
  }

/* Coffee */
  List coffee = [];
  double total_coffee = 0;

  void add_coffee_list(double price, bool isCash, DateTime date, String note) {
    coffee.add(new Coffee(price, isCash, date, note));
    expenses.add(new Coffee(price, isCash, date, note));
  }

  void coffee_list() {
    for (var co in coffee) {
      print(co.price);
      print(co.isCash);
      print(co.date.day.toString() +
          "-" +
          co.date.month.toString() +
          "-" +
          co.date.year.toString());
      print(co.note);
    }
  }

  double total_coffee_fun() {
    for (var co in coffee) {
      total_coffee += co.price;
    }
    return total_coffee;
  }

/* Bill */
  List bill = [];
  double total_bill = 0;

  void add_bill_list(double price, bool isCash, DateTime date, String note) {
    bill.add(new Bill(price, isCash, date, note));
    expenses.add(new Bill(price, isCash, date, note));
  }

  void bill_list() {
    for (var bi in bill) {
      print(bi.price);
      print(bi.isCash);
      print(bi.date.day.toString() +
          "-" +
          bi.date.month.toString() +
          "-" +
          bi.date.year.toString());
      print(bi.note);
    }
  }

  double total_bill_fun() {
    for (var bi in bill) {
      total_bill += bi.price;
    }
    return total_bill;
  }

/* another */
  List another = [];
  double total_another = 0;

  void add_another_list(double price, bool isCash, DateTime date, String note) {
    another.add(new Another(price, isCash, date, note));
    expenses.add(new Another(price, isCash, date, note));
  }

  void another_list() {
    for (var at in another) {
      print(at.price);
      print(at.isCash);
      print(at.date.day.toString() +
          "-" +
          at.date.month.toString() +
          "-" +
          at.date.year.toString());
      print(at.note);
    }
  }

  double total_another_fun() {
    for (var at in another) {
      total_another += at.price;
    }
    return total_another;
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
