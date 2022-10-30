// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:expense_management/Profile/wid_profile.dart';
class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return 
       Scaffold(
        appBar: AppBar(
    
            // leadingWidth: 40,
            title: Text(
              "Profile",
              style: TextStyle(
                  color: Color.fromARGB(255, 12, 103, 68), fontSize: 25),
            ),
            toolbarHeight: 70,
            leadingWidth: 40,
            backgroundColor: Color.fromARGB(255, 232, 231, 231),
            centerTitle: true,
            automaticallyImplyLeading: false,
            elevation: 0,
            actions: [
              Ink(
                  decoration: ShapeDecoration(
                    // color: Colors.green,
                    shape: RoundedRectangleBorder(),
                  ),
                  child: IconButton(onPressed: () {}, icon: Icon(Icons.settings ,color: Color.fromARGB(255, 12, 103, 68))))
            ],
            leading: Ink(
                decoration: ShapeDecoration(
                  // color: Colors.green,
                  shape: RoundedRectangleBorder(),
                ),
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios,color: Color.fromARGB(255, 12, 103, 68))))),
        body: Column(
          children: [
            Container(child:Text("text") ,),
            Container(
              // color: Colors.amber,
              height: 150,
              
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network("https://www.citypng.com/public/uploads/preview/hd-profile-user-round-green-icon-symbol-transparent-png-11639594320ayr6vyoidq.png",height: 105.63,width: 105.63,),
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  // margin: EdgeInsets.all(20.0),
                  // padding: EdgeInsets.all(16.0),
                  // padding: EdgeInsets.only(right: 10.0),
                  alignment: Alignment.topCenter,
                  child: const Center(
                    child: Text(
                      'Faisal Othman',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              // color: Colors.amber,
              height: 50,
              decoration: BoxDecoration(
           border: Border(
              bottom: BorderSide(width: 1.0, color: HexColor("#E4E4E4")),
           ),
       ),
              
              child: Row(
                
                children: [
                  WidProfile(text: "Account Info",
                   image: "https://img.icons8.com/windows/24/519872/contacts.png")
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              // color: Colors.amber,
              decoration: BoxDecoration(
           border: Border(
              bottom: BorderSide(width: 1.0, color: HexColor("#E4E4E4")),
           ),
       ),
              height: 40,
              
              child: Row(children: [
                WidProfile(
                  text:"Setting", 
                  image:"https://img.icons8.com/small/24/519872/gear.png")
                  
                  ],)),
            SizedBox(height: 10,),
            Container(
              // color: Colors.amber,
              decoration: BoxDecoration(
           border: Border(
              bottom: BorderSide(width: 1.0, color: HexColor("#E4E4E4")),
           ),
       ),
              height: 50,
              child: Row(children: [WidProfile(text: "Contact", image: "https://img.icons8.com/external-anggara-basic-outline-anggara-putra/24/519872/external-telephone-interface-anggara-basic-outline-anggara-putra-2.png")],)),
            SizedBox(height: 10,),
            Container(
              decoration: BoxDecoration(
           border: Border(
              bottom: BorderSide(width: 1.0, color: HexColor("#E4E4E4")),
           ),
       ),
              // color: Colors.amber,
              height: 50,
              child: Row(children: [WidProfile(text: "Help Center", image: "https://img.icons8.com/windows/32/519872/why-us-female.png")],)),
            SizedBox(height: 10,),
            Container(
              decoration: BoxDecoration(
           border: Border(
              bottom: BorderSide(width: 1.0, color: HexColor("#E4E4E4")),
           ),
       ),
              // color: Colors.amber,
              height: 50,
              child: Row(children: [WidProfile(text: "Language", image: "https://img.icons8.com/material-outlined/24/519872/language.png")],)),
            
          ],
        ),
      );
    
  }
}