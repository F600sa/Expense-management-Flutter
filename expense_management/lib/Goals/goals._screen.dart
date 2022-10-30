import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class GoalsScreen extends StatelessWidget {
  const GoalsScreen({super.key});

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
              const Icon(Icons.add_alarm)
            
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