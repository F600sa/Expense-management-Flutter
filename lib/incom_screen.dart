// ignore_for_file: avoid_unnecessary_containers

// import 'package:flutter/material.dart';
// class IncomeScreen extends StatelessWidget {
//   const IncomeScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const SafeArea(
//       child: Scaffold(
//         body: Text("IncomeScreen"),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home.dart';

class MyIncomPage extends StatefulWidget {
  const MyIncomPage({super.key, required this.title});

  final String title;

  @override
  State<MyIncomPage> createState() => _MyIncomPageState();
}

class _MyIncomPageState extends State<MyIncomPage> {
  TextEditingController _incomeController = TextEditingController();
  TextEditingController _dateController = TextEditingController();

  get pickedDate => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("مرحبا بك ",
               
                style: GoogleFonts.ibmPlexSansArabic(
                    fontSize: 20, color: Color.fromRGBO(81, 152, 114, 1))),
            Container(
              width: 100,
              height: 100,
             
            ),
            Row(
              children: [
                Container(
                  padding:
                      EdgeInsets.only(left: 30, bottom: 20, right: 20, top: 10),
                  child:
                   
                      Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("ادخل الراتب",
                          textAlign: TextAlign.start,
                          style: GoogleFonts.ibmPlexSansArabic(
                              fontSize: 20,
                              color: Color.fromRGBO(81, 152, 114, 1))
                       
                          ),
                    ],
                  ),
                ),
                // ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 30, right: 30, bottom: 30),
              child: TextFormField(
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                controller: _incomeController,
                style: TextStyle(
                  color: Color.fromRGBO(81, 152, 114, 1),
                  fontSize: 22,
                ),
                cursorColor: Color.fromRGBO(81, 152, 114, 1),
                decoration: InputDecoration(
                  hintText: '١٠٠ ريال',
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 17),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty)
                    return 'عذرا هذا الحقل مطلوب ';
                  return null;
                },
              ),
            ),

            Row(
              children: [
                Container(
                  padding:
                      EdgeInsets.only(left: 30, bottom: 20, right: 20, top: 10),
                  child: Text("ادخل تاريخ الراتب",
                  

                      style: GoogleFonts.ibmPlexSansArabic(
                          fontSize: 20,
                          color: Color.fromRGBO(81, 152, 114, 1))),
                ),
                // ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 30, right: 30, bottom: 50),
              child: TextFormField(
                controller: _dateController, //
                obscureText: true,
                style: TextStyle(
                  color: Color.fromRGBO(81, 152, 114, 1),
                  fontSize: 17,
                ),
                cursorColor: Color.fromRGBO(81, 152, 114, 1),
                decoration: InputDecoration(
                  // icon: Icon(Icons.calendar_today_rounded),
                  prefixIcon: Icon(Icons.calendar_today),
                  hintText: 'التاريخ',
                  hintStyle: TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),

                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
                onTap: () async {
                  DateTime? pickeddate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2101));

                },
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1.1,
              height: 50,
              // width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color.fromRGBO(81, 152, 114, 1),
              ),
              child: MaterialButton(
                onPressed: () {
                  print('income:' + _incomeController.text);
                  print('date:' + _dateController.text);

                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>
                          homePage(income: _incomeController.text)));
                  SimpleDialog(context);
               
                },
                child: Text('التالي',
                   
                    style: GoogleFonts.ibmPlexSansArabic(
                        fontSize: 20,
                        color: Color.fromARGB(255, 243, 245, 244))),
              ),
            ),
        
          ],
        ),
      ),
    );
  }

  
}



//aleart 
Future<void> SimpleDialog(BuildContext context) {
  return showDialog<void>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('تمت الاضافه بنجاح'),
          // content: Text('title'),
          actions: [
            new FloatingActionButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('انتهيت'),
            )
          ],
        );
      });
}
