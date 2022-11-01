import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
// import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';
import 'package:hexcolor/hexcolor.dart';

class MyWidget extends StatefulWidget {
  final String text; 
  final String text2; 
  final IconData icons2;
  final String color23;
  final String color1;
  const MyWidget({required this.color23,required this.color1,required this.text,required this.text2,required this.icons2,super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // scrollDirection: Axis.horizontal,
      child: Container(
              
              width: double.infinity,
    
            padding:EdgeInsets.symmetric(vertical: 3,horizontal: 5) ,
            decoration: BoxDecoration( borderRadius: BorderRadius.circular(31)),
            // clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Column(
              
              children: [
              
              Card(
                
                shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(3.0),
      ),
                child: Column(
                  
                  children: [
                    SizedBox(
                      // width: 4900,
                      height: 70,
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        // crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                            
                      
                        
                        
                        Expanded(
                          child: Container(
                            // color: Colors.amber,
                            width:100,
                            height: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Center(
                                  child: Text(
                                  " ريال ", 
                                  style: 
                                  TextStyle(
                                  color: HexColor(this.widget.color1),
                                  fontSize: 16,
                                  fontFamily: 'Inter',)),),
                                Center(
                                  child: Text(
                                  this.widget.text2, 
                                  style: TextStyle(
                                  color: HexColor(this.widget.color1),
                                  fontSize: 16,
                                  fontFamily: 'Inter',),)),
                                  
                              ],
                            ),
                          ),
                        ),
                        Container(
                          // color: Colors.black26,
                          width:220 ,
                          // height: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Center(child: Text(this.widget.text,style: 
                              TextStyle(fontSize: 20,
                              fontWeight: FontWeight.bold
                              ),)),
                            ],
                          ),
                        ),
                          Container(
                            
                            // color: Colors.amber,
                            width:50,
                            // height: double.infinity,
                        child: Row(
                          
                            mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                              
                            Container(
                              width: 30,
                              // height: double.infinity,
                              
                              decoration: BoxDecoration( borderRadius: BorderRadius.circular(10)),
    // color:HexColor(this.widget.color),
                              child:Icon(this.widget.icons2,color:HexColor(this.widget.color23,) ,),
                            )
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
          ),
    );
  }
}