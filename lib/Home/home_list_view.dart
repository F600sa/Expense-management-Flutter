import 'package:expense_management/Home/widgets/list_view.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

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