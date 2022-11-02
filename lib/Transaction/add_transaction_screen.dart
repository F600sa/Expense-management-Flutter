import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../jaeeb_controller.dart';
import '../jaeeb_controller2.dart';
import '../main.dart';
import 'transaction_screen.dart';

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
  TextEditingController dateController = TextEditingController();
  Home_Controller2 controller2 = Get.put<Home_Controller2>(Home_Controller2(),
      tag: "home_data", permanent: true);

  // List of items in our dropdown menu
  
  List<Item> itemList = [
    new Item('التسوق', Icons.store),
    new Item('مطعم', Icons.restaurant_menu),
    new Item('قهوة', Icons.local_cafe),
    new Item('نقل', Icons.directions_bus),
    new Item('فواتير', Icons.receipt_long),
    new Item('اخر', Icons.control_point),
    new Item('مال اضافي', Icons.money),
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
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(0xFF519872),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: IconButton(
                      iconSize: 24,
                      icon: Icon(
                        Icons.chevron_left,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Navigation()),
                        );
                      },
                    )),
                Center(
                  child: Text(
                    "عملية",
                    style: GoogleFonts.ibmPlexSansArabic(
                        color: Color(0xFF519872),
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
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
              "فضلا ادخل العملية",
              style: GoogleFonts.ibmPlexSansArabic(
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
                Obx(
                  () => Button(
                    color1: controller2.greenColor1.value,
                    color2: controller2.greenColor2.value,
                    name: 'دخل اضافي',
                    icon: Icons.arrow_circle_down,
                  ),
                ),
                Obx(() => Button(
                      color1: controller2.orangeColor2.value,
                      color2: controller2.orangeColor1.value,
                      name: 'مصروفات',
                      icon: Icons.arrow_circle_up,
                    )),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              "المبلغ",
              style: GoogleFonts.ibmPlexSansArabic(
                  color: Color(0xFF519872),
                  fontSize: 17,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 5,
            ),
            TextField(
              controller: priceController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: '',
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Text(
              "الفئه",
              style: GoogleFonts.ibmPlexSansArabic(
                  color: Color(0xFF519872),
                  fontSize: 17,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 5,
            ),
            Obx(
              () => DropdownButton(
                value: controller.dropdownValue.value,
                onChanged: (value) {
                  controller.onchangedropdownValue(value);
                },
                icon: const Visibility(
                    visible: false, child: Icon(Icons.arrow_downward)),
                items: itemList.map<DropdownMenuItem>((Item value) {
                  return DropdownMenuItem(
                    value: value.name,
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: Row(
                        children: [
                          Icon(value.icon, color: Color(0xFF519872)),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            value.name.toString(),
                            style: GoogleFonts.ibmPlexSansArabic(
                                fontSize: 17, fontWeight: FontWeight.w400),
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
            SizedBox(
              height: 35,
            ),
     /*        Text(
              "اختار التاريخ",
              style: GoogleFonts.ibmPlexSansArabic(
                  color: Color(0xFF519872),
                  fontSize: 17,
                  fontWeight: FontWeight.w700),
            ), */
         /*    SizedBox(
              height: 5,
            ),
            TextFormField(
              controller: dateController,
              style: TextStyle(
                color: Color(0xFF519872),
                fontSize: 22,
              ),
              cursorColor: Color(0xFF519872),
              decoration: const InputDecoration(
                // icon: Icon(Icons.calendar_today_rounded),
                prefixIcon: Icon(Icons.calendar_today),
                hintText: '',
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
            ), */
            SizedBox(height: MediaQuery.of(context).size.height * 0.15),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Color(0xFF519872),
              ),
              child: TextButton(
                onPressed: () {
                  double price = double.parse(priceController.text);
                  print(controller2.isExpenses);

                  if (controller2.isExpenses == true) {
                    if (controller.dropdownValue.value == "التسوق") {
                      controller.add_shopping_list(
                          price, true, DateTime.now(), "Note shopping");
                    } else if (controller.dropdownValue.value == "فواتير") {
                      controller.add_bill_list(
                          price, true, DateTime.now(), "Note bill");
                    } else if (controller.dropdownValue.value == "مطعم") {
                      controller.add_restaurant_list(
                          price, true, DateTime.now(), "Note Restaurant");
                    } else if (controller.dropdownValue.value == "نقل") {
                      controller.add_transport_list(
                          price, true, DateTime.now(), "Note Transport");
                    } else if (controller.dropdownValue.value == "قهوة") {
                      controller.add_coffee_list(
                          price, true, DateTime.now(), "Note Coffee");
                    } else if (controller.dropdownValue.value == "اخر") {
                      controller.add_another_list(
                          price, true, DateTime.now(), "Note Another");
                    }
                  } else if (controller2.isExpenses == false) {
                    controller.extraIncome.value = price;
                    print("extraIncome" +
                        controller.extraIncome.value.toString());
                  }

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Navigation()),
                  );
                },
                child: Text(
                  "اضافة العملية",
                  style: GoogleFonts.ibmPlexSansArabic(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Button extends StatefulWidget {
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
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  Home_Controller2 controller2 = Get.put<Home_Controller2>(Home_Controller2(),
      tag: "home_data", permanent: true);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(1),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: widget.color2,
          border: Border.all(color: widget.color1)),
      height: MediaQuery.of(context).size.height * .08,
      width: MediaQuery.of(context).size.width * .41,
      child: TextButton(
        onPressed: () {
          controller2.onPressedisExpenses();

          if (controller2.isExpenses == false) {
            controller2.greenColor1.value = const Color(0xFFB7DEC9);
            ;
            controller2.greenColor2.value = const Color(0xFF519872);
            controller2.orangeColor1.value = const Color(0xFFFEF0D0);
            controller2.orangeColor2.value = const Color(0xFFEBA90D);
            print(controller2.isExpenses);
          } else if (controller2.isExpenses == true) {
            controller2.greenColor1.value = const Color(0xFF519872);
            controller2.greenColor2.value = const Color(0xFFB7DEC9);
            controller2.orangeColor1.value = const Color(0xFFEBA90D);
            controller2.orangeColor2.value = const Color(0xFFFEF0D0);
          }
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              widget.icon,
              color: widget.color1,
            ),
            Text(
              widget.name,
              style: GoogleFonts.ibmPlexSansArabic(
                  color: widget.color1,
                  fontSize: 17,
                  fontWeight: FontWeight.w700),
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
