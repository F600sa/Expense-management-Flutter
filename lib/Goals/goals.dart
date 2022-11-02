import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../jaeeb_controller.dart';
import 'GoalsPage.dart';
import 'package:google_fonts/google_fonts.dart';

class GoalsPage extends StatefulWidget {
  const GoalsPage({super.key});

  @override
  _GoalsPageState createState() {
    return _GoalsPageState();
  }
}

class _GoalsPageState extends State<GoalsPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    goalDescriptionMaxLenth =
        goalsDescriptionMaxLines * goalsDescriptionMaxLines;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          toolbarHeight: 70,
          leadingWidth: 40,
          backgroundColor: Colors.white,
          centerTitle: true,
          automaticallyImplyLeading: false,
          elevation: 0,
          leading: Ink(
            decoration: const ShapeDecoration(
              color: Color.fromRGBO(81, 152, 114, 1),
              shape: CircleBorder(),
            ),
            child: IconButton(
                onPressed: () {
                  _settingModalBottomSheet(context);
                },
                icon: const Icon(
                  Icons.add,
                  size: 15,
                )),
          ),
          title: goalsHeader()),
      body: goalHeading.isNotEmpty
          ? buildGoals()
          : Center(
              child: Text(
                "اضافة الادخار",
                // style:
                style: GoogleFonts.ibmPlexSansArabic(
                    color: Color.fromRGBO(81, 152, 114, 1)),
              ),
            ),
    );
  }

