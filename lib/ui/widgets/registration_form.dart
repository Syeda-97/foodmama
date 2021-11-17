import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:food_mama/ui/pages/privacy_policy.dart';
import 'package:food_mama/ui/pages/terms_and_conditions.dart';
import 'package:food_mama/ui/utils/colors.dart';
import 'package:food_mama/ui/utils/size_config.dart';
import 'package:food_mama/ui/utils/strings.dart';

class RegistrationForm extends StatefulWidget {
  @override
  _RegistrationFormState createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {

  final _firstnameController = TextEditingController();
  final _lastnameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passController = TextEditingController();
  final _confirmpassController = TextEditingController();
  final _phoneController = TextEditingController();
  final _countryCodeController = TextEditingController();


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    bool _agree = false;
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
            child: Row(
              children: [
                new Flexible(
                  child: new TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      contentPadding: EdgeInsets.only(
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
                          color: Color(0xffb3b3b3),
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            2 * SizeConfig.heightMultiplier,
                          ),
                        ),
                      ),
                      labelText: "First Name",
                      labelStyle: TextStyle(
                          fontSize: 2.25 * SizeConfig.textMultiplier,
                          color: Color(0xffc3c3c3),
                          fontFamily: "Metropolis"),
                    ),
                    style: TextStyle(
                        fontSize: 2.19 * SizeConfig.textMultiplier,
                        fontFamily: "Metropolis"),
                    controller: _firstnameController,
                  ),
                ),
                SizedBox(width: 20,),
                new Flexible(
                  child: new TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      contentPadding: EdgeInsets.only(
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
                          color: Color(0xffb3b3b3),
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            2 * SizeConfig.heightMultiplier,
                          ),
                        ),
                      ),
                      labelText: "Last Name",
                      labelStyle: TextStyle(
                          fontSize: 2.25 * SizeConfig.textMultiplier,
                          color: Color(0xffc3c3c3),
                          fontFamily: "Metropolis"),
                    ),
                    style: TextStyle(
                        fontSize: 2.19 * SizeConfig.textMultiplier,
                        fontFamily: "Metropolis"),
                    controller: _lastnameController,
                  ),
                ),
              ],
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
            child: TextField(
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                contentPadding: EdgeInsets.only(
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
                    color: Color(0xffb3b3b3),
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      2 * SizeConfig.heightMultiplier,
                    ),
                  ),
                ),
                suffixIcon: Icon(
                  Icons.email,
                  color: Color(0xFF666666),
                  size: 16,
                ),
                labelText: "Email Address",
                labelStyle: TextStyle(
                    fontSize: 2.25 * SizeConfig.textMultiplier,
                    color: Color(0xffc3c3c3),
                    fontFamily: "Metropolis"),
              ),
              style: TextStyle(
                  fontSize: 2.19 * SizeConfig.textMultiplier,
                  fontFamily: "Metropolis"),
              controller: _emailController,
            ),
          ),
          SizedBox(
            height: 2.34 *
                SizeConfig
                    .heightMultiplier, //20........................................................
          ),
          Center(
            child: Container(
              width: SizeConfig.isMobilePortrait
                  ? 77.78 * SizeConfig.widthMultiplier
                  : SizeConfig.widthMultiplier * 100 / 1.9,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex:1,
                    child: Container(
                      // width: SizeConfig.isMobilePortrait
                      //     ? 77.78 * SizeConfig.widthMultiplier
                      //     : SizeConfig.widthMultiplier * 100 / 1.9,
                      height: SizeConfig.isMobilePortrait
                          ? 6.25 * SizeConfig.heightMultiplier
                          : 6.25 * SizeConfig.heightMultiplier,
                      decoration: BoxDecoration(
                        border: Border.all(
                          width: 0.8,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            2*SizeConfig.widthMultiplier,//30.0.......................................
                          ),
                        ),
                      ),

                      child: CountryCodePicker(
                        onInit: (e) =>
                        _countryCodeController.text = e.toString(),
                        onChanged: (e) =>
                        _countryCodeController.text = e.toString(),
                        initialSelection: 'MY',
                        showCountryOnly: true,
                        showOnlyCountryWhenClosed: false,
                        favorite: ['+60', 'MY'],
                        textStyle: TextStyle(
                          fontSize: 2.2*SizeConfig.textMultiplier,//by default 14...14/6.4
                        ),
                      ),

                    ),
                  ),
                  SizedBox(width:2.78*SizeConfig.widthMultiplier,),
                  Expanded(
                    flex:2,///////////////////////////????????????????????????????????????????????
                    child: Container(
                      // width: SizeConfig.isMobilePortrait
                      //     ? 77.78 * SizeConfig.widthMultiplier
                      //     : SizeConfig.widthMultiplier * 100 / 1.9,
                      height: SizeConfig.isMobilePortrait
                          ? 6.25 * SizeConfig.heightMultiplier
                          : 6.25 * SizeConfig.heightMultiplier,
                      child: TextFormField(
                        style: TextStyle(
                          fontSize: 2.5*SizeConfig.textMultiplier,//14/6.4=2.19*textmultiplier(block height)
                        ),
                        //textInputAction: TextInputAction.continueAction,
                        controller: _phoneController,
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          contentPadding:  EdgeInsets.only(
                            left: 8.3*SizeConfig.widthMultiplier,//30.0/3.6...................
                            top: 1.875*SizeConfig.heightMultiplier,//13.5/6.4........................
                            bottom:1.875*SizeConfig.heightMultiplier,//13.5.0..........................
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                2*SizeConfig.widthMultiplier,//30.0...............
                              ),
                            ),
                          ),
                          suffixIcon: Icon(
                            Icons.phone,
                            color: Color(0xFF666666),
                            size: 16,
                          ),
                          labelText: CustomString.phoneInput,
                          labelStyle: TextStyle(//.....................added
                            color: Color(0xffc3c3c3),
                            fontSize: 2.2*SizeConfig.textMultiplier,//by default 14...14/6.4
                          ),
                        ),
                      ),

                    ),
                  ),

                ],
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
                    color: Color(0xffb3b3b3),
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      2 * SizeConfig.heightMultiplier,
                    ),
                  ),
                ),
                suffixIcon: Icon(
                  Icons.remove_red_eye,
                  color: Color(0xFF666666),
                  size: 16,
                ),
                labelText: CustomString.passwordInput,
                labelStyle: TextStyle(
                    fontSize: 2.25 * SizeConfig.textMultiplier,
                    // fontSize:2*SizeConfig.textMultiplier,
                    color: Color(0xffc3c3c3),
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
            height: SizeConfig.isMobilePortrait
                ? 6.25 * SizeConfig.heightMultiplier
                : 6.25 * SizeConfig.heightMultiplier,
            child: TextFormField(
              style: TextStyle(
                  fontSize: 2.19 * SizeConfig.textMultiplier,
                  fontFamily: "Metropolis"),
              controller: _confirmpassController,
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
                    color: Color(0xffb3b3b3),
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      2 * SizeConfig.heightMultiplier,
                    ),
                  ),
                ),
                suffixIcon: Icon(
                  Icons.remove_red_eye,
                  color: Color(0xFF666666),
                  size: 16,
                ),
                labelText:"Confirm Password",
                labelStyle: TextStyle(
                    fontSize: 2.25 * SizeConfig.textMultiplier,
                    // fontSize:2*SizeConfig.textMultiplier,
                    color: Color(0xffc3c3c3),
                    fontFamily: "Metropolis"),
              ),
            ),
          ),


          SizedBox(
            height:3 *
                SizeConfig
                    .heightMultiplier, //20........................................................
            // height: 35,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left:30.0,
              right:30.0,
            ),
            child: SingleChildScrollView(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            color:  CustomColors.black,
                            width: 0.4*SizeConfig.widthMultiplier
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(5))
                    ),
                    width:SizeConfig.isMobilePortrait?4*SizeConfig.widthMultiplier: 3.8*SizeConfig.widthMultiplier,
                    height: SizeConfig.isMobilePortrait?2.5*SizeConfig.heightMultiplier:3*SizeConfig.heightMultiplier,
                    child: Theme(
                      data: ThemeData(
                        unselectedWidgetColor: Colors.transparent,
                        // unselectedWidgetColor: Color(0xffd50e1b)
                      ),
                      child: Checkbox(
                        activeColor:  CustomColors.bgColorLight,
                        checkColor: Colors.white,
                        value: _agree,
                        onChanged: (bool value) {
                          setState(() {
                            _agree = value;
                          });
                        },
                      ),
                    ),
                  ),
                  SizedBox(width:3*SizeConfig.widthMultiplier,),
                  Expanded(
                      child: RichText(
                        text: TextSpan(
                          text: "I agree to the ",
                          style: TextStyle(//.............................................................................................
                            color: Color(0xff000000),
                            fontFamily: "Metropolis",
                            fontSize: 2.19*SizeConfig.textMultiplier,//20 ...made 18........................................................
                          ),
                          children: <TextSpan>[
                            TextSpan(text: 'Terms and Conditions',
                                recognizer: TapGestureRecognizer()..onTap=(){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => TermsAndConditionsPage()),
                                  );
                                },style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: CustomColors.linkColor,
                                )),
                            TextSpan(text: ' and understand that my information will be used as described on this page as mentioned in', style: TextStyle(color: Colors.black)),
                            TextSpan(text: ' Privacy Policy',
                                recognizer: TapGestureRecognizer()..onTap=(){
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => PrivacyPolicyPage()),
                                  );
                                },
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: CustomColors.linkColor,
                                )),
                            // TextSpan(text: ' world!'),
                          ],
                        ),
                      )
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 5.47 *
                SizeConfig
                    .heightMultiplier, //20........................................................
            // height: 35,
          ),
          NextButtonWidget(),

          SizedBox(
            height: 5.47 *
                SizeConfig
                    .heightMultiplier, //20........................................................
            // height: 35,
          ),

        ],
      ),
    );
  }
}


class NextButtonWidget extends StatelessWidget {
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
        onPressed: (){

        },
        color: Theme.of(context).colorScheme.secondary,
        // color: CustomColors.bgColorLight,
        // textColor: Colors.white,
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
           // color: Colors.black,
          ),
        ),
        // padding: const EdgeInsets.all(0.0),
        padding: EdgeInsets.all(
            1.75 * SizeConfig.heightMultiplier),
        child: Text("SAVE",
            // textAlign: TextAlign.center,
            style: TextStyle(
              // fontSize: 15,
                fontFamily: "Metropolis",
                fontWeight: FontWeight.bold,
                // fontSize: 2.34*SizeConfig.textMultiplier,
                fontSize: 2.25 *
                    SizeConfig
                        .textMultiplier, //20/6.4..........18
                // fontFamily: "Oswald",
                // letterSpacing: 1.2,

               // color: Colors.black
            )),
      ),

    );
  }
}