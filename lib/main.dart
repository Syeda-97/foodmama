import 'package:flutter/material.dart';
import 'package:food_mama/ui/pages/home.dart';
import 'package:food_mama/ui/pages/signin_page.dart';
import 'package:food_mama/ui/utils/size_config.dart';
import 'package:food_mama/ui/widgets/loading_screen.dart';
import 'package:overlay_support/overlay_support.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizeConfig().init(constraints, orientation);
        return OverlaySupport(
          child: MaterialApp(
            title: 'FoodMama',
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
                primarySwatch: Colors.blue
            ),
            // home: LoadingScreen(),
            home: LoadingScreen(),
          ),
        );
      });
    });

  }
}

