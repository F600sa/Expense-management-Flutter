import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class WidProfile extends StatefulWidget {
  final String text; 
  final String image;
  const WidProfile({ required this.image,required this.text,super.key});

  @override
  State<WidProfile> createState() => _WidProfileState();
}

class _WidProfileState extends State<WidProfile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.amber,
      width: 400,
      child: Row(
        
        crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(this.widget.text),
                      ],
                    ),
                    
                    Container(
                      width: 60,
                      child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                        Image.network(this.widget.image,height: 40,width: 60,),
                      ],),
                    )
                  ],
      ),
    );
    
  }
}