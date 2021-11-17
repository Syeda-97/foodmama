import 'package:flutter/material.dart';
import 'package:food_mama/ui/app_bars/main_appbar.dart';


class OfferPage extends StatefulWidget {
  const OfferPage({Key key}) : super(key: key);

  @override
  _OfferPageState createState() => _OfferPageState();
}

class _OfferPageState extends State<OfferPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(title: "Offer",),
      body: Container(
     //   color: Colors.green,
      ),
    );
  }
}
