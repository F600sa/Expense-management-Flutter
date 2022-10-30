// ignore_for_file: prefer_interpolation_to_compose_strings

import 'package:flutter/material.dart';

class SpendingAndIncome extends StatelessWidget {
  Color? color;
  Color? secondaryColor;
  IconData? icon;
  String? name;
  int? money;
  SpendingAndIncome(
      {required this.color,
      required this.icon,
      required this.secondaryColor,
       required this.name,
       required this.money,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation:5,
      shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(16)),
      clipBehavior:Clip.hardEdge,
      child: Container(
        color: color,
        width: MediaQuery.of(context).size.width * 0.40,
        height: MediaQuery.of(context).size.height * 0.20,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: secondaryColor,
                shape: const CircleBorder(),
                ),
                child: Icon(icon,color: color,size: 39,),onPressed: () {},
                ),
            Text(money.toString()+" SAR",style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
            ),
              Text(name.toString(),style: TextStyle(
                color: secondaryColor,
                fontSize: 20,
                fontWeight: FontWeight.w700),
                )],
        ),
      ),
    );
  }
}