// Deleted Deleted Deleted Deleted

  Widget buildGoals() {
    return Padding(
      padding: const EdgeInsets.only(
        top: 10,
        left: 10,
        right: 10,
      ),
      child: ListView.builder(
        itemCount: goalHeading.length,
        itemBuilder: (context, int index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 5.5),
            child: Dismissible(
              key: UniqueKey(),
              direction: DismissDirection.horizontal,
              onDismissed: (direction) {
                setState(() {
                  deletedGoalHeading = goalHeading[index];
                  deletedGoalDescription = goalDescription[index];
                  deletedggoalController = goalsHD[index];

                  goalHeading.removeAt(index);
                  goalDescription.removeAt(index);
                  goalsHD.removeAt(index);

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      backgroundColor: const Color.fromRGBO(235, 169, 13, 1),
                      content: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "حذف",
                            style: GoogleFonts.ibmPlexSansArabic(),
                          ),
                          deletedGoalHeading != ""
                              ? GestureDetector(
                                  onTap: () {
                                    ("تراجع");
                                    setState(() {
                                      if (deletedGoalHeading != "") {
                                        goalHeading.add(deletedGoalHeading);
                                        goalDescription
                                            .add(deletedGoalDescription);
                                        goalsHD.add(deletedggoalController);
                                      }
                                      deletedGoalHeading = "";
                                      deletedGoalDescription = "";
                                      deletedggoalController = "";
                                    });
                                  },
                                  child: Text(
                                    "تراجع",
                                    style: GoogleFonts.ibmPlexSansArabic(),
                                  ),
                                )
                              : const SizedBox(),
                        ],
                      ),
                    ),
                  );
                });
              },
              background: ClipRRect(
                borderRadius: BorderRadius.circular(5.5),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 194, 30, 30),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  margin: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.delete,
                            color: Colors.white,
                          ),
                          Text(
                            "حذف",
                            style: GoogleFonts.ibmPlexSansArabic(
                                color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              child: goalList(index),
            ),
          );
        },
      ),
    );
  }

  Widget goalList(int index) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 30, top: 30),
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(255, 211, 209, 209).withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 1,
              // offset: const Offset(0, 0),
            ),
          ],
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Row(
              children: [
                const Spacer(),
                Text(
                  goalHeading[index],
                  style:
                      const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(
              height: 30,
              child: Row(
                children: [
                  Text(
                    "مبلغ الاستقطاع",
                    style: GoogleFonts.ibmPlexSansArabic(
                        fontSize: 14, color: Colors.grey),
                  ),
                  Spacer(),
                  Text(
                    "اجمالي المبلغ ",
                    style: GoogleFonts.ibmPlexSansArabic(
                        fontSize: 14, color: Colors.grey),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Text(
                  goalsHD[index],
                  style: const TextStyle(fontSize: 15),
                ),
                const Spacer(),
                Text(
                  goalDescription[index],
                  style: const TextStyle(fontSize: 15),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Container(
              height: 8,
              width: double.infinity,
              color: Color.fromRGBO(81, 152, 114, 1),
            )
          ],
        ),
      ),
    );
  }

  void _settingModalBottomSheet(context) {
    Home_Controller controller = Get.put<Home_Controller>(Home_Controller(),
        tag: "home_data", permanent: true);
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      elevation: 70,
      isDismissible: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          topLeft: Radius.circular(30),
        ),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      builder: (BuildContext bc) {
        return Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: (MediaQuery.of(context).size.width),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 100, top: 50),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "إدخار جديد",
                            style: GoogleFonts.ibmPlexSansArabic(
                              color: Color.fromRGBO(81, 152, 114, 1),
                              fontSize: 20.00,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 50),
                      Row(children: [
                        Text(
                          "ادخل الادخار",
                          style: GoogleFonts.ibmPlexSansArabic(
                            fontSize: 16,
                            color: Color.fromRGBO(81, 152, 114, 1),
                          ),
                        )
                      ]),
                      const SizedBox(height: 13),
                      TextFormField(
                        maxLength: goalHeaderMaxLenth,
                        controller: goalHeadingController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "سيارة ",
                          hintStyle: TextStyle(
                            fontSize: 12.00,
                            color: Color.fromARGB(81, 152, 158, 158),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty)
                            return 'Field is required.';
                          return null;
                        },
                        onFieldSubmitted: (String value) {
                          FocusScope.of(context)
                              .requestFocus(textSecondFocusNode);
                        },
                      ),
                      Row(
                        children: [
                          Text(
                            "المبلغ الاجمالي",
                            style: GoogleFonts.ibmPlexSansArabic(
                                fontSize: 16,
                                color: Color.fromRGBO(81, 152, 114, 1)),
                          )
                        ],
                      ),
                      const SizedBox(height: 13),
                      TextFormField(
                        // focusNode: textSecondFocusNode,
                        maxLength: goalHeaderMaxLenth,
                        controller: goalDescriptionController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: '٥٥٠٠٠٠ ريال',
                          hintStyle: TextStyle(
                            fontSize: 12.00,
                            color: Color.fromARGB(134, 158, 158, 158),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty)
                            return 'Field is required.';
                          return null;
                        },
                      ),
                      Row(
                        children: [
                          Text(
                            "مبلغ الاستقطاع الشهري ؟",
                            style: GoogleFonts.ibmPlexSansArabic(
                                fontSize: 16,
                                color: Color.fromRGBO(81, 152, 114, 1)),
                          )
                        ],
                      ),
                      const SizedBox(height: 13),
                      TextFormField(
                        maxLength: goalHeaderMaxLenth,
                        controller: goalController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "٥٠٠ ريال ",
                          hintStyle: TextStyle(
                            fontSize: 12.00,
                            color: Color.fromARGB(134, 158, 158, 158),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty)
                            return 'Field is required.';
                          return null;
                        },
                      ),
                      const SizedBox(height: 80),
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          style: TextButton.styleFrom(
                            backgroundColor:
                                const Color.fromRGBO(81, 152, 114, 1),
                          ),
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              controller.add_goals_list(
                                  double.parse(goalController.text),
                                  double.parse(goalController.text),
                                  "goal");
                              print(controller.total_goals_fun());
                              setState(() {
                                goalHeading.add(goalHeadingController.text);
                                goalDescription
                                    .add(goalDescriptionController.text);
                                goalsHD.add(goalController.text);
                                goalHeadingController.clear();
                                goalDescriptionController.clear();
                                goalController.clear();
                              });
                              Navigator.pop(context);
                            }
                          },
                          child: Text(
                            "اضافة الى مدخراتي",
                            style: GoogleFonts.ibmPlexSansArabic(
                                fontSize: 16,
                                color: Color.fromARGB(255, 255, 255, 255)),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

Widget goalsHeader() {
  return Padding(
    padding: const EdgeInsets.only(
      top: 10,
      left: 2.5,
      right: 2.5,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "   مدخراتي ",
          style: GoogleFonts.ibmPlexSansArabic(
              color: Color.fromRGBO(81, 152, 114, 1),
              fontSize: 25.00,
              fontWeight: FontWeight.w400),
        ),
      ],
    ),
  );
}
