// ignore_for_file: prefer_const_constructors, unnecessary_new, avoid_print

import 'package:expense_management/Chart/chart_screen.dart';

import 'dart:ffi';

import 'package:expense_management/Chart/Chart2.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Goals/goals._screen.dart';
import 'Home/home_controller.dart';

import 'Profile/profile.dart';

import 'Home/home_screen.dart';
import 'Home/splash.dart';
import 'Home/widgets/add_transaction.dart';
import 'Profile/profile_screen.dart';

void main() {
  Home_Controller controller = Get.put<Home_Controller>(Home_Controller(),
      tag: "home_data", permanent: true);
  controller.add_shopping_list(
      200.00, true, DateTime.now(), "shopping", Icons.shopping_bag);
  controller.add_shopping_list(
      200.00, false, DateTime.now(), "shopping", Icons.restaurant);

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
      debugShowCheckedModeBanner: false,
      title: 'Jaeeb',
      // initialRoute: "/home",
      defaultTransition: Transition.zoom,
      home: Splash(), /* */
    );
  }
}

class Mian extends StatefulWidget {
  Mian({super.key});

  @override
  State<Mian> createState() => _MianState();
}

class _MianState extends State<Mian> {
  List<Widget> pageList = [
    HomeScreen(),
    GoalsScreen(),
    AddTransaction(),
    ChartScreen(),
    ProfileScreen(),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {



    // return GetMaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   title: 'home',
    //   // initialRoute: "/home",
    //   defaultTransition: Transition.zoom,
    //   home: SafeArea(
    //       child: Scaffold(
      
    //     bottomNavigationBar: NavigationBar(
    //       selectedIndex: selectedIndex,
    //       onDestinationSelected: (index) => setState((){
    //         selectedIndex = index;
    //       }),
    //       backgroundColor: Colors.white,
    //       destinations: const [
    //         NavigationDestination(

    return SafeArea(
        child: Scaffold(
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex,
        onDestinationSelected: (index) => setState(() {
          selectedIndex = index;
        }),
        backgroundColor: Colors.white,
        destinations: const [
          NavigationDestination(
            icon: Icon(
              Icons.home,
              color: Color(0xFF519872),
            ),
            label: 'Home',
          ),
          NavigationDestination(
              icon: Icon(Icons.radar, color: Color(0xFF519872)),
              label: 'Goals'),
          NavigationDestination(

              icon: Icon(
                Icons.add_circle_rounded,
                color: Color(0xFF519872),
                size: 60,
              ),
              label: ''),
          NavigationDestination(
              icon: Icon(Icons.show_chart, color: Color(0xFF519872)),
              label: 'Charts'),
          NavigationDestination(
              icon: Icon(
                Icons.person,
                color: Color(0xFF519872),
              ),

              label: 'Home',
            ),
            
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
