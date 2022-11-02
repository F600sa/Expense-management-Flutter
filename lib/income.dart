import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart' as intel;

import 'jaeeb_controller.dart';
import 'jaeeb_controller2.dart';
import 'main.dart';
  TextEditingController _dateController = TextEditingController();
class Income extends StatelessWidget {
  
  const Income({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stricture(),
      ),
    );
  }
}

class Stricture extends StatefulWidget {
  Stricture({super.key});

  @override
  State<Stricture> createState() => _StrictureState();
}

class _StrictureState extends State<Stricture> {
  TextEditingController salaryController = TextEditingController();

  Home_Controller2 controller = Get.put<Home_Controller2>(Home_Controller2());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      padding: EdgeInsets.fromLTRB(15, 80, 15, 80),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        
        children: [
          Container(
            
            child: Center(
              
              child: Text(
                "مرحبا بك ",
                style: GoogleFonts.ibmPlexSansArabic(
                    color: Color(0xFF519872),
                    fontSize: 24,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "الراتب الشهري ",
                style: GoogleFonts.ibmPlexSansArabic(
                      color: Color(0xFF519872),
                      fontSize: 16,
                      fontWeight: FontWeight.w700),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            controller: salaryController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: '',
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "يوم راتب ",
                style: GoogleFonts.ibmPlexSansArabic(
                      color: Color(0xFF519872),
                      fontSize: 16,
                      fontWeight: FontWeight.w700),
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
           TextFormField(
                controller: _dateController, //
                // obscureText: true,
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
                      if (pickeddate != null) {
                      setState(() {
                        _dateController.text =
                            intel.DateFormat("yyy-dd-mm").format(DateTime.now());
                      });
                    }
                  

                },
              ),
          SizedBox(
            height: 16,
          ),
          
           Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: Color(0xFF519872),
                ),
                child: TextButton(
                  onPressed: () {
                    double salary = double.parse(salaryController.text);
                    controller.onchangedIncome(salary);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Navigation()),
                      // SimpleDialog(context);
                    );
                  },
                  child: Text(
                    "التالي",
                    style: GoogleFonts.ibmPlexSansArabic(
                  color:Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              
              
        ],
      ),
    );
  }
}
Future<void> SimpleDialog(BuildContext context) {
  return showDialog<void>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('تمت الاضافه بنجاح'),
          // content: Text('تمت الاضافه ينجاح'),
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