// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

class MyBudget  extends StatelessWidget {
   Color? color;
  Color? secondaryColor;
  IconData? icon;
   MyBudget ({required this.color,
      required this.icon,
      required this.secondaryColor,super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: MediaQuery.of(context).size.width ,
      height:MediaQuery.of(context).size.height *0.15 ,
      child: Row(
        mainAxisAlignment:MainAxisAlignment.spaceBetween,
        children: [
           Padding(
             padding: const EdgeInsets.all(30),
             child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Text("My Budget This Month",style: TextStyle(fontSize: 16,fontWeight:FontWeight.bold ),),
            const SizedBox(height: 10,),
            const Text('''controal your expenses and 
achieve your goals.''', textAlign: TextAlign.left,style: TextStyle(fontSize: 13 ,color: Colors.grey), ),
          ],
        ),
           ),
        Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [TextButton(
              style: TextButton.styleFrom(
                backgroundColor: color,
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(15),
                ),
            onPressed: () {  },
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: secondaryColor,
                shape: const CircleBorder(),
                ),
                child: Icon(icon,color:Colors.white ,size: 39,),onPressed: () {},
                ),
          ),],
        ),
           Column(
          children: [Container(
            width: 30,
            child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: secondaryColor,
                    padding: const EdgeInsets.all(0),
                    alignment: Alignment.topRight,
                    maximumSize: Size.infinite,
                    ),
                    child:const Icon(Icons.add,color:Colors.white ,size: 30,),onPressed: () {},
                    ),
          ),],
        )
        ],
      )
    );
  }
}