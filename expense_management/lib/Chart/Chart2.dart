import 'package:expense_management/Home/expenses_calsses.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:expense_management/Chart/wid.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:expense_management/Home/home_controller.dart';
import 'package:expense_management/main.dart';

 var lists = [[2],[23],[23],[500]];
  var sum = lists.reduce((value, current) => value + current);
   var a1 = sum.reduce((value, current) => value + current);
   double x=75.0;
  C a32 =new C();
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
    return SafeArea(
      
      child: 
    Scaffold(
      // appBar: AppBar(title: Text("Chart",style: 
      // TextStyle(color: HexColor("#519872"),
      // fontSize: 24,
      // fontWeight: FontWeight.w600
      // ),),
      // backgroundColor: Colors.white,
      // shadowColor: Colors.white,),
      body:SingleChildScrollView(
        child: Container(
          padding:EdgeInsets.symmetric(vertical: 10,horizontal: 10) ,
          child: Column(
            
            children: [
           Text("Charts",style: 
      TextStyle(color: HexColor("#519872"),
      fontSize: 30,
      fontWeight: FontWeight.w600
      ),),


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
  
                child: Column(
                  children: [
                    
                    
                    
                    Row(
                      // crossAxisAlignment: CrossAxisAlignment.end,
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                                              width: 150,
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
                            // width: 150,
                            // ignore: prefer_const_constructors
                            child: Text("This Month",
                            textAlign: TextAlign.center,
                            // ignore: prefer_const_constructors
                            style: TextStyle(
                              fontWeight:FontWeight.w400,
                              fontSize: 20,
                              fontFamily: 'Inter'
                            ),
                            )
                            ,),
                        ),
                          Expanded(
                            child: Container(
                            child: Row(            
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                          Image.network("https://i.ibb.co/N60HQdj/Vector0.png",height: 50,width: 40,),
                                                  ],
                                                ),
                                              ),
                          ),
                    
                      ],
                    ),
                    SfCircularChart(
                      
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
                    // title: ChartTitle(text: "Charts"),
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
                  ],
                ),
            // color:"#B7DEC9",color:"#FEF0D0"
              ),
        MyWidget(text: "Saving",text2: a1.toString(),icons2: Icons.date_range,color23: ("#519872"),color1:("#519872")),
        MyWidget(text: "Expense",text2: "1700",icons2: Icons.abc ,color23: ("#EBA90D"),color1:("#EBA90D")),
        MyWidget(text: "Goal",text2: "250",icons2: Icons.abc,color23: ("#519872"),color1:"#519872",),
        MyWidget(text: "Fixed",text2: "1000",icons2: Icons.abc,color23: ("EBA90D"),color1:"#EBA90D"),
       

            ],
          ),
        ),
      ),));
  }
  List<GDPData>GetChartData(){
    final List<GDPData>chartData=[
      GDPData("Saving",1000 ),
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
  final double gdp;
}

  