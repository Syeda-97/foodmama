import 'package:food_mama/ui/utils/colors.dart';
import 'package:food_mama/ui/app_bars/plain_appbar.dart';
import 'package:flutter/material.dart';

class ForgetPasswordPage extends StatefulWidget {
  @override
  _ForgetPasswordPageState createState() => _ForgetPasswordPageState();
}

class _ForgetPasswordPageState extends State<ForgetPasswordPage> {
  static const baseUrl = "https://www.svstepaper.com/api/v2";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PlainAppBar(),
        body: Center(
          child: Container(
           // color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
