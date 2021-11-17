import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:food_mama/ui/utils/colors.dart';
import 'package:food_mama/ui/widgets/navigation.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  Timer _timer;
  bool _value=false;

  _LoadingScreenState() {
    _timer = new Timer(const Duration(milliseconds: 6000), () {
      setState(() {
//        _value=!_value;//initially true
      });
      Navigator.push(                      //<-- Navigate to loginPage on Timeout
        context,
        MaterialPageRoute(builder: (context) => NavigationScreen()),
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        body: Center(
          child: InkWell(
            onTap: (){
              setState(() {
                _value=!_value;//initially true
              });
            },

            child: AnimatedContainer(
              height: _value==false?150:350,
              width: _value==false?150:350,
              duration: Duration(
                seconds: 8,
              ),
              child: SpinKitFadingCube(//https://pub.dev/packages/flutter_spinkit
                color: Theme.of(context).colorScheme.secondary, //will change as per theme
                size: 50.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
