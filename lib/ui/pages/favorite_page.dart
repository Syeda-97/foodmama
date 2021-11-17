import 'package:flutter/material.dart';
import 'package:food_mama/ui/app_bars/main_appbar.dart';
class FavoritePage extends StatefulWidget {
  const FavoritePage({Key key}) : super(key: key);

  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(title: "Favourite",),
      body: Container(
       // color: Colors.red,
      ),
    );
  }
}
