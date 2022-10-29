import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
// import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';
import 'package:hexcolor/hexcolor.dart';
class MyWidget extends StatefulWidget {
  final String text; 
  final String text2; 
  final String image;
  // final String color;
  final String color1;
  const MyWidget({required this.color1,required this.text,required this.text2,required this.image,super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
            
            

          padding:EdgeInsets.symmetric(vertical: 12,horizontal: 5) ,
          decoration: BoxDecoration( borderRadius: BorderRadius.circular(31)),
          // clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Column(
            
            children: [
            
            Card(
              shape: BeveledRectangleBorder(
              borderRadius: BorderRadius.circular(9.0),
  ),
              child: Column(
                
                children: [
                  SizedBox(
                    // width: 400,
                    height: 80,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      // crossAxisAlignment: CrossAxisAlignment.,
                      children: [
                          
                    Container(width:80,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                            
                          Container(
                            
                            decoration: BoxDecoration( borderRadius: BorderRadius.circular(10)),
// color:HexColor(this.widget.color),
                            child: Image.network(this.widget.image,height: 75,width: 75,)),
                        ],
                        
                      ),
                    ),
                      Container(
                        width:95 ,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Center(child: Text(this.widget.text,style: 
                            TextStyle(fontSize: 16,
                            fontWeight: FontWeight.bold),)),
                          ],
                        ),
                      ),
                      
                      Container(
                        width: 200,
                        height: 75,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Center(
                              child: Text(
                              this.widget.text2, 
                              style: TextStyle(
                              color: HexColor(this.widget.color1),
                              fontSize: 16,
                              fontFamily: 'Inter',),)),
                              Center(
                              child: Text(
                              " SAR", 
                              style: TextStyle(
                              color: HexColor(this.widget.color1),
                              fontSize: 16,
                              fontFamily: 'Inter',),)),
                          ],
                        ),
                      ),


                      ],
                    ),
                  ),
                  // Container(
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.start,
                  //     crossAxisAlignment: CrossAxisAlignment.end,
                  //     children: [
                  //       Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNjTcQ9imUelphU_Gi7Ta9avhAm0KFXlCN9A&usqp=CAU",height: 75,width: 75,)],),
                  // )
                ],
              ),
            ),
              
          ],),
        );
  }
}