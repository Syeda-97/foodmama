
import 'package:food_mama/ui/app_bars/main_appbar.dart';
import 'package:food_mama/ui/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:food_mama/ui/widgets/registration_form.dart';



class RegisterPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      bottom: false,
      child: Scaffold(
        appBar:   MainAppBar(title: "Register",),
        body: Stack(
          children: <Widget>[
            Container(
              decoration: new BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
              ),
            ),
            //new LoginRegisterAppbar(),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.04,
              left: 0.0,
              right: 0.0,
              bottom: 0.8*SizeConfig.heightMultiplier,//5
              child: Padding(
                // padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                padding:  EdgeInsets.only(left: 2.78*SizeConfig.widthMultiplier, right: 2.78*SizeConfig.widthMultiplier),
                child: Container(
                  margin:  EdgeInsets.only(
                    left: 2.78*SizeConfig.widthMultiplier,
                    right: 2.78*SizeConfig.widthMultiplier,
                  ),
                  height: double.infinity,
                  child: SingleChildScrollView(
                    child: Padding(
                      // padding: const EdgeInsets.only(bottom: 40.0),
                      padding:  EdgeInsets.only(bottom: 6.25*SizeConfig.heightMultiplier),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          // RegisterAppBar(title: "Register",),

                          SizedBox(
                            height: 6*SizeConfig.heightMultiplier,//40.....................................
                          ),
                          RegistrationForm(),
                          SizedBox(
                            height: 3.91*SizeConfig.heightMultiplier,//25................................................
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


//