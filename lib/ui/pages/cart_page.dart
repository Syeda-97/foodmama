import 'package:flutter/material.dart';
import 'package:food_mama/ui/app_bars/main_appbar.dart';


class CardPage extends StatefulWidget {
  const CardPage({Key key}) : super(key: key);

  @override
  _CardPageState createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(title: "Cart",),
      body: Container(
       // color: Colors.black,
      ),
    );
  }
}

