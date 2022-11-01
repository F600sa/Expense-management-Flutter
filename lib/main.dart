// ignore_for_file: prefer_const_constructors, unnecessary_new, avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Goals/goals_screen.dart';
import 'Home/home_screen.dart';
import 'Profile/profile_screen.dart';
import 'Transaction/add_transaction_screen.dart';
import 'Transaction/transaction_screen.dart';
import 'jaeeb_controller.dart';

void main() {

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: new ThemeData(
        primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      title: 'جيب',
      // initialRoute: "/home",
      defaultTransition: Transition.zoom,
      home: Navigation(),
    );
  }
}

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  List<Widget> pageList = [
    HomeScreen(),
    GoalsScreen(),
    Container(),
    Transaction(),
    ProfileScreen(),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex,
        onDestinationSelected: (index) => setState(() {
          selectedIndex = index;
          if (selectedIndex == 2) {
            Navigator.push(
              context,MaterialPageRoute(
                builder: (context) =>  AddTransaction()),
                );  
          }
        }),
        backgroundColor: Colors.white,
        destinations: const [
          NavigationDestination(
            icon: Icon(
              Icons.home,
              color: Color(0xFF519872),
            ),
            label: '',
          ),
          NavigationDestination(
              icon: Icon(Icons.radar, color: Color(0xFF519872)), label: ''),
          NavigationDestination(
              icon: Icon(
                Icons.add_circle_rounded,
                color: Color(0xFF519872),
                size: 60,
              ),
              label: ''),
          NavigationDestination(
              icon: Icon(Icons.paid, color: Color(0xFF519872)), label: ''),
          NavigationDestination(
              icon: Icon(
                Icons.person,
                color: Color(0xFF519872),
              ),
              label: 'Profile'),
        ],
      ),
      body: Container(
        color: Colors.white,
        padding: const EdgeInsets.fromLTRB(15, 30, 15, 0),
        child: pageList.elementAt(selectedIndex),
      ),
    ));
  }
}
