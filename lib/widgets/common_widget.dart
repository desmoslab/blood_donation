

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:blood_donation/baseUtils/colors.dart';
import 'package:blood_donation/baseUtils/strings.dart';
import 'package:blood_donation/baseUtils/constants.dart';

Widget buildText( val,{withOutCaseFormat, withoutCaptilazise, hasToUpperCase, fontFamily,var fontSize, maxLine, fontColor, fontWeight, strickLine, overflow, textAlign} ){
  return Text(
      withOutCaseFormat != null?val:hasToUpperCase != null ?val.allCapitalize():withoutCaptilazise != null ? val: val != null && val.isNotEmpty && val.length > 0?val:'',
      maxLines: maxLine == null ? 1 : maxLine,
      overflow: overflow ?? null,
      textAlign: textAlign ?? null,
      style: TextStyle(
        height: 1.5,
        letterSpacing: 0.6,
        decoration: strickLine ?? TextDecoration.none,
        color: fontColor != null ? fontColor : Colors.black,
        fontSize:  fontSize == null ? 14 : fontSize.toDouble(),
        fontWeight: fontWeight != null? fontWeight: null,
        fontFamily:  fontFamily == null? customFontFamily.AvenirNext.toShortString():  fontFamily,
      )
  );
}

// Widget buildSwitch(context, firstSName, secondSName, {onPressButton}){
//   int clickItem = 1 ;
//   return Container(
//     width: getDeviceWidthByPercentage(20, context),
//     height: getDeviceHeightByPercentage(4, context),
//     decoration: BoxDecoration(
//       borderRadius: BorderRadius.circular(15),
//       color: Colors.grey[300],
//     ),
//     child: Stack(
//       children: [
//         InkWell(
//           onTap: (){
//             clickItem = 1;
//             onPressButton(1);
//           },
//           child: Container(
//             width: getDeviceWidthByPercentage(11, context),
//             height: getDeviceHeightByPercentage(4, context),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(15),
//               color: clickItem == 1 ?appColor:null,
//             ),
//             alignment: Alignment.center,
//             child: buildText('\u{20B9}', fontColor:  clickItem == 1 ? Colors.white:Colors.black),
//           ),
//         ),
//         Align(
//           alignment: Alignment.bottomRight,
//           child: InkWell(
//             onTap: (){
//               clickItem = 2;
//               onPressButton(2);
//             },
//             child: Container(
//               width: getDeviceWidthByPercentage(11, context),
//               height: getDeviceHeightByPercentage(4, context),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(15),
//                 color: clickItem == 2 ?appColor:null,
//               ),
//               alignment: Alignment.center,
//               child: buildText('%',fontColor:  clickItem == 2 ? Colors.white:Colors.black),
//             ),
//           ),
//         ),
//       ],
//     ),
//   );
// }

extension StringExtension on String {
  String startCapitalize() {
    if( this != null && this.isNotEmpty && this[0].isNotEmpty && this[0] != null && this[0] != "" ){
      return "${this[0].toUpperCase()}${this.substring(1).toLowerCase()}";
    }
    return "";
  }
  String toCapitalized() => length > 0 ?'${this[0].toUpperCase()}${substring(1).toLowerCase()}':'';
  String toTitleCase() => replaceAll(RegExp(' +'), ' ').split(' ').map((str) => str.toCapitalized()).join(' ');
  String allCapitalize() {
    if( this != null && this.isNotEmpty && this[0].isNotEmpty && this[0] != null && this[0] != "" ){
      return "${this.toUpperCase()}";
    }
    return "";
  }
}
Widget buildTextField(controller, hintText, { focusNode, borderRadius, padding, hintColor, textColor, textAlign, borderColor, maxLine, prefixIcons, suffixIcons, suffixIconClick, enable, contentPadding, onChange, onSubmit, keyboardType, keyboardInputFormat } ){
  // FocusNode focusNode = FocusNode();
  return Container(
    padding: padding ?? EdgeInsets.only(top: 10, bottom: 5, right: 20, left: 20),
    margin: EdgeInsets.only(top: 0),
    child: TextField(
      style: TextStyle(
          fontSize: 14,
          color: textColor ?? Colors.white,
          fontFamily: customFontFamily.AvenirNext.toShortString()
      ),
      //focusNode: focusNode,
      maxLines: maxLine ?? 1,
      controller: controller,
      cursorColor: borderColor ?? Colors.white,
      enabled: enable != null ? enable : true,
      scrollPadding: EdgeInsets.only(left: 5, right: 5),
      textAlign: textAlign ?? TextAlign.left,
      keyboardType: keyboardType ?? TextInputType.text,
      inputFormatters: [
        keyboardInputFormat ?? FilteringTextInputFormatter.allow(RegExp('[a-zA-Z0-9@. ]'))
      ],
      onChanged: (value){
        if( onChange != null ) onChange(value);
      },
      onSubmitted: (value){
        if( onSubmit != null ) onSubmit(value);
      },
      focusNode: focusNode ?? null,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
            fontSize: 14,
            color: hintColor??Colors.white70,
            fontFamily: customFontFamily.AvenirNext.toShortString()),
        focusedBorder: OutlineInputBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(5.0),
          borderSide: BorderSide(
            width: 2,
            color: borderColor?? Colors.white54,
            style: BorderStyle.solid,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(5.0),
          borderSide: BorderSide(
            width: 1,
            color: borderColor?? Colors.white54,
            style: BorderStyle.solid,
          ),

        ),

        prefixIcon: prefixIcons != null ? Container(
          margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0x44fffcf2),
          ),
          child: Icon(prefixIcons, color: Colors.white, size: 18),
          // child: SvgPicture.asset(
          //   'assets/images/user.svg',
          //   fit: BoxFit.cover,
          //   color: appColor,
          // )
        ):null,
        suffixIcon: suffixIcons != null ?InkWell(
          onTap: (){
            if(suffixIconClick != null) suffixIconClick();
          },
          child: Container(
            child: Icon(suffixIcons, color: Colors.white, size: 23),
          ),
        ):null,
        contentPadding: contentPadding??EdgeInsets.all(17),
      ),
    ),
  );
}

