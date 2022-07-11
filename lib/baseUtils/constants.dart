


import 'package:flutter/cupertino.dart';

enum customFontFamily  {  Lato, PlayfairDisplay, AvenirNext }
extension FontFamilyToString on customFontFamily{
  String toShortString() {
    return this.toString().split('.').last;
  }
}

enum prefValue{ phone_number }
extension prefValueToString on prefValue {
  String toShortString() {
    return this.toString().split('.').last;
  }
}

enum pageName{ page_name}
extension PageNameToString on pageName {
  String toShortString() {
    return this.toString().split('.').last;
  }
}



getDeviceWidthByPercentage( val, context ){
  return MediaQuery.of(context).size.width *(val/100);
}
getDeviceHeightByPercentage( val, context ){
  return MediaQuery.of(context).size.height *(val/100);
}

