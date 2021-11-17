import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:food_mama/ui/utils/colors.dart';
import 'package:food_mama/ui/utils/font.dart';
import 'package:food_mama/ui/utils/size_config.dart';
import 'package:food_mama/ui/pages/food_details_page.dart';
class FoodListCard extends StatelessWidget {

  String imageUrl;
  String food_name;
  String food_description;
  String quantity;
  String price;
  String date;
  String time;
  String rating;
  String numberOfRating;
  String foodType;

  FoodListCard(
      {Key key,
        @required this.imageUrl,
        @required this.food_name,
        @required this.food_description,
        @required this.quantity,
        @required this.price,
        @required this.date,
        @required this.time,
        @required this.foodType,
        @required this.rating,
        @required this.numberOfRating,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FoodDetailsPage()),
          );
        },
        child: Card(
          elevation: 10,
         // color: Colors.lightBlueAccent[500],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusDirectional.circular(0.78*SizeConfig.heightMultiplier),),
          child: Padding(
            padding: EdgeInsets.only(top: 20,bottom: 20,left: 10,right: 10),
            child: Row(
              //  crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[

                 Column(
                   children: [

                     buildImage(),
                     SizedBox(
                       height: 1*SizeConfig.heightMultiplier,
                     ),
                     buildTitle(),

                   ],
                 ),

                SizedBox(
                  height: 1*SizeConfig.heightMultiplier,
                ),
                buildDescriptionInfo(),
                SizedBox(
                  height: 1*SizeConfig.heightMultiplier,
                ),
                //buildRating(),
              ],
            ),
          ),
        ),
      ),
    );
  }



  Widget buildImage() {
    return Container(
      height:8*SizeConfig.heightMultiplier,//60,
      width: 16*SizeConfig.widthMultiplier,
      child: ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(2*SizeConfig.widthMultiplier),bottom:  Radius.circular(2*SizeConfig.widthMultiplier)),
        child: Image.asset(
          'assets/custom_images/ordered_food_images/' +
              imageUrl+".jpg",
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget buildTitle() {
    return Container(
      padding:  EdgeInsets.only(left: 2.22*SizeConfig.widthMultiplier, right: 2.22*SizeConfig.widthMultiplier),//8
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 0.2*SizeConfig.heightMultiplier,
          ),
          Text(
            food_name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontSize: 2.5*SizeConfig.textMultiplier,
                fontFamily: CustomFonts.defaultFontFamily,
              //  color: CustomColors.black,
                fontWeight: FontWeight.bold
            ),

          ),
          SizedBox(
            height: 0.2*SizeConfig.heightMultiplier,
          ),
          Text(
            food_description,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
            //  color: Colors.black54,
              fontWeight: FontWeight.w600,
              fontSize: 2.2*SizeConfig.textMultiplier,
              fontFamily: CustomFonts.defaultFontFamily,
            ),
          ),
          SizedBox(
            height: 0.2*SizeConfig.heightMultiplier,
          ),
          Text(
            "Quantity: "+quantity,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
            //  color: Colors.black54,
              fontWeight: FontWeight.w500,
              fontSize: 2*SizeConfig.textMultiplier,
              fontFamily: CustomFonts.defaultFontFamily,
            ),
          ),
          SizedBox(
            height: 0.2*SizeConfig.heightMultiplier,
          ),
        ],
      ),
    );
  }


  Widget buildDescriptionInfo() {
    return Padding(
      padding: EdgeInsets.only(left: 2.22*SizeConfig.widthMultiplier, right: 2.22*SizeConfig.widthMultiplier ),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            price+String.fromCharCodes(new Runes('\u0024')), //DOLLAR
            style: TextStyle(fontSize:2.3*SizeConfig.textMultiplier, fontWeight: FontWeight.bold,
              fontFamily: CustomFonts.defaultFontFamily,),
          ),
          SizedBox(
            height: 0.2*SizeConfig.heightMultiplier,
          ),
          Text(
            date,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              // color: Colors.black54,
              fontSize: 2*SizeConfig.textMultiplier,
              fontFamily: CustomFonts.defaultFontFamily,
            ),
          ),
          SizedBox(
            height: 0.2*SizeConfig.heightMultiplier,
          ),
          Text(
            time,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontWeight: FontWeight.w500,
             // color: Colors.black54,
              fontSize: 2*SizeConfig.textMultiplier,
              fontFamily: CustomFonts.defaultFontFamily,
            ),
          ),
        ],
      ),
    );
  }


}