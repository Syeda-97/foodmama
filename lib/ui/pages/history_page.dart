import 'package:food_mama/ui/utils/colors.dart';
import 'package:food_mama/ui/app_bars/plain_appbar.dart';
import 'package:flutter/material.dart';

class HistoryPage extends StatefulWidget {
  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PlainAppBar(),
        body: Center(
          child: Container(
           // color: Colors.pink,
          ),
        ),
      ),
    );
  }
}
