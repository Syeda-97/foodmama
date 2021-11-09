import 'package:flutter/material.dart';
import 'package:food_mama/ui/utils/colors.dart';
import 'package:food_mama/ui/utils/size_config.dart';

class LoginAppbar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding:  EdgeInsets.only(
        top: 1.25*SizeConfig.heightMultiplier,
      ),
      child: Align(
        alignment: Alignment.topLeft,
        child: new Container(
            child: GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: new CircleAvatar(
                  child: Icon(Icons.navigate_before,
                    color: CustomColors.black,),
                  foregroundColor: CustomColors.white,
                  backgroundColor: CustomColors.yellow
              ),
            ),
            width: 8.89*SizeConfig.widthMultiplier,
            height: 5*SizeConfig.heightMultiplier,
            padding:  EdgeInsets.all(0.31*SizeConfig.heightMultiplier), // borde width
            decoration: new BoxDecoration(
              color:  CustomColors.black, // border color
              shape: BoxShape.circle,
            )
        ),
      ),
    );
  }
}
