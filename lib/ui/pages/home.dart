
import 'package:flutter/cupertino.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:food_mama/ui/pages/home_tabbar_items/bd_foods.dart';
import 'package:food_mama/ui/pages/profile_account_details.dart';
import 'package:food_mama/ui/pages/register_page.dart';
import 'package:food_mama/ui/pages/signin_page.dart';
import 'package:food_mama/ui/utils/colors.dart';
import 'package:food_mama/ui/utils/font.dart';
import 'package:food_mama/ui/pages/settings_page.dart';
import 'package:food_mama/ui/utils/size_config.dart';
import 'package:food_mama/ui/widgets/ordered_food_card.dart';
import 'package:flutter/material.dart';

bool otherPage = false;

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {


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
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(10 * SizeConfig.heightMultiplier),
          child: Container(
            color: Theme.of(context).colorScheme.secondary,
            child: Padding(
              padding: EdgeInsets.only(top: 10,left: 5,right: 5),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: GestureDetector(
                      onTap: (){
                        _scaffoldKey.currentState.openDrawer(); //https://stackoverflow.com/questions/47435231/open-drawer-on-clicking-appbar
                      },
                      child: Icon(
                          Icons.sort,
                        size: 8*SizeConfig.imageSizeMultiplier,
                        //  color: CustomColors.black
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding:  EdgeInsets.only(
                        top: 1.8*SizeConfig.heightMultiplier
                      ),
                      child: Container(

                        child: Text("Food List",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                              fontSize: 3*SizeConfig.textMultiplier,
                             // color: CustomColors.bgColorDark
                          ),),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: GestureDetector(
                      onTap: (){
                      },
                      child: Icon(
                          Icons.notifications,
                        size:8*SizeConfig.imageSizeMultiplier,
                       //   color: CustomColors.black
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Divider(
                      height: 2,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        key: _scaffoldKey,
        body: Padding(
          padding: EdgeInsets.all(2*SizeConfig.widthMultiplier ),
          child: Stack(
            children: <Widget>[
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    StaggeredGridView.countBuilder(
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      crossAxisCount: 3,//3 items in a row
                      itemCount: 4,
                      itemBuilder: (BuildContext context, int index) => new Container(
                          // color: CustomColors.bgColorLight,
                        color: CustomColors.transparent,
                          child:     OrderedFoodCard(
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
                      ),
                      staggeredTileBuilder: (int index) {

                        if (index==0) {//TwoColumnGrid
                          return new StaggeredTile.count(
                             2,1);
                        } else if (index==1) {//ThreeColumnGrid
                          return new StaggeredTile.count(
                            1,2);
                        } else if (index==2) {//ThreeColumnGrid
                          return new StaggeredTile.count(
                            2,2);
                        }else {//ThreeColumnGrid
                          return new StaggeredTile.count(
                             1,1);
                        }


                        },
                      mainAxisSpacing: 4.0,
                      crossAxisSpacing: 4.0,
                    ),
                    _tabSection(context),



                  ],
                ),
              ),
            ],
          ),
        ),
        drawer: Container(
         // color: CustomColors.bgColorLight,
          width: SizeConfig.widthMultiplier*100/1.3,
          child: Drawer(

            elevation: 10,
            child: ListView(
              children: <Widget>[
                InkWell(
                  onTap: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProfileAccountDetails()),
                    );
                  },
                  child: new UserAccountsDrawerHeader(
                    // decoration: BoxDecoration(
                    //     color: CustomColors.bgColorLight
                    // ),
                    currentAccountPicture: Container(
                      margin: const EdgeInsets.only(bottom: 10.0),
                      width: 27*SizeConfig.imageSizeMultiplier,
                      height: 34*SizeConfig.heightMultiplier,
                      decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                      //  color: CustomColors.white,
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
                             // color: CustomColors.black
                          ),
                        ),
                      ],
                    ),
                    accountEmail:  Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                         "shaba141997@gmail.com",
                          style: TextStyle(
                          //    color: CustomColors.black
                               ),
                        ),
                      ],
                    ),
                    onDetailsPressed: (){},
                  ),
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
                              builder: (context) => HomePage()),
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
                     //   color: CustomColors.hintColor,
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
                       // color: CustomColors.hintColor,
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
                      //  color: CustomColors.hintColor,
                      ),
                      SizedBox(height: 2*SizeConfig.heightMultiplier,),
                      ListTile(onTap: (){
                        Navigator.pop(context);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SettingsPage()),
                        );
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
                      //  color: CustomColors.hintColor,
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
                    //    color: CustomColors.hintColor,
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
                      //  color: CustomColors.hintColor,
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

Widget _tabSection(BuildContext context) {
  return DefaultTabController(
    length: 6,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          child: TabBar(
              isScrollable: true,
              labelStyle: TextStyle(
                  fontSize:2.6*SizeConfig.textMultiplier
                  ,fontFamily: "Metropolis",fontWeight: FontWeight.bold),//16
           //   labelColor: CustomColors.bgColorLight,
            //  indicatorColor: CustomColors.bgColorLight,
              indicatorSize: TabBarIndicatorSize.tab,
        //      unselectedLabelColor: CustomColors.bgColorLight,
              indicatorWeight: 3.0,
              tabs: [
                Tab(text: "Restaurants",),
                Tab(text: "Sweets"),
                Tab(text: "Medicine"),
                Tab(text: "Iftar"),
                Tab(text: "Bangladeshi foods"),
                Tab(text: "Chinese Foods"),

          ]),
        ),
        Container(
          //Add this to give height
          height: MediaQuery.of(context).size.height,
          child: TabBarView(
             children: [
            Container(
              child: Padding(
                padding:  EdgeInsets.only(
                  // top: 7.8*SizeConfig.heightMultiplier,//50
                  left: 5.6*SizeConfig.widthMultiplier,//20
                  right: 5.6*SizeConfig.widthMultiplier,//20
                ),
                child: BdFoods(),
              ),
            ),
            Container(
                child: BdFoods()
            ),
            Container(
                child: BdFoods()
            ),
            Container(
                child: BdFoods()
            ),
            Container(
                child: BdFoods()
            ),
            Container(
                child: BdFoods()
            ),


          ]),
        ),
      ],
    ),
  );
}
