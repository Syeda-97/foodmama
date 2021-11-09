import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class SizeConfig {

  static  double _screenWidth;
  static  double _screenHeight;

  static double _blockWidth = 0;
  static double _blockHeight = 0;

  static double heightMultiplier;
  static double textMultiplier;
  static double widthMultiplier;
  static double imageSizeMultiplier;


  static bool isPortrait = true;
  static bool isMobilePortrait = false;
  // static bool isBigMobilePortrait = false;//..................added

  void init(BoxConstraints constraints, Orientation orientation) {
    if (orientation == Orientation.portrait) //portrait.......................................................................
        {
      _screenWidth = constraints.maxWidth;//MAX width of the screen
      _screenHeight = constraints.maxHeight;//MAX height of the screen
      isPortrait = true;
      //for mobile this if clause will execute because having in Portrait mode tablet/tab shows layout of Landscape because it has more width and height
      //so for tablePortrait and tableLandscape,we will use Landscape mode(as the layout design does not get changed in tablet for both orientation,it remains same in landscape as well in portrait)
      // but in android/Mobile it get changed(layout shown for portrait is different from ayout shown for landscape in mobile)
      if (_screenWidth <= 500) {
        isMobilePortrait = true;
      }
      // if (_screenWidth >= 450 && _screenWidth <= 500) {//..........................added
      //   isBigMobilePortrait = true;
      // }
    } else  //landscape...........................................................................................................
        {
      _screenWidth = constraints.maxHeight;
      _screenHeight = constraints.maxWidth;
      isPortrait = false;
      isMobilePortrait = false;
      // isBigMobilePortrait = false;//..........................added
    }

    _blockWidth = _screenWidth / 100;//how many blocks(flex) are there ->total blocks in width(if screen's amx width 600 pixels then 600/100=6 blocks are there in the width
    _blockHeight = _screenHeight / 100;//total blocks in height

    textMultiplier = _blockHeight;//for responsive text multiply with total blocks in height
    imageSizeMultiplier = _blockWidth;//for responsive image/icons multiply with total blocks in width for portrait(height->landscape)
    heightMultiplier = _blockHeight;//padding top bottom-vertical padding(for most of the widgets)
    widthMultiplier = _blockWidth;//padding padding from left and right or padding from right to left-horizontal padding
    //
    //
    // //To make our texts rely on screen's width and height  .......... for text to make responsive
    // print("Total blocks/flex in screen:(Height): "+_blockHeight.toString());
    // print("Total blocks/flex in screen:(Width): "+_blockWidth.toString());//converting double to string using toString()  Built in Function/Method
    //
    // //height and width of the screen of tab is same
    // print("Height of the device's screen: "+_screenHeight.toString());
    // print("Width of the device's screen: "+_screenWidth.toString());
    //
    //
    // print("textMultiplier "+textMultiplier.toString());//6.4
    // print("heightMultiplier "+heightMultiplier.toString());//6.4
    // print("imageSizeMultiplier "+imageSizeMultiplier.toString());//3.6
    // print("widthMultiplier "+widthMultiplier.toString());//3.6

  }

//total screen size(height)=heightMultiplier*100
//total screen size(width)=widthMultiplier*100


}


