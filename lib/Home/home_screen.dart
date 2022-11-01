// ignore_for_file: prefer_interpolation_to_compose_strings
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:jaeeb_arabic_version/jaeeb_controller.dart';
import '../Chart/Chart2.dart';

class HomeScreen extends StatelessWidget {
  // Home_Controller controller = Get.put<Home_Controller>(Home_Controller(),tag: "home_data", permanent: true);
      Home_Controller controller = Get.put<Home_Controller>(Home_Controller(),
        tag: "home_data", permanent: true);
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
                Text(controller.current_balance_fun(controller.income.value,2).toInt().toString(),style: const TextStyle(
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
      
        Chart(),

         const SizedBox(height: 10,),
      
        ],
      ),
    );
  }
}