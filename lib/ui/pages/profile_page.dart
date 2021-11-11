import 'package:food_mama/ui/utils/colors.dart';
import 'package:food_mama/ui/app_bars/plain_appbar.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PlainAppBar(),
        body: Center(
          child: Container(
            color: Colors.yellow,
          ),
        ),
      ),
    );
  }
}
