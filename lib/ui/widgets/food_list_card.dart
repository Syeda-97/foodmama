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
          color: Colors.lightBlueAccent[500],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusDirectional.circular(0.78*SizeConfig.heightMultiplier),),
          child: Row(
            //  crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[


              buildTitle(),
              SizedBox(
                height: 1*SizeConfig.heightMultiplier,
              ),
              buildImage(),
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
    );
  }



  Widget buildImage() {
    return Container(
      height:40,//60,
      width: 40,
      child: ClipRRect(
        borderRadius: BorderRadius.vertical(top: Radius.circular(5)),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 0.2*SizeConfig.heightMultiplier,
          ),
          Text(
            food_name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontSize: 1.88*SizeConfig.textMultiplier,
                fontFamily: CustomFonts.defaultFontFamily,
                color: CustomColors.black,
                fontWeight: FontWeight.w500
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
              color: Colors.black54,
              fontSize: 1.50*SizeConfig.textMultiplier,
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
              color: Colors.black54,
              fontSize: 1.50*SizeConfig.textMultiplier,
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            price+"dollars",
            style: TextStyle(fontSize: 1.20*SizeConfig.textMultiplier, fontWeight: FontWeight.bold,
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
              color: Colors.black54,
              fontSize: 1.50*SizeConfig.textMultiplier,
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
              color: Colors.black54,
              fontSize: 1.50*SizeConfig.textMultiplier,
              fontFamily: CustomFonts.defaultFontFamily,
            ),
          ),
        ],
      ),
    );
  }


}