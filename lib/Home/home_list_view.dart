
import 'package:flutter/material.dart';

import '../Transaction/transaction_screen.dart';

class viewMore extends StatefulWidget {
  const viewMore({super.key});

  @override
  State<viewMore> createState() => _viewMoreState();
}

class _viewMoreState extends State<viewMore> {
  @override
  Widget build(BuildContext context) {
    return ListViewOfTransactions();
  }
}