// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../jaeeb_controller.dart';
class Transaction extends StatelessWidget {
  const Transaction({super.key});

  @override
  Widget build(BuildContext context) {
      return SafeArea(
      child: Scaffold(
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: Stricture(),
        ),
      ),
    );
  }
}
class Stricture extends StatelessWidget {
  const Stricture({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      padding: EdgeInsets.fromLTRB(15, 50, 15, 50),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Text("تفاصيل العملة ",style: TextStyle(
              fontSize: 16,fontWeight: FontWeight.w800
            ),),
            SizedBox(height: 20,),
            ListViewOfTransactions(),  
          ],
        ),
      ),
      
      
      );
  }
}



class ListViewOfTransactions extends StatelessWidget {
  ListViewOfTransactions({super.key});

  Home_Controller controller = Get.put<Home_Controller>(Home_Controller(),
      tag: "home_data", permanent: true);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: controller.expenses.length,
      itemBuilder: (context, index) {
        return CardTransaction(
          index: index,
        );
      },
    );
  }
}

class CardTransaction extends StatelessWidget {
  int index;
  CardTransaction({required this.index, super.key});

  Home_Controller controller = Get.put<Home_Controller>(Home_Controller(),
      tag: "home_data", permanent: true);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      clipBehavior: Clip.hardEdge,
      child: Container(
        padding: const EdgeInsets.fromLTRB(10, 10, 5, 10),
        height: MediaQuery.of(context).size.height * 0.0893,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  controller.expenses[index].icon,
                  size: 47,
                  color: const Color(0xFF519872),
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      controller.expenses[index].type.toString(),
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      controller.expenses[index].date.day.toString() +
                          "-" +
                          controller.expenses[index].date.month.toString() +
                          "-" +
                          controller.expenses[index].date.year.toString(),
                      style:
                          TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
               Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      controller.expenses[index].price.toInt().toString()+" ريال",
                      style:
                          TextStyle(color:const Color(0xFFEBA90D) ,fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    
                  ],
                ),
          ],
        ),
      ),
    );
  }
}
