import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class WidProfile extends StatefulWidget {
  final String text; 
  final String image;
  const WidProfile({required this.text ,required this.image,super.key});

  @override
  State<WidProfile> createState() => _WidProfileState();
}

class _WidProfileState extends State<WidProfile> {
  @override
  Widget build(BuildContext context) {
    return Row(
      
      crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.network(this.widget.image,height: 40,width: 60,),
                  Container(
                    width: 90,
                    child: Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                      Text(this.widget.text)
                    ],),
                  )
                ],
    );
    
  }
}