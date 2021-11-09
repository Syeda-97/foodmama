import 'package:flutter/gestures.dart';
import 'package:food_mama/ui/utils/colors.dart';
import 'package:food_mama/ui/utils/size_config.dart';
import 'package:food_mama/ui/utils/strings.dart';
import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';

class TermsAndConditionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Terms And Conditions"),
          ),
          body: Container(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(1.56*SizeConfig.heightMultiplier),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Padding(
                    padding:  EdgeInsets.only(
                        top: 6.25*SizeConfig.heightMultiplier, left: 5.6*SizeConfig.widthMultiplier, right: 5.6*SizeConfig.widthMultiplier, bottom:  1.56*SizeConfig.widthMultiplier),

                    child: Text(
                     CustomString.t_and_cTitle,
                      style: TextStyle(
                          fontSize: 2.34*SizeConfig.textMultiplier,color: Color(0xffD60E1B),fontFamily: "Metropolis",fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(
                        top: 1.56*SizeConfig.widthMultiplier, left: 5.6*SizeConfig.widthMultiplier, right: 5.6*SizeConfig.widthMultiplier, bottom: 0.8*SizeConfig.widthMultiplier),
                    child: Text(
                      CustomString.introTitle,
                      style: TextStyle(fontSize: 2.19*SizeConfig.textMultiplier,color: Color(0xffD60E1B),fontFamily: "Metropolis",),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 0.8*SizeConfig.widthMultiplier,left: 5.6*SizeConfig.widthMultiplier, right: 5.6*SizeConfig.widthMultiplier, bottom: 3.125*SizeConfig.heightMultiplier,),
                    child: Text(
                      CustomString.t_and_cContentintro,
                     textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 1.88*SizeConfig.textMultiplier,
                        fontFamily: "Metropolis",
                      ),
                    ),
                  ),


            Padding(
              padding:  EdgeInsets.only(
                  top: SizeConfig.heightMultiplier*100-(6.25*SizeConfig.heightMultiplier),bottom: SizeConfig.heightMultiplier*3
                // top: 12.5*SizeConfig.heightMultiplier,bottom: 1.56*SizeConfig.heightMultiplier
              ),
              child: Center(
                child: RichText(
                  textAlign: TextAlign.center,
                  text:  TextSpan(
                   children: [
                     TextSpan(
                       text: CustomString.footerHead,
                       style: TextStyle(
                           fontSize: 1.25*SizeConfig.textMultiplier,
                           fontFamily: "Metropolis",
                           color: Colors.grey
                         // color: Color(0xffF2F2F2)
                       ),


                     ),
                     TextSpan(
                       recognizer: new TapGestureRecognizer()
                         ..onTap = () {
                         // launch('https://superbangla.com.bd/');
                         },
                       text: CustomString.footerLink,
                       style: TextStyle(
                           fontSize: 1.25*SizeConfig.textMultiplier,
                           fontFamily: "Metropolis",
                           color: CustomColors.linkColor
                         // color: Color(0xffF2F2F2)
                       ),


                     ),
                   ]
                  ),
                ),
              ),
            ),
                ],
              ),
            ),
          ),
      ),
        ),
    );
  }
}