Widget buildTextBoxRound(text, {uploadClick} ){
  // FocusNode focusNode = FocusNode();
  return Container(
    margin: EdgeInsets.only(top: 10, bottom: 5, right: 20, left: 20),
    padding: EdgeInsets.only(top: 15, bottom: 15, right: 20, left: 20),
    //margin: EdgeInsets.all(15),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
      border: Border.all(
          color: Colors.white54,
      width: 1)
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
            text,
            style: TextStyle(
              color: Colors.white54,
              fontSize:   14,
              fontFamily:  customFontFamily.AvenirNext.toShortString(),
            )
        ),

        Expanded(
          child: InkWell(
            onTap: (){
              uploadClick();
            },
            child: Align(
              alignment: Alignment.topRight,
              child: Icon(Icons.upload, size: 25, color: Colors.white,),
            ),
          ),
        )
      ],
    ),
  );
}

Widget buildButtonRec( text, buttonPress, {textColor, textSize, backgroundColor, borderWidth, padding }){

  return Padding(
    padding: padding != null ? padding: EdgeInsets.only(
        right: 20, left: 20, top: 10, bottom: 10) ,
    child: SizedBox(
      width: double.infinity,
      child: RaisedButton(
        // padding: EdgeInsets.only(top: 2, bottom: 5),
          child: Text(
            text,
            style: TextStyle(
                color: textColor != null? textColor : appColor,
                fontSize: textSize != null ? textSize : 16,
                fontWeight: FontWeight.w600,
                fontFamily: customFontFamily.AvenirNext.toShortString()),
          ),
          color: backgroundColor != null ?backgroundColor : white,
          onPressed: () {
            buttonPress();
          },
          shape: new RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0),
          )),
    ),
  );
}

openShareOptionPage( context, { firstButtonClick, secondButtonClick } ){
  showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      backgroundColor: Colors.white,
      context: context,
      builder: (context) {
        return Container(
          height: getDeviceHeightByPercentage(22, context),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                    alignment: AlignmentDirectional.topStart,
                    child: Padding(
                      padding: EdgeInsets.only(left: getDeviceWidthByPercentage(5, context), bottom: getDeviceHeightByPercentage(3, context)),
                      child: buildText('Select Type', fontWeight: FontWeight.bold,  ),
                    )),
                Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceEvenly,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        InkWell(
                          onTap: () async {
                            firstButtonClick();
                            //Navigator.pop(context);
                          },
                          child: Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                borderRadius:
                                BorderRadius.circular(
                                    10),
                                color: Colors.white),
                            padding: EdgeInsets.all(3),
                            child: SvgPicture.asset(
                              "assets/images/phone.svg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 5),
                          child: buildText('Call'),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceEvenly,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        InkWell(
                          onTap: () {
                            secondButtonClick();

                          },
                          child: Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                                borderRadius:
                                BorderRadius
                                    .circular(10),
                                color: Colors.white),
                            padding: EdgeInsets.all(3),
                            child: SvgPicture.asset(
                                "assets/images/message_rect.svg"),
                          ),
                        ),
                        Padding(
                          padding:
                          const EdgeInsets.only(
                              top: 5),
                          child: buildText('Message'),
                        ),
                      ],
                    ),



                  ],
                ),
              ],
            ),
          ),
        );
      });
}

openConfirmationPage( context ){
  showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
        //height: getDeviceHeightByPercentage(22, context),
      ),
      backgroundColor: Colors.white,
      context: context,
      builder: (context) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
                alignment: AlignmentDirectional.center,
                child: Padding(
                  padding: EdgeInsets.only(left: getDeviceWidthByPercentage(15, context), right:getDeviceWidthByPercentage(15, context), bottom: getDeviceHeightByPercentage(5, context), top: getDeviceHeightByPercentage(5, context)),
                  child: buildText('Are you sure the store bill matches the App bill?', fontWeight: FontWeight.bold, fontSize: 20, maxLine: 3 , textAlign: TextAlign.center ),
                )),
            Padding(
              padding: EdgeInsets.only( bottom: getDeviceHeightByPercentage(5, context)),
              child: Row(
                mainAxisAlignment:
                MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Container(
                        padding:
                        const EdgeInsets.only(top: 15, bottom: 15),
                        margin: EdgeInsets.only(left: getDeviceWidthByPercentage(10, context)),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          //color: Colors.green,
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: soulRed,
                            width: 1
                          )
                        ),
                        child: buildText('No', fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Container(
                        padding:
                        const EdgeInsets.only(
                            top: 15, bottom: 15),
                        margin: EdgeInsets.only(right: getDeviceWidthByPercentage(10, context)),
                        decoration: BoxDecoration(
                          color: soulRed,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        alignment: Alignment.center,
                        child: buildText('Yes', fontColor: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),



                ],
              ),
            ),
          ],
        );
      });
}