import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'dart:ffi';
import 'package:expense_management/Home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:expense_management/Chart/wid.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:expense_management/Home/home_controller.dart';
 var lists = [[2],[23],[23],[500]];
  var sum = lists.reduce((value, current) => value + current);
   var a1 = sum.reduce((value, current) => value + current);
   var x=75;
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
    return SafeArea(
      child: 
    Scaffold(
      body:SingleChildScrollView(
        child: Container(
          padding:EdgeInsets.symmetric(vertical: 15,horizontal: 10) ,
          child: Column(
            
            children: [
           


              Container(
                
                decoration: const BoxDecoration(
                  // color: Colors.amber,
                
                borderRadius: BorderRadius.all(Radius.circular(31),),
                boxShadow: [BoxShadow(
                  color: Color.fromARGB(255, 231, 228, 228),
                      offset: const Offset(
                        5.0,
                        5.0,
                      ),

                  )
                  ,BoxShadow(
                      color: Colors.white,
                      offset: const Offset(7.0, 0.0),
                      blurRadius: 0.0,
                      spreadRadius: 0.0,
                    ), //BoxShadow
                    
                  ]
  ),
  
                child: SfCircularChart(
                  
                  palette: <Color>[
                      HexColor("#519872"),
                      HexColor("#FEF0D0"),
                      HexColor("#B7DEC9"),
                      HexColor("#EBA90D"),
                     ],
                      
                  annotations: <CircularChartAnnotation>[
                  CircularChartAnnotation(
                    widget: 
                      Container(
                        
                        child: const Text('BALANCE',style: 
                        TextStyle(
                          fontWeight:FontWeight.w700,
                          fontSize: 15,
                          
                        ),)
                      ),
                  )
                ],
                title: ChartTitle(text: "Charts"),
                legend:
                
                 Legend(
                isVisible: true,
                overflowMode: LegendItemOverflowMode.wrap,
                position: LegendPosition.bottom,
                iconHeight: 17,
                iconWidth: 17,
                itemPadding: 18,
                
                  ),
                series:<CircularSeries> [
                  DoughnutSeries <GDPData,String>(
                    dataSource: _chartData,
                    
                    xValueMapper: (GDPData data,_)=>data.continent,
                    yValueMapper: (GDPData data,_)=>data.gdp,
                    // dataLabelSettings: DataLabelSettings(isVisible: true),
                    radius: '80%',
                    innerRadius: '90%',
                    
                  )
                ],
            ),
            // color:"#B7DEC9",color:"#FEF0D0"
              ),
        MyWidget(text: "Saving",text2: a1.toString(),image: "https://i.ibb.co/J5FS6hc/Vector-Stroke.png",color1:("#519872")),
        MyWidget(text: "Expense",text2: "1700",image: "https://i.ibb.co/k6g005Q/Vector.png" ,color1:("#EBA90D")),
        MyWidget(text: "Goal",text2: "250",image: "https://i.ibb.co/J5FS6hc/Vector-Stroke.png",color1:"#519872",),
        MyWidget(text: "Fixed",text2: "1000",image: "https://i.ibb.co/82ptT5R/Vector22.png",color1:"#EBA90D"),
       

            ],
          ),
        ),
      ),));
  }
  List<GDPData>GetChartData(){
    final List<GDPData>chartData=[
      GDPData("Saving", a1),
      GDPData("Expense",2,),
      GDPData("Goal", x),
      GDPData("Fixed", 134),
      
    ];
    return chartData;
  }
}
class GDPData{
  GDPData(this.continent,this.gdp);
  final String continent;
  final int gdp;
}

  