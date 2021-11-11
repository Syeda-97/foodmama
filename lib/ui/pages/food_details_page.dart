import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_mama/ui/app_bars/main_appbar.dart';
import 'package:food_mama/ui/utils/colors.dart';
import 'package:food_mama/ui/utils/font.dart';
import 'package:food_mama/ui/utils/images.dart';
import 'package:food_mama/ui/utils/size_config.dart';
import 'package:food_mama/ui/pages/ordered_food_page.dart';


class FoodDetailsPage extends StatefulWidget {
  @override
  _FoodDetailsPageState createState() => _FoodDetailsPageState();
}

class _FoodDetailsPageState extends State<FoodDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: MainAppBar(
              title:"Food Details"
          ),
          floatingActionButton:
          FloatingActionButton.extended(
            backgroundColor: CustomColors.bgColorLight,
              onPressed: (){},
              label: AnimatedSwitcher(
                duration: Duration(seconds: 1),
                transitionBuilder: (Widget child, Animation<double> animation) =>
                    FadeTransition(
                      opacity: animation,
                      child: SizeTransition(child:
                      child,
                        sizeFactor: animation,
                        axis: Axis.horizontal,
                      ),
                    ) ,
                child: InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => OrderedFoodPage()),
                    );
                  },
                  child: Icon(Icons.add,
                  ),
                )
              )
          ),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                 Container(
                   height: 23.44*SizeConfig.heightMultiplier,//150,
                   width: MediaQuery.of(context).size.width,
                    child:Image.asset(CustomImages.hot_dog,
                    fit: BoxFit.fill,),

                  ),
                 SizedBox( height: 3*SizeConfig.heightMultiplier,),
                  Padding(
                    padding:EdgeInsets.only(
                      left: 8.33*SizeConfig.widthMultiplier,//30,
                      right: 8.33*SizeConfig.widthMultiplier,//30,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        FoodTitleWidget(
                          productName: "productName",
                          productPrice: "productPrice",
                        ),
                        SizedBox( height: 2*SizeConfig.heightMultiplier,),
                        Divider(
                          color: Colors.black38,
                        ),
                        SizedBox( height: 2.34*SizeConfig.heightMultiplier,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("nameOfBusiness",
                                  style: TextStyle(
                                      fontSize:2.1*SizeConfig.textMultiplier,
                                    fontFamily:CustomFonts.defaultFontFamily,

                                  ),),
                                SizedBox(height: 1.80*SizeConfig.heightMultiplier,),
                                Text("nameOfChef",
                                  style: TextStyle(
                                      fontSize:2.1*SizeConfig.textMultiplier,
                                    fontFamily:CustomFonts.defaultFontFamily,
                                  ),),
                                SizedBox(height: 1.80*SizeConfig.heightMultiplier,),
                                Text("location",
                                  style: TextStyle(
                                      fontFamily:CustomFonts.defaultFontFamily,
                                      fontSize:2.1*SizeConfig.textMultiplier
                                  ),
                                ),
                                SizedBox(height: 1.80*SizeConfig.heightMultiplier,),
                                Text("category",
                                  style: TextStyle(
                                      fontFamily:CustomFonts.defaultFontFamily,
                                      fontSize:2.1*SizeConfig.textMultiplier
                                  ),
                                ),
                                SizedBox(height: 1.80*SizeConfig.heightMultiplier,),
                                Text("type",
                                  style: TextStyle(
                                      fontFamily:CustomFonts.defaultFontFamily,
                                      fontSize:2.1*SizeConfig.textMultiplier
                                  ),
                                ),
                                SizedBox(height: 1.80*SizeConfig.heightMultiplier,),
                                Text("foodDescription",
                                  style: TextStyle(
                                      fontSize:2.1*SizeConfig.textMultiplier,
                                    fontFamily:CustomFonts.defaultFontFamily
                                  ),),

                              ],
                            ),
                            Container(
                              child: CircleAvatar(
                                radius: 7.81*SizeConfig.heightMultiplier,//50
                                backgroundColor: CustomColors.white,
                                child:  Material(
                                  elevation: 4.0,
                                  shape: CircleBorder(),
                                  clipBehavior: Clip.hardEdge,
                                  color: Colors.transparent,
                                  child: Ink.image(
                                    image: AssetImage(
                                        CustomImages.login_logo,
                                    ),
                                    fit: BoxFit.cover,
                                    width:26*SizeConfig.widthMultiplier,// 90.0,
                                    height: 15.06*SizeConfig.heightMultiplier,//90.0,
                                    child: InkWell(
                                      onTap: () {},
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 2.34*SizeConfig.heightMultiplier,
                        ),
                        Divider(
                          color: Colors.black38,
                        ),
                        // AddToCartMenu(),
                        SizedBox(
                          height: 2.34*SizeConfig.heightMultiplier,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("contactInfo",
                              style: TextStyle(
                                  fontFamily:CustomFonts.defaultFontFamily,
                                  fontSize:2.1*SizeConfig.textMultiplier,
                                  color: CustomColors.black,
                                  fontWeight: FontWeight.w700),
                            ),
                            SizedBox(height: 1.25*SizeConfig.heightMultiplier,),
                            Row(
                              children: [
                                Text("+000",
                                  style: TextStyle(
                                    fontFamily:CustomFonts.defaultFontFamily,
                                    fontSize:2.1*SizeConfig.textMultiplier,
                                    color: CustomColors.linkColor,
                                  ),
                                ),
                                SizedBox(width: 1.39*SizeConfig.widthMultiplier,),
                                Text("000",

                                  style: TextStyle(
                                    fontFamily:CustomFonts.defaultFontFamily,
                                    fontSize:2.1*SizeConfig.textMultiplier,
                                    color: CustomColors.linkColor,
                                  ),),
                                SizedBox(width: 1.39*SizeConfig.widthMultiplier,),
                                Text("0000",
                                  style: TextStyle(
                                    fontFamily:CustomFonts.defaultFontFamily,
                                    fontSize:2.1*SizeConfig.textMultiplier,
                                    color: CustomColors.linkColor,
                                  ),),
                              ],
                            ),
                            SizedBox(height: 2.22*SizeConfig.widthMultiplier,),
                            Row(
                              children: [
                                Icon(
                                 Icons.phone,
                                ),
                                SizedBox(width: 2.22*SizeConfig.widthMultiplier,),
                                Icon(
                                  Icons.email,
                                ),



                              ],
                            ),


                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class FoodTitleWidget extends StatelessWidget {
  String productName;
  String productPrice;

  FoodTitleWidget({
    Key key, @required this.productName, @required this.productPrice,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool _switchValue=true;
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              productName,
              style: TextStyle(
                  fontFamily:CustomFonts.defaultFontFamily,
                  fontSize:2.7*SizeConfig.textMultiplier,
                  color: CustomColors.black,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              productPrice,
              style: TextStyle(
                  fontFamily:CustomFonts.defaultFontFamily,
                  fontSize:2.1*SizeConfig.textMultiplier,
                  color: Color(0xFF3a3a3b),
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),

      ],
    );
  }
}


