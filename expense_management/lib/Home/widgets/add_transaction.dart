// ignore_for_file: avoid_unnecessary_containers, must_be_immutable

import 'package:flutter/material.dart';
import 'package:date_field/date_field.dart';

class AddTransaction extends StatefulWidget {
  AddTransaction({super.key});

  @override
  State<AddTransaction> createState() => _AddTransactionState();
}

class _AddTransactionState extends State<AddTransaction> {
  // Initial Selected Value
  String dropdownvalue = 'Shopping';

  // List of items in our dropdown menu
  var items = [
    'Shopping',
    'Restaurant',
    'Transport',
    'Bill',
    'Another',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Icon(
                Icons.arrow_circle_left_sharp,
                color: Color(0xFF519872),
              ),
              const Text(
                "Transaction",
                style: TextStyle(
                    color: Color(0xFF519872),
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                width: 30,
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Text("Enter The Price",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF519872))),
          const SizedBox(
            height: 20,
          ),
          const TextField(
            /* controller: "nameController", */
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: '100 SAR',
            ), /* onChanged: (text) {return "l";} */
          ),
          const SizedBox(
            height: 20,
          ),
          const Text("Categories",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF519872))),
          const SizedBox(
            height: 20,
          ),
          DropdownButton(
              value: dropdownvalue,
              icon: const Icon(Icons.keyboard_arrow_down),
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Row(
                    children: [
                      Icon(Icons.mail_lock_outlined),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        items,
                        style: const TextStyle(fontWeight: FontWeight.w400),
                      )
                    ],
                  ),
                );
              }).toList(),
              // After selecting the desired option,it will
              // change button value to selected value
              onChanged: (String? newValue) {
                setState(() {
                  dropdownvalue = newValue!;
                });
              }),
          const SizedBox(
            height: 20,
          ),
          const Text("Select Date",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF519872))),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            style: TextStyle(
              color: Color.fromRGBO(81, 152, 114, 1),
              fontSize: 22,
            ),
            cursorColor: const Color.fromARGB(255, 45, 136, 87),
            decoration: const InputDecoration(
              // icon: Icon(Icons.calendar_today_rounded),
              prefixIcon: Icon(Icons.calendar_today),
              hintText: 'Input date',
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
          const SizedBox(
            height: 20,
          ),
          const Text("Note",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF519872))),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            minLines:
                4, // any number you need (It works as the rows for the textarea)
            keyboardType: TextInputType.multiline,
            maxLines: null,
            decoration: const InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(4.0),
                  ),
                  borderSide: BorderSide(color: Colors.grey)),
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          Container(
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xFF519872),
            ),
            child: OutlinedButton(
              child: const Text(
                "Add To Transactions ",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
