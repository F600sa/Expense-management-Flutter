import 'package:flutter/material.dart';
import 'GoalsPage.dart';

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
          actions: [
            Ink(
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
                    )))
          ],
          leading: Ink(
            decoration: const ShapeDecoration(
              color: Color.fromRGBO(81, 152, 114, 1),
              shape: CircleBorder(),
            ),
            child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  size: 15,
                )),
          ),
          title: goalHeader()),
      body: goalHeading.isNotEmpty
          ? buildGoals()
          : const Center(
              child: Text(
                "Add Goal",
                style: TextStyle(
                  color: Color.fromRGBO(81, 152, 114, 1),
                ),
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
                  goalHeading.removeAt(index);
                  goalDescription.removeAt(index);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      backgroundColor: const Color.fromRGBO(235, 169, 13, 1),
                      content: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Goal Deleted",
                            style: TextStyle(),
                          ),
                          deletedGoalHeading != ""
                              ? GestureDetector(
                                  onTap: () {
                                    ("undo");
                                    setState(() {
                                      if (deletedGoalHeading != "") {
                                        goalHeading.add(deletedGoalHeading);
                                        goalDescription
                                            .add(deletedGoalDescription);
                                      }
                                      deletedGoalHeading = "";
                                      deletedGoalDescription = "";
                                    });
                                  },
                                  child: const Text(
                                    "Undo",
                                    style: TextStyle(),
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
                  margin: const EdgeInsets.only(top: 5, bottom: 5),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.delete,
                            color: Colors.white,
                          ),
                          Text(
                            "Delete",
                            style: TextStyle(color: Colors.white),
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
    return Container(
      height: 90,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Center(
          child: ListTile(
            leading: Text(
              goalHeading[index],
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            trailing: Text(
              "${(goalDescription[index])}",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(81, 152, 114, 1),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _settingModalBottomSheet(context) {
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
                        children: const [
                          Text(
                            "New Goal",
                            style: TextStyle(
                              color: Color.fromRGBO(81, 152, 114, 1),
                              fontSize: 20.00,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 50),
                      Row(children: const [
                        Text(
                          "Enter your Goal",
                          style: TextStyle(
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
                          hintText: "I want buy a new ",
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
                        children: const [
                          Text(
                            "Enter The Price",
                            style: TextStyle(
                              fontSize: 16,
                              color: Color.fromRGBO(81, 152, 114, 1),
                            ),
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
                          hintText: '100 SAR',
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
                        children: const [
                          Text(
                            "How Much do you want to save ever month ?",
                            style: TextStyle(
                              fontSize: 16,
                              color: Color.fromRGBO(81, 152, 114, 1),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 13),
                      TextFormField(
                        maxLength: goalHeaderMaxLenth,
                        controller: goalController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: "100 SAR ",
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
                              setState(() {
                                goalHeading.add(goalHeadingController.text);
                                goalDescription
                                    .add(goalDescriptionController.text);
                                goalHeadingController.clear();
                                goalDescriptionController.clear();
                                goalController.clear();
                              });
                              Navigator.pop(context);
                            }
                          },
                          child: const Text(
                            "Add To My Goal",
                            style: TextStyle(fontSize: 16),
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

Widget goalHeader() {
  return Padding(
    padding: const EdgeInsets.only(
      top: 10,
      left: 2.5,
      right: 2.5,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          "My Goals",
          style: TextStyle(
            color: Color.fromRGBO(81, 152, 114, 1),
            fontSize: 25.00,
            fontWeight: FontWeight.w300,
          ),
        ),
      ],
    ),
  );
}
