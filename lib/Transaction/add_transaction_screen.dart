// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, unnecessary_new

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

import '../jaeeb_controller.dart';
import '../main.dart';

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

  // List of items in our dropdown menu
  List<Item> itemList = [
    new Item('التسوق', Icons.store),
    new Item('مطعم', Icons.restaurant_menu),
    new Item('قهوة', Icons.local_cafe),
    new Item('نقل', Icons.directions_bus),
    new Item('فواتير', Icons.receipt_long),
    new Item('اخر', Icons.control_point),
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
                    color: Color(0xFF519872),
                    child: IconButton(
                      icon: Center(
                          child: Icon(
                        Icons.chevron_left,
                        color: Colors.white,
                      )),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Navigation()),
                        );
                      },
                    )),
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
                ),
/*                    Obx(() =>Button(
                  color1: Color(0xFF519872),
                  color2: Color(0xFFB7DEC9),
                  name: 'دخل اضافي',
                  icon: Icons.arrow_circle_down,
                ),),
                Obx(()=>Button(
                  color1: Color(0xFFEBA90D),
                  color2: Color(0xFFFEF0D0),
                  name: 'مصروفات',
                  icon: Icons.arrow_circle_up,
                )
                ), */
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
            SizedBox(
              height: 5,
            ),
            TextField(
              controller: priceController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: '١٠٠ ريال',
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Text(
              "الفئه",
              style: TextStyle(
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
            SizedBox(
              height: 35,
            ),
            Text(
              "اختار التاريخ",
              style: TextStyle(
                  color: Color(0xFF519872),
                  fontSize: 17,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
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
            SizedBox(
              height: 50,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(6),
                color: Color(0xFF519872),
              ),
              child: TextButton(
                onPressed: () {
                  double price = double.parse(priceController.text);
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
                },
                child: Text(
                  "اضافة العملية",
                  style: TextStyle(
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
  Color color2 = Color(0xFF519872);
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
  Home_Controller controller = Get.put<Home_Controller>(Home_Controller(),
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
          if (widget.color1 == Color(0xFF519872) &&
              widget.color2 == Color(0xFFB7DEC9)) {
            widget.color1 == Color(0xFFB7DEC9);
            widget.color2 == Color(0xFF519872);
            controller.onPressedisExpenses(false);
            
            setState(() {});
          } else if (widget.color1 == Color(0xFFEBA90D) &&
              widget.color2 == Color(0xFFFEF0D0)) {
            widget.color1 == Color(0xFFFEF0D0);
            widget.color2 == Color(0xFFEBA90D);
            
            setState(() {});
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
              style: TextStyle(color: widget.color1, fontSize: 17),
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
