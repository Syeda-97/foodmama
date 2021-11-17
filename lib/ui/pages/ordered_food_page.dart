
import 'package:food_mama/ui/app_bars/main_appbar.dart';
import 'package:food_mama/ui/pages/offer_page.dart';
import 'package:food_mama/ui/pages/terms_and_conditions.dart';
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
       // backgroundColor: CustomColors.white,
        appBar: MainAppBar(title: "Orders",),
        key: _scaffoldKey,
        body: Padding(
          padding: EdgeInsets.all(2*SizeConfig.widthMultiplier ),
          child:  SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                FoodListCard(
                  imageUrl: "burger",
                  food_name: "Burger",
                  food_description:"A brilliant homemade food" ,
                  quantity: "8",
                  price: "6",
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
                  price: "8",
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

              ],
            ),
          ),
        ),

      ),
    );
  }
}


