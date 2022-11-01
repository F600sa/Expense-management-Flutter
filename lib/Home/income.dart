import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../main.dart';
import 'home_controller.dart';
import 'home_screen.dart';

class MyIncomPage extends StatefulWidget {
   MyIncomPage({super.key, required this.title});
  Home_Controller controller = Get.put<Home_Controller>(Home_Controller(),
      tag: "home_data", permanent: true);
      
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
            Text(
              "Welcome",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 45, 136, 87)),
            ),
            Container(
              width: 100,
              height: 100,
              // child: Image.asset('assests/logo.png'),
            ),
            Row(
              children: [
                Container(
                  padding:
                      EdgeInsets.only(left: 30, bottom: 20, right: 20, top: 10),
                  child: Text(
                    "Enter your Salary",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(81, 152, 114, 1),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 30, right: 30, bottom: 50),
              child: TextFormField(
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                controller: _incomeController, //
                // obscureText: true,
                style: TextStyle(
                  color: Color.fromRGBO(81, 152, 114, 1),
                  fontSize: 17,
                ),
                cursorColor: Color.fromARGB(255, 10, 10, 10),
                decoration: InputDecoration(
                  hintText: 'Insert Income',
                  hintStyle: TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
            ),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 30, right: 30, bottom: 20),
                  child: Text(
                    "Enter Salary Date",
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(81, 152, 114, 1)),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 30, right: 30, bottom: 30),
              child: TextFormField(
                controller: _dateController,
                style: TextStyle(
                  color: Color.fromRGBO(81, 152, 114, 1),
                  fontSize: 22,
                ),
                cursorColor: const Color.fromARGB(255, 45, 136, 87),
                decoration: const InputDecoration(
                  // icon: Icon(Icons.calendar_today_rounded),
                  prefixIcon: Icon(Icons.calendar_today),
                  hintText: 'Input date',
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
              width: MediaQuery.of(context).size.width / 1.2,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Color.fromARGB(255, 45, 136, 87),
              ),
              child: MaterialButton(
                onPressed: () {
                 var a990= _incomeController.toString();
                  _dateController.toString();
                  print('income:' + _incomeController.text);
                  print('date:' + _dateController.text);
                  // route me
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      //
                      builder: (BuildContext context) {
                        return Mian();
                      },
                    ),
                  );
                },
                child: Text(
                  'Next',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
