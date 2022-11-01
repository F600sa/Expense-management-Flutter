import 'package:expense_management/Home/expenses_calsses.dart';
import 'package:expense_management/Profile/profile.dart';
import 'package:expense_management/Test.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:expense_management/Chart/wid.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:expense_management/Home/home_controller.dart';
import 'package:expense_management/main.dart';
import 'package:get/get.dart';

import '../widget/OutlinedButton.dart';

  Home_Controller controller = Get.put<Home_Controller>(Home_Controller(),tag: "home_data", permanent: true);
  

 var lists = [[2],[23],[23],[500]];
  var sum = lists.reduce((value, current) => value + current);
   var a1 = sum.reduce((value, current) => value + current);
   double x=75.0;
 
  var total_expenses;
  
class Chart extends StatefulWidget {

  const Chart({super.key});

  @override
  State<Chart> createState() => _ChartState();
  
}

class _ChartState extends State<Chart> {

      
   late List<GDPData> _chartData;
  @override
  void initState() {
    _chartData=GetChartData();
    super.initState();
  }
  
  @override
  
  Widget build(BuildContext context) {

    return SingleChildScrollView(
        
        // scrollDirection: Axis.horizontal,
        child: Container(
          width: double.infinity,
          
          padding:EdgeInsets.symmetric(vertical: 1,horizontal: 1) ,
          child: Column(
                       
            children: [
      //      Text("Charts",style: 
      // TextStyle(color: HexColor("#519872"),
      // fontSize: 30,
      // fontWeight: FontWeight.w600
      // ),),======'
              Container(   
                width: double.infinity,
                decoration: const BoxDecoration(
                  // color: Colors.amber,
                color: Colors.white,
                borderRadius: BorderRadius.all( Radius.circular(31),),
                boxShadow: [
                    BoxShadow(
                    color: Color.fromARGB(255, 231, 228, 228),
                    blurRadius: 1,
                    spreadRadius: 1,
                    offset: Offset(0, 0)
                ),
                BoxShadow(
                    color: Color.fromARGB(255, 231, 228, 228),
                    blurRadius: 1,
                    spreadRadius: 1,
                    offset: Offset(1, 1)
                ),
                  ],          
  ),
                child: Column(
                  children: [
                    Row(
                      // crossAxisAlignment: CrossAxisAlignment.end,
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                                              width: double.infinity,
                                              // height: 30,
                                              // color: Colors.black12,
                                              child: Row(
                          // crossAxisAlignment: CrossAxisAlignment.,
                          // mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            
                             Image.network("https://i.ibb.co/H76y4Zd/Vector210.png",height: 50,width: 40,)
                          ],
                                              ),
                                            ),
                        ),
                        Expanded(
                          child: Container(
                            
                            // color: Colors.amber,
                            width: double.infinity,
                            // ignore: prefer_const_constructors
                            child: Text("الشهر الحالي",
                            textAlign: TextAlign.center,
                            // ignore: prefer_const_constructors
                            style:GoogleFonts.ibmPlexSansArabic(fontSize: 16)
                            //  TextStyle(
                            //   fontWeight:FontWeight.w400,
                            //   fontSize: 20,
                            //   fontFamily: 'Inter'
                            // ),
                            )
                            ,),
                        ),
                          Expanded(
                            child: Container(
                              width: double.infinity,
                            child: Row(            
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                          Image.network("https://i.ibb.co/N60HQdj/Vector0.png",height: 50,width: 30,),
                                                  ],
                                                ),
                                              ),
                          ),
                    
                      ],
                    ),
                    SfCircularChart(
                      
                      palette: <Color>[
                          
                          // HexColor("#FEF0D0"),
                          HexColor("#B7DEC9"),
                          HexColor("#EBA90D"),
                          HexColor("#519872"),
                         ],
                          
                      annotations: <CircularChartAnnotation>[
                      CircularChartAnnotation(
                        widget: 
                          Container(
                            
                            child: const Text('الرسم \nالبياني',style:
                            TextStyle(

                              fontWeight:FontWeight.w700,
                              fontSize: 20,
                              
                            ),
                            )
                          ),
                      )
                    ],
                    // title: ChartTitle(text: "Charts"),
                    legend:
                    
                     Legend(
                    isVisible: true,
                    overflowMode: LegendItemOverflowMode.wrap,
                    position: LegendPosition.bottom,
                    iconHeight: 20,
                    iconWidth: 28,
                    itemPadding: 30,
                    textStyle:TextStyle(fontSize: 18)
                      ),
                    series:<CircularSeries> [
                      DoughnutSeries <GDPData,String>(
                        dataSource: _chartData,
                        
                        xValueMapper: (GDPData data,_)=>data.continent,
                        yValueMapper: (GDPData data,_)=>data.gdp,
                        // dataLabelSettings: DataLabelSettings(isVisible: true),
                        radius: '80%',
                        innerRadius: '90%',
                        // ignore: prefer_const_constructors
                        dataLabelSettings: DataLabelSettings(
                                    isVisible: true,
                                    labelPosition: ChartDataLabelPosition.outside,
                                    // ignore: prefer_const_constructors
                                    connectorLineSettings: ConnectorLineSettings(
                                        // Type of the connector line
                                        type: ConnectorType.curve
                                    )
                                )
                      )
                    ],
            ),
                  ],
                ),
              ),
          
        Row(
          mainAxisAlignment:MainAxisAlignment.spaceBetween,
          children: [ 
            TextButton(onPressed: (){
              Navigator.push
              
              (context,
              MaterialPageRoute(builder: (context) => const Test2())
              );
            }, child: Text("المزيد",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,decoration: TextDecoration.underline,color: Colors.black),)),
            Text("مجموع العمليات",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          ],
         ),



       
        MyWidget(text: "الدخل",text2: controller.income.toString(),icons2: Icons.money_sharp,color23: ("#519872"),color1:("#519872")),
        MyWidget(text: "المصروفات",text2:controller.spending_fun(1000).toString() ,icons2: Icons.money ,color23: ("#EBA90D"),color1:("#EBA90D")),
        MyWidget(text: "الادخار",text2: controller.saving_fun(controller.income, controller.spending_fun(1000)).toString(),icons2: Icons.flag,color23: ("#519872"),color1:"#519872",),
        
            ],
          ),
        ),
      );
  }
  List<GDPData>GetChartData(){
    final List<GDPData>chartData=[
      GDPData("الدخل",controller.income ),
      GDPData("المصروفات",controller.spending_fun(1000)),
      GDPData("الادخار", controller.saving_fun(controller.income, controller.spending_fun(1000))),
      // GDPData("Fixed", 134),
      
    ];
    return chartData;
  }
}
class GDPData{
  GDPData(this.continent,this.gdp);
  final String continent;
  final double gdp;
}

 var font=GoogleFonts.ibmPlexSansArabic();