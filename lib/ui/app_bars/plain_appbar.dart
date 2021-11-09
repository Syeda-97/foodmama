import 'package:flutter/material.dart';
import 'package:food_mama/ui/utils/colors.dart';
import 'package:food_mama/ui/utils/size_config.dart';

class PlainAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
     height: 10*SizeConfig.heightMultiplier,
      color: CustomColors.white,
      child: Padding(
        padding: EdgeInsets.only(
          left: 2.78*SizeConfig.widthMultiplier,
          top: 1.56*SizeConfig.heightMultiplier,
          bottom: 1.56*SizeConfig.heightMultiplier,),//left:10/3.6...top 20/6.4.....................
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.navigate_before,
                size: 6.67*SizeConfig.imageSizeMultiplier,//40/3.6
                color: CustomColors.black,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(
      12*SizeConfig.heightMultiplier
  );//100.0
}
