// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, unnecessary_new

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../jaeeb_controller.dart';

class AddTransaction extends StatelessWidget {
    const AddTransaction({super.key});

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
   Stricture({super.key});
  Home_Controller controller = Get.put<Home_Controller>(Home_Controller(),
      tag: "home_data", permanent: true);
  TextEditingController priceController = TextEditingController();

  // List of items in our dropdown menu
  List<Item> itemList = [
    new Item('التسوق',Icons.store),
    new Item( 'مطعم',Icons.restaurant_menu),
    new Item('قهوة',Icons.local_cafe),
    new Item('نقل',Icons.directions_bus),
    new Item('فواتير',Icons.receipt_long),
    new Item('اخر',Icons.control_point),
  ];
    String dropdownValue = 'التسوق';

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
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 25,
                  width: 25,
                  color: Color(0xFF519872),
                  child: Icon(
                    Icons.chevron_left,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "عملية",
                  style: TextStyle(
                      color: Color(0xFF519872),
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              "فضلا ادخل وع العمليه",
              style: TextStyle(
                  color: Color(0xFF519872),
                  fontSize: 17,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Button(
                  color1: Color(0xFF519872),
                  color2: Color(0xFFB7DEC9),
                  name: 'دخل اضافي',
                  icon: Icons.arrow_circle_down,
                ),
                Button(
                  color1: Color(0xFFEBA90D),
                  color2: Color(0xFFFEF0D0),
                  name: 'مصروفات',
                  icon: Icons.arrow_circle_up,
                )
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              "السعر",
              style: TextStyle(
                  color: Color(0xFF519872),
                  fontSize: 17,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 5,),
           TextField(
            controller: priceController,
              decoration: InputDecoration(
                border:  OutlineInputBorder(),
                labelText: '١٠٠ ريال',
              ), 
            ),
            SizedBox(height: 35,),
            Text(
              "الفئه",
              style: TextStyle(
                  color: Color(0xFF519872),
                  fontSize: 17,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 5,),
        Obx(
              () => DropdownButton(
                value: controller.dropdownValue.value,
                onChanged: (value) {
                  controller.onchangedropdownValue(value);
                },
                icon: const Visibility(
                    visible: false, child: Icon(Icons.arrow_downward)),
                items: itemList.map<DropdownMenuItem>((Item value){
                  return DropdownMenuItem(
                    value: value.name,
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: Row(
                        children: [
                          Icon(value.icon,color: Color(0xFF519872)),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            value.name.toString(),
                            style: const TextStyle(fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    ),
                  );
                }).toList(),
                // After selecting the desired option,it will
                // change button value to selected value
              ),
            ),
          SizedBox(height: 35,),
            Text(
              "اخار التاريخ",
              style: TextStyle(
                  color: Color(0xFF519872),
                  fontSize: 17,
                  fontWeight: FontWeight.w700),
            ),
             SizedBox(height: 5,),
             TextFormField(
              style: TextStyle(
                color:  Color(0xFF519872),
                fontSize: 22,
              ),
              cursorColor: Color(0xFF519872),
              decoration: const InputDecoration(
                // icon: Icon(Icons.calendar_today_rounded),
                prefixIcon: Icon(Icons.calendar_today),
                hintText: '٢٠٢٢-١-٢',
                hintStyle: TextStyle(color: Colors.grey),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
              ),
              onTap: () async {
                DateTime? pickeddate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2101));
              },
            ),
            SizedBox(height: 30,),
            Container(
              decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color:  Color(0xFF519872),),
              child: TextButton(onPressed: () {  },
              child: Text("اضافة العملية",style:TextStyle(color: Colors.white,fontSize: 17,fontWeight: FontWeight.w700) ,),),
            ),
          ],
        ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  Color color1;
  Color color2;
  String name;
  IconData icon;
  Button({
    required this.color1,
    required this.color2,
    required this.name,
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(7),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: color2,
          border: Border.all(color: color1)),
      height: MediaQuery.of(context).size.height * .1,
      width: MediaQuery.of(context).size.width * .41,
      child: TextButton(
        onPressed: () {},
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: color1,
            ),
            Text(
              name,
              style: TextStyle(color: color1, fontSize: 17),
            ),
          ],
        ),
      ),
    );
  }
}


class Item {
  String? name;
  IconData? icon;
  Item(String name, IconData? icon) {
    this.name = name;
    this.icon = icon;
  }
}
