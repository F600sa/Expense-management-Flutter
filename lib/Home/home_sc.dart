// ignore_for_file: prefer_interpolation_to_compose_strings

import 'dart:ffi';

import 'package:expense_management/Chart/Chart2.dart';
import 'package:expense_management/Home/home_controller.dart';
import 'package:expense_management/Home/widgets/list_view.dart';
import 'package:expense_management/Home/widgets/my_budget.dart';
import 'package:expense_management/Home/widgets/spending_and_income.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  Home_Controller controller = Get.put<Home_Controller>(Home_Controller(),tag: "home_data", permanent: true);

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment:CrossAxisAlignment.end ,
        children: [
          Text("الرصيد الحالي",style:GoogleFonts.ibmPlexSansArabic(fontSize: 20),),
        const SizedBox(height: 10,),
          
          Directionality(
            textDirection: TextDirection.rtl,
            child: Row(
              children: [
                Text(controller.current_balance_fun(controller.income,2).toInt().toString(),style: const TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.w700,
                   ),),
               Text(" ريال",style: const TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.w700,
                   ),),
          
              ],
            ),
          ),
         const SizedBox(height: 10,),
        //  Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween ,
        //   children: [
        //     SpendingAndIncome(color:const Color(0xFFB7DEC9),
        //      icon:Icons.arrow_downward_rounded, 
        //      secondaryColor:const Color(0xFF519872),
        //       money: controller.income.toInt(), name: 'Income',),
        //     SpendingAndIncome(color:const Color(0xFFFEF0D0),
        //      icon: Icons.arrow_upward,
        //       secondaryColor:const Color(0xFFEBA90D),
        //        money: controller.spending_fun(2).toInt(), name: 'Spending',),
        //   ],
        //  ),
        //  const SizedBox(height: 10,),
        Chart(),
        //  Card(
        //   elevation:5,
        //   shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(16)),
        //   clipBehavior:Clip.hardEdge,
        //   child:  MyBudget(icon:  Icons.attach_money_rounded, color:const Color(0xFFB7DEC9),secondaryColor:const Color(0xFF519872)),
        //  ),
        //  const SizedBox(height: 20,),
        //  Row(
        //   mainAxisAlignment:MainAxisAlignment.spaceBetween,
        //   children:const [ Text("Transactions",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
        //   Text("View More",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 10,decoration: TextDecoration.underline, ),)],
        //  ),
         const SizedBox(height: 10,),
        //  ListViewOfTransactions(),
        ],
      ),
    );
  }
}