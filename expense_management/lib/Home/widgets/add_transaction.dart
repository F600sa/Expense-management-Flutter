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
  String dropdownvalue = 'Item 1';  
 
  // List of items in our dropdown menu
  var items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
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
                  child: Text(items),
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
          DateTimeFormField(
            decoration: const InputDecoration(
              hintStyle: TextStyle(color: Colors.black45),
              errorStyle: TextStyle(color: Colors.redAccent),
              border: OutlineInputBorder(),
              suffixIcon: Icon(Icons.event_note),
              labelText: 'Only time',
            ),
            mode: DateTimeFieldPickerMode.time,
            autovalidateMode: AutovalidateMode.always,
            validator: (e) =>
                (e?.day ?? 0) == 1 ? 'Please not the first day' : null,
            onDateSelected: (DateTime value) {
              print(value);
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
