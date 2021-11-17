import 'package:flutter/material.dart';
import 'package:food_mama/ui/utils/colors.dart';
import 'package:food_mama/ui/utils/size_config.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const MainAppBar({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Container(
     // color: CustomColors.bgColorLight,
      color: Theme.of(context).colorScheme.secondary,
      child: Padding(
        padding:  EdgeInsets.only(
          top:1.3*SizeConfig.heightMultiplier,
        ),
        child: Container(
          height: 40,
            decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 2,
                       // color: Colors.black
                      )
                    )
                  ),
          child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 5,
              ),
              child: Align(
                alignment: Alignment.topLeft,
                child: GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.navigate_before,
                    size: 9* SizeConfig.imageSizeMultiplier, //mob...big mob...tab
                 //   color: CustomColors.black,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding:  EdgeInsets.only(
                    top: 0.8*SizeConfig.heightMultiplier
                  ),
                  child: Text(
                    title,
                    style: TextStyle(
                      fontFamily: "Metropolis",
                      fontSize:  3* SizeConfig.textMultiplier,
                      fontWeight: FontWeight.bold,
                     // color: CustomColors.black,
                    ),
                  ),
                ),
              ],
            ),
          ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(10 * SizeConfig.heightMultiplier);
}
