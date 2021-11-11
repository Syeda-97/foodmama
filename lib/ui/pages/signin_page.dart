import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:food_mama/ui/app_bars/login_appbar.dart';
import 'package:food_mama/ui/utils/colors.dart';
import 'package:food_mama/ui/utils/images.dart';
import 'package:food_mama/ui/utils/size_config.dart';
import 'package:food_mama/ui/widgets/signin_form.dart';



class SigninPage extends StatelessWidget {
  String defaultFontFamily = 'Roboto-Light.ttf';
  double defaultFontSize = 14;
  double defaultIconSize = 17;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  color: Colors.white
              ),
            ),
            //new LoginRegisterAppbar(),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.04,
              left: 0.0,
              right: 0.0,
              bottom: 0.8*SizeConfig.heightMultiplier,//5
              child: Padding(
                padding:  EdgeInsets.only(left: 2.78*SizeConfig.widthMultiplier, right: 2.78*SizeConfig.widthMultiplier),
                child: Container(
                  margin:  EdgeInsets.only(
                    left: 2.78*SizeConfig.widthMultiplier,
                    right: 2.78*SizeConfig.widthMultiplier,
                  ),
                  height: double.infinity,
                  child: SingleChildScrollView(
                    child: Padding(
                      padding:  EdgeInsets.only(bottom: 6.25*SizeConfig.heightMultiplier),
                      child: Column(
                        children: <Widget>[
                          LoginAppbar(),
                          SizedBox(
                            height: 7.8*SizeConfig.heightMultiplier,
                          ),
                          Container(
                            child: CircleAvatar(
                              radius: 25*SizeConfig.imageSizeMultiplier,
                              backgroundColor: CustomColors.bgColorLight,
                              child:  Container(
                                width: 63.89*SizeConfig.widthMultiplier,
                                height: 15.63*SizeConfig.heightMultiplier,
                                alignment: Alignment.center,
                                child: Image.asset(
                                  CustomImages.login_logo,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 6.25*SizeConfig.heightMultiplier,
                          ),

                          SizedBox(
                            height: 3.125*SizeConfig.heightMultiplier,
                          ),
                          SigninForm(),
                          SizedBox(
                            height: 3.91*SizeConfig.heightMultiplier,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}







