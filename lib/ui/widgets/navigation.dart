import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:food_mama/ui/pages/home.dart';
import 'package:food_mama/ui/pages/cart_page.dart';
import 'package:food_mama/ui/pages/favorite_page.dart';
import 'package:food_mama/ui/pages/offer_page.dart';
import 'package:food_mama/ui/pages/signin_page.dart';
import 'package:food_mama/ui/utils/colors.dart';
import 'package:food_mama/ui/utils/images.dart';
import 'package:food_mama/ui/utils/size_config.dart';


class NavigationScreen extends StatefulWidget {
  @override
  _NavigationScreenState createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {

  int currentIndex = 0;
  int _screen = 0;
  final screens=[HomePage(),OfferPage(),FavoritePage(),CardPage()];


  setBottomBarIndex(index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        floatingActionButton: FloatingActionButton(
         // backgroundColor: CustomColors.bgColorLight,
          onPressed: (){

            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SigninPage()),
            );
          },
          child: Image.asset(
              CustomImages.f,
              color: CustomColors.white,
              width: 5*SizeConfig.widthMultiplier,
              height: 6*SizeConfig.heightMultiplier,
              fit:BoxFit.fill
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
         // color: CustomColors.bgColorLight,
          shape: CircularNotchedRectangle(
          ),
          child: Container(
            color: CustomColors.transparent,
            height: 50,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 1.5*SizeConfig.heightMultiplier,

                  ),
                  child: InkWell(
                    onTap: (){
                      setBottomBarIndex(0);
                    },
                    child: Column(
                      children: [
                        Image.asset(
                            CustomImages.home,
                            color: currentIndex==0?CustomColors.black:CustomColors.white,
                            width: 5*SizeConfig.widthMultiplier,
                            height: 3*SizeConfig.heightMultiplier,
                            fit:BoxFit.fill
                        ),
                        SizedBox(
                          height: 0.5*SizeConfig.heightMultiplier,
                        ),
                        Text(
                          "Home",
                          style: TextStyle(
                              fontSize: 2*SizeConfig.textMultiplier,
                              fontWeight: FontWeight.w800,
                            color: currentIndex==0?CustomColors.black:CustomColors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox.shrink(),
                Padding(
                  padding: EdgeInsets.only(
                    top: 1.5*SizeConfig.heightMultiplier,

                  ),
                  child: InkWell(
                    onTap: (){
                      setBottomBarIndex(1);
                    },
                    child: Column(
                      children: [
                        Image.asset(
                            CustomImages.offer,
                            color: currentIndex==1?CustomColors.black:CustomColors.white,
                            width: 5*SizeConfig.widthMultiplier,
                            height: 3*SizeConfig.heightMultiplier,
                            fit:BoxFit.fill
                        ),
                        SizedBox(
                          height: 0.5*SizeConfig.heightMultiplier,
                        ),
                        Text(
                          "Offer",
                          style: TextStyle(
                            fontSize: 2*SizeConfig.textMultiplier,
                            color: currentIndex==1?CustomColors.black:CustomColors.white,
                            fontWeight: FontWeight.w800,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox.shrink(),
                Padding(
                  padding: EdgeInsets.only(
                    top: 1.5*SizeConfig.heightMultiplier,

                  ),
                  child: InkWell(
                    onTap: (){
                      setBottomBarIndex(2);
                    },
                    child: Column(
                      children: [
                        Image.asset(
                            CustomImages.fav,
                            color: currentIndex==2?CustomColors.black:CustomColors.white,
                            width: 5*SizeConfig.widthMultiplier,
                            height: 3*SizeConfig.heightMultiplier,
                            fit:BoxFit.fill
                        ),
                        SizedBox(
                          height: 0.5*SizeConfig.heightMultiplier,
                        ),
                        Text(
                          "Favourite",
                          style: TextStyle(
                            fontSize: 2*SizeConfig.textMultiplier,
                            color: currentIndex==2?CustomColors.black:CustomColors.white,
                            fontWeight: FontWeight.w800,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox.shrink(),
                Padding(
                  padding: EdgeInsets.only(
                    top: 1.5*SizeConfig.heightMultiplier,

                  ),
                  child: InkWell(
                    onTap: (){
                      setBottomBarIndex(3);
                    },
                    child: Column(
                      children: [
                        Image.asset(
                          CustomImages.cart,
                          width: 5*SizeConfig.widthMultiplier,
                          height: 3*SizeConfig.heightMultiplier,
                          fit:BoxFit.fill,
                          color: currentIndex==3?CustomColors.black:CustomColors.white,
                        ),
                        SizedBox(
                          height: 0.5*SizeConfig.heightMultiplier,
                        ),
                        Text(
                          "Cart",
                          style: TextStyle(
                            fontSize: 2*SizeConfig.textMultiplier,
                            color: currentIndex==3?CustomColors.black:CustomColors.white,
                            fontWeight: FontWeight.w800,
                          ),
                        )
                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),

        body:  screens[currentIndex],
      ),
    );


  }
}








