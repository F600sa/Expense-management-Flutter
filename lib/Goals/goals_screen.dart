// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

import 'goals.dart';
class GoalsScreen extends StatelessWidget {
  const GoalsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: GoalsPage(),
      ),
    );
  }
}