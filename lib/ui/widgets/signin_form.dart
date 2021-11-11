import 'package:flutter/material.dart';
import 'package:food_mama/ui/pages/forgot_password_page.dart';
import 'package:food_mama/ui/pages/register_page.dart';
import 'package:food_mama/ui/utils/colors.dart';
import 'package:food_mama/ui/utils/size_config.dart';
import 'package:food_mama/ui/utils/strings.dart';

_onLoginButtonPressed() {
  print("log in btn pressed");
}

class SigninForm extends StatefulWidget {
  @override
  _SigninFormState createState() => _SigninFormState();
}

class _SigninFormState extends State<SigninForm> {

  final _emailController = TextEditingController();
  final _passController = TextEditingController();


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {


    return Form(
      child: Column(
        children: [
          Container(
            width: SizeConfig.isMobilePortrait
                ? 77.78 * SizeConfig.widthMultiplier
                : SizeConfig.widthMultiplier * 100 / 1.9,
            height: SizeConfig.isMobilePortrait
                ? 6.25 * SizeConfig.heightMultiplier
                : 6.25 * SizeConfig.heightMultiplier,
            child: TextFormField(
              style: TextStyle(
                  fontSize: 2.19 * SizeConfig.textMultiplier,
                  fontFamily: "Metropolis"),
              controller: _emailController,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                contentPadding: EdgeInsets.only(
                  left: 5.3 *
                      SizeConfig
                          .widthMultiplier,
                  top: 1.875 *
                      SizeConfig
                          .heightMultiplier,
                  bottom: 1.875 *
                      SizeConfig
                          .heightMultiplier,
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: CustomColors.borderSideColor,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      2 * SizeConfig.heightMultiplier,
                    ),
                  ),
                ),
                prefixIcon: Icon(
                  Icons.email,
                  color: CustomColors.iconColor,
                  size: 16,
                ),
                labelText: "Email Address",
                labelStyle: TextStyle(
                    fontSize: 2.25 * SizeConfig.textMultiplier,
                    color: CustomColors.hintColor,
                    fontFamily: "Metropolis"),
              ),
            ),
          ),
          SizedBox(
            // height: 3.125*SizeConfig.heightMultiplier,//20................................
            // height: 10,
            height: 1.56 * SizeConfig.heightMultiplier,
          ),
          Container(
            width: SizeConfig.isMobilePortrait
                ? 77.78 * SizeConfig.widthMultiplier
                : SizeConfig.widthMultiplier * 100 / 1.9,
            height: SizeConfig.isMobilePortrait
                ? 6.25 * SizeConfig.heightMultiplier
                : 6.25 * SizeConfig.heightMultiplier,
            child: TextFormField(
              style: TextStyle(
                  fontSize: 2.19 * SizeConfig.textMultiplier,
                  fontFamily: "Metropolis"),
              controller: _passController,
              obscureText: true,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                contentPadding: EdgeInsets.only(
                  //..........was const
                  left: 5.3 *
                      SizeConfig
                          .widthMultiplier, //30.0/3.6...................
                  top: 1.875 *
                      SizeConfig
                          .heightMultiplier, //13.5/6.4........................
                  bottom: 1.875 *
                      SizeConfig
                          .heightMultiplier, //13.5.0..........................
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: CustomColors.borderSideColor,
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      2 * SizeConfig.heightMultiplier,
                    ),
                  ),
                ),
                prefixIcon: Icon(
                  Icons.lock_outline,
                  color: CustomColors.iconColor,
                  size: 16,
                ),
                suffixIcon: Icon(
                  Icons.remove_red_eye,
                  color: CustomColors.iconColor,
                  size: 16,
                ),
                labelText: CustomString.passwordInput,
                labelStyle: TextStyle(
                    fontSize: 2.25 * SizeConfig.textMultiplier,
                    // fontSize:2*SizeConfig.textMultiplier,
                    color: CustomColors.hintColor,
                    fontFamily: "Metropolis"),
              ),
            ),
          ),
          SizedBox(
            height: 2.34 *
                SizeConfig
                    .heightMultiplier, //20........................................................
          ),
          Container(
            width: SizeConfig.isMobilePortrait
                ? 77.78 * SizeConfig.widthMultiplier
                : SizeConfig.widthMultiplier * 100 / 1.9,
            // width: double.infinity,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ForgetPasswordPage()),
                );
              },
              child: Text(
                "Forgot your password?",
                style: TextStyle(
                  // color: Color(0xFF666666),
                  decoration: TextDecoration.underline,
                  color: Color(0xff003cbf),
                  fontSize: 2* SizeConfig.textMultiplier,
                  fontStyle: FontStyle.normal,

                ),
                textAlign: TextAlign.end,
              ),
            ),
          ),
          SizedBox(
            height: 5.47 *
                SizeConfig
                    .heightMultiplier, //20........................................................
            // height: 35,
          ),
          SignInButtonWidget(),
          SizedBox(
            height: 5.47 *
                SizeConfig
                    .heightMultiplier, //20........................................................
            // height: 35,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don't have an account?",
                textAlign: TextAlign.center,//.....................................added this line
                style: TextStyle(//added this widget................................................................
                  fontSize: 1.88*SizeConfig.textMultiplier,
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RegisterPage()),
                  );
                },
                child: Text(
                  "  Register an account",
                  textAlign: TextAlign.center,//.....................................added this line
                  style: TextStyle(//added this widget................................................................
                    color: Color(0xff003cbf),
                    fontSize: 1.88*SizeConfig.textMultiplier,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}


class SignInButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.isMobilePortrait
          ? 77.78 * SizeConfig.widthMultiplier
          : SizeConfig.widthMultiplier * 100 / 1.9,
      height: SizeConfig.isMobilePortrait
          ? 6.25 * SizeConfig.heightMultiplier
          : 6.25 * SizeConfig.heightMultiplier,
      child: RaisedButton(
        onPressed: _onLoginButtonPressed,
        color: CustomColors.bgColorLight,
        // textColor: Colors.black,
        elevation: 1.56 *
            SizeConfig
                .heightMultiplier, //...............................................
        shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(
            // 50
            2 * SizeConfig.heightMultiplier,
            // 11.11*SizeConfig.widthMultiplier
          ), //40.0/3.6
          side: BorderSide(
            width: 2,
            color: Colors.black,
          ),
        ),
        // padding: const EdgeInsets.all(0.0),
        padding: EdgeInsets.all(
            1.75 * SizeConfig.heightMultiplier),
        child: Text(CustomString.signInButton,
            // textAlign: TextAlign.center,
            style: TextStyle(
              // fontSize: 15,
                fontFamily: "Metropolis",
                // fontSize: 2.34*SizeConfig.textMultiplier,
                fontSize: 2.25 *
                    SizeConfig
                        .textMultiplier, //20/6.4..........18
                // fontFamily: "Oswald",
                // letterSpacing: 1.2,

                color: Colors.black)),
      ),

    );
  }
}

