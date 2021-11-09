import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:food_mama/ui/utils/colors.dart';
import 'package:food_mama/ui/utils/font.dart';
import 'package:food_mama/ui/utils/size_config.dart';
class OrderedFoodCard extends StatelessWidget {

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

  OrderedFoodCard(
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
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => FoodDetailsPage()),
          // );
        },
        child: Card(
          elevation: 0,
        shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusDirectional.circular(0.78*SizeConfig.heightMultiplier),),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              buildImage(),
              SizedBox(
                height: 1*SizeConfig.heightMultiplier,
              ),
              buildTitle(),
              SizedBox(
                height: 1*SizeConfig.heightMultiplier,
              ),
              buildDescriptionInfo(),
              SizedBox(
                height: 1*SizeConfig.heightMultiplier,
              ),
              buildRating(),
            ],
          ),
        ),
      ),
    );
  }



Widget buildImage() {
  return Container(
    height:9.38*SizeConfig.heightMultiplier,//60,
    width: double.infinity,
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
        Text(
          foodType,
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


  Widget buildDescriptionInfo() {
    return Padding(
      padding: EdgeInsets.only(left: 2.22*SizeConfig.widthMultiplier, right: 2.22*SizeConfig.widthMultiplier ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Text(
              food_description,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 1.20*SizeConfig.textMultiplier, fontWeight: FontWeight.bold,
                fontFamily: CustomFonts.defaultFontFamily,),
            ),
          ),
          // Expanded(
          //     child: Text(
          //         'Text',
          //         overflow: TextOverflow.ellipsis,
          //         maxLines: 1
          //     )
          // )
        ],
      ),
    );
  }

Widget buildRating() {
  return Padding(
    padding:  EdgeInsets.only( left: 2.22*SizeConfig.widthMultiplier, right:  2.22*SizeConfig.widthMultiplier),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        RatingBar.builder(
          initialRating: 5.0,
          direction: Axis.horizontal,
          itemCount: 5,
          itemSize: 2.22*SizeConfig.imageSizeMultiplier,
          unratedColor: Colors.black,
          itemPadding: EdgeInsets.only(right: 0.8*SizeConfig.widthMultiplier),
          ignoreGestures: true,
          itemBuilder: (context, index) => Icon(Icons.star, color: Colors.red),
          onRatingUpdate: (rating) {},
        ),
        Expanded(
          child: Text("($rating)",
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            style: TextStyle(
                color: CustomColors.black,
                fontSize: 1.20*SizeConfig.textMultiplier,
                fontFamily: CustomFonts.defaultFontFamily,
                fontWeight: FontWeight.w500
            ),),
        ),
      ],
    ),
  );
}


}