import 'package:flutter/material.dart';

final List<String> goalDescription = [];
final List<String> goalHeading = [];
final List<String> goalsHD = [];

TextEditingController goalHeadingController = TextEditingController();
TextEditingController goalDescriptionController = TextEditingController();
TextEditingController goalController = TextEditingController();

FocusNode textSecondFocusNode = FocusNode();

int goalHeaderMaxLenth = 25;
int goalsDescriptionMaxLines = 10;
var goalDescriptionMaxLenth;
String deletedGoalHeading = "";
String deletedGoalDescription = "";
String deletedggoalController = "";
