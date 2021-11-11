
import 'package:food_mama/ui/utils/colors.dart';
import 'package:food_mama/ui/utils/font.dart';
import 'package:food_mama/ui/utils/images.dart';
import 'package:food_mama/ui/utils/size_config.dart';
import 'package:food_mama/ui/widgets/food_list_card.dart';
import 'package:flutter/material.dart';

bool otherPage = false;

class OrderedFoodPage extends StatefulWidget {
  @override
  _OrderedFoodPageState createState() => _OrderedFoodPageState();
}

class _OrderedFoodPageState extends State<OrderedFoodPage> with SingleTickerProviderStateMixin {



  @override
  void initState() {
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

    return SafeArea(
      top: true,
      bottom: false,
      child: Scaffold(
        backgroundColor: CustomColors.white,
        key: _scaffoldKey,
        body: Padding(
          padding: EdgeInsets.all(2*SizeConfig.widthMultiplier ),
          child: Stack(
            children: <Widget>[


              Align(
                alignment: Alignment.topLeft,
                child: GestureDetector(
                  onTap: (){
                    _scaffoldKey.currentState.openDrawer(); //https://stackoverflow.com/questions/47435231/open-drawer-on-clicking-appbar
                  },
                  child: Icon(
                      Icons.sort,
                      color: CustomColors.black
                  ),
                ),
              ),

              Align(
                alignment: Alignment.topCenter,
                child: Container(

                  child: Text("Orders",
                    style: TextStyle(
                        fontSize: 18,
                        color: CustomColors.bgColorLight
                    ),),
                ),
              ),

              Align(
                alignment: Alignment.topRight,
                child: GestureDetector(
                  onTap: (){
                  },
                  child: Icon(
                      Icons.notifications,
                      color: CustomColors.black
                  ),
                ),
              ),



              Positioned(
                top:10*SizeConfig.heightMultiplier, //95,
                left: SizeConfig.isMobilePortrait
                    ? 0.0
                    : 4 * SizeConfig.heightMultiplier,
                right: SizeConfig.isMobilePortrait
                    ? 0.0
                    : 4 * SizeConfig.heightMultiplier,
                bottom: 0.8 * SizeConfig.heightMultiplier,
                child: Padding(
                  // padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  padding:  EdgeInsets.only(left: 2.78*SizeConfig.widthMultiplier, right: 2.78*SizeConfig.widthMultiplier),
                  child: Container(
                    margin:  EdgeInsets.only(
                      left: 2.78*SizeConfig.widthMultiplier,
                      right: 2.78*SizeConfig.widthMultiplier,
                    ),
                    height: double.infinity,
                    child: Padding(
                      // padding: const EdgeInsets.only(bottom: 40.0),
                      padding:  EdgeInsets.only(bottom: 6.25*SizeConfig.heightMultiplier),


                      child:  SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          children: [
                            FoodListCard(
                              imageUrl: "burger",
                              food_name: "Burger",
                              food_description:"A brilliant homemade food" ,
                              quantity: "2",
                              price: "2",
                              date: "2/9/2021",
                              time: "08.00",
                              foodType:"Halal Food" ,
                              rating: '4.9',
                              numberOfRating: '200',
                            ),
                            FoodListCard(
                              imageUrl: "egg",
                              food_name: "Egg",
                              food_description:"Delicious healthy food" ,
                              quantity: "2",
                              price: "2",
                              date: "2/9/2021",
                              time: "08.00",
                              foodType:"Halal Food" ,
                              rating: '4.8',
                              numberOfRating: '150',
                            ),
                            FoodListCard(
                              imageUrl: "hot_dog",
                              food_name: "Hot dog",
                              food_description:"Delicious food" ,
                              quantity: "2",
                              price: "2",
                              date: "2/9/2021",
                              time: "08.00",
                              foodType:"Halal Food" ,
                              rating: '4.2',
                              numberOfRating: '100',
                            ),
                            FoodListCard(
                              imageUrl: "burger",
                              food_name: "Burger",
                              food_description:"A brilliant homemade food" ,
                              quantity: "2",
                              price: "2",
                              date: "2/9/2021",
                              time: "08.00",
                              foodType:"Halal Food" ,
                              rating: '4.9',
                              numberOfRating: '200',
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
        drawer: Container(
          width: SizeConfig.widthMultiplier*100/1.3,
          child: Drawer(
            elevation: 10,

            child: ListView(
              children: <Widget>[
                new UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: CustomColors.grey),
                  currentAccountPicture: Container(
                    margin: const EdgeInsets.only(bottom: 10.0),
                    width: 27*SizeConfig.imageSizeMultiplier,
                    height: 34*SizeConfig.heightMultiplier,
                    decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      color: CustomColors.white,
                      image: new DecorationImage(
                        fit: BoxFit.fill,
                        image: new NetworkImage(
                          "https://i0.wp.com/www.camberpg.com/wp-content/uploads/2018/03/personicon.png",
                        ),
                      ),
                    ),
                  ),


                  accountName:  Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Syeda Sabrina Easmin",
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.onPrimary),
                      ),
                    ],
                  ),
                  accountEmail:  Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "shaba141997@gmail.com",
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.onPrimary),
                      ),
                    ],
                  ),
                  onDetailsPressed: (){},
                ),

                Padding(
                  padding: EdgeInsets.only(
                      left: 2*SizeConfig.widthMultiplier,//20,
                      right:5.56*SizeConfig.widthMultiplier//20,
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 2*SizeConfig.heightMultiplier,),
                      ListTile(onTap: (){
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OrderedFoodPage()),
                        );
                      },
                        dense: true,
                        title: Text('Orders',
                          style: TextStyle(
                              fontFamily: CustomFonts.defaultFontFamily,
                              fontSize: 2.5*SizeConfig.heightMultiplier
                          ),),
                        leading: Icon(
                          Icons.food_bank,
                        ),

                      ),
                      SizedBox(height: 2*SizeConfig.heightMultiplier,),
                      Divider(
                        height: 1,
                        color: CustomColors.hintColor,
                      ),
                      SizedBox(height: 2*SizeConfig.heightMultiplier,),
                      ListTile(onTap: (){
                        // Navigator.pop(context);
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => AboutUsPage()),
                        // );
                      },
                        dense: true,
                        title: Text('Notifications',
                          style: TextStyle(
                              fontFamily: CustomFonts.defaultFontFamily,
                              fontSize: 2.5*SizeConfig.heightMultiplier
                          ),),
                        leading: Icon(
                          Icons.notifications,
                        ),
                      ),
                      SizedBox(height: 2*SizeConfig.heightMultiplier,),
                      Divider(
                        height: 1,
                        color: CustomColors.hintColor,
                      ),
                      SizedBox(height: 2*SizeConfig.heightMultiplier,),
                      ListTile(onTap: (){
                        Navigator.pop(context);
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => CooksProfilePage()),
                        // );
                      },
                        dense: true,
                        title: Text('History',
                          style: TextStyle(
                              fontFamily: CustomFonts.defaultFontFamily,
                              fontSize: 2.5*SizeConfig.heightMultiplier
                          ),),
                        leading: Icon(
                          Icons.history,
                        ),

                      ),
                      SizedBox(height: 2*SizeConfig.heightMultiplier,),


                      ListTile(onTap: (){
                        Navigator.pop(context);
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => TermsAndConditionsPage()),
                        // );
                      },
                        dense: true,
                        title: Text('Application Preferences',
                          style: TextStyle(
                              fontFamily: CustomFonts.defaultFontFamily,
                              fontSize: 2*SizeConfig.heightMultiplier
                          ),),

                      ),

                      SizedBox(height: 2*SizeConfig.heightMultiplier,),
                      ListTile(onTap: (){
                        Navigator.pop(context);
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => TermsAndConditionsPage()),
                        // );
                      },
                        dense: true,
                        title: Text('Help & Support',
                          style: TextStyle(
                              fontFamily: CustomFonts.defaultFontFamily,
                              fontSize: 2.5*SizeConfig.heightMultiplier
                          ),),
                        leading: Icon(
                          Icons.help_outlined,
                        ),
                      ),
                      SizedBox(height: 2*SizeConfig.heightMultiplier,),
                      Divider(
                        height: 1,
                        color: CustomColors.hintColor,
                      ),
                      SizedBox(height: 2*SizeConfig.heightMultiplier,),
                      ListTile(onTap: (){
                        Navigator.pop(context);
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => PrivacyPolicyPage()),
                        // );
                      },
                        dense: true,
                        title: Text('Settings',
                          style: TextStyle(
                              fontFamily: CustomFonts.defaultFontFamily,
                              fontSize: 2.5*SizeConfig.heightMultiplier
                          ),),
                        leading: Icon(
                          Icons.settings,
                        ),

                      ),
                      SizedBox(height: 2*SizeConfig.heightMultiplier,),
                      Divider(
                        height: 1,
                        color: CustomColors.hintColor,
                      ),
                      SizedBox(height: 2*SizeConfig.heightMultiplier,),
                      ListTile(onTap: (){
                        Navigator.pop(context);
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => FaqPage()),
                        // );
                      },
                        dense: true,
                        title: Text('Languages',
                          style: TextStyle(
                              fontFamily: CustomFonts.defaultFontFamily,
                              fontSize: 2.5*SizeConfig.heightMultiplier
                          ),),
                        leading: Icon(
                          Icons.language,
                        ),
                      ),
                      SizedBox(height: 2*SizeConfig.heightMultiplier,),
                      Divider(
                        height: 1,
                        color: CustomColors.hintColor,
                      ),
                      SizedBox(height: 2*SizeConfig.heightMultiplier,),
                      ListTile(onTap: (){
                        Navigator.pop(context);
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => ContactUsPage()),
                        // );
                      },
                        dense: true,
                        title: Text('Dark Mode',
                          style: TextStyle(
                              fontFamily: CustomFonts.defaultFontFamily,
                              fontSize: 2.5*SizeConfig.heightMultiplier
                          ),),
                        leading: Icon(
                          Icons.brightness_4,
                        ),
                      ),

                      SizedBox(height: 2*SizeConfig.heightMultiplier,),
                      Divider(
                        height: 1,
                        color: CustomColors.hintColor,
                      ),
                      SizedBox(height: 2*SizeConfig.heightMultiplier,),
                      ListTile(onTap: (){
                        Navigator.pop(context);
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => ContactUsPage()),
                        // );
                      },
                        dense: true,
                        title: Text('Log out',
                          style: TextStyle(
                              fontFamily: CustomFonts.defaultFontFamily,
                              fontSize: 2.5*SizeConfig.heightMultiplier
                          ),),
                        leading: Icon(
                          Icons.logout,
                        ),
                      ),

                      SizedBox(height: 2*SizeConfig.heightMultiplier,),
                    ],
                  ),
                ),
                ListTile(
                  title: Padding(
                    padding:  EdgeInsets.only(left: 2*SizeConfig.widthMultiplier,),
                    child: Text('Version 1.4.1',
                      style: TextStyle(
                          fontFamily: CustomFonts.defaultFontFamily,
                          fontSize: 2*SizeConfig.heightMultiplier
                      ),),
                  ),
                  // trailing: ,
                  onTap: () {
                    // Navigator.pop(context);
                  },
                ),
                SizedBox(height: 3*SizeConfig.heightMultiplier,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


