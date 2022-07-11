import 'package:blood_donation/baseUtils/constants1.dart';
import 'package:blood_donation/widgets/common_widget.dart';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/svg.dart';
import 'package:proste_bezier_curve/proste_bezier_curve.dart';

import 'baseUtils/colors.dart';
import 'baseUtils/constants.dart';
import 'components/slanding_clipper.dart';
import 'onBoardingScreen2.dart';

class OnboardingScreenOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //it will helps to return the size of the screen
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.only(top: getDeviceHeightByPercentage(5, context)),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: getDeviceHeightByPercentage(5, context)),
              height: getDeviceHeightByPercentage(30, context),
              width: getDeviceWidthByPercentage(35, context),
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      shape: BoxShape.circle,
                    ),
                    height: getDeviceHeightByPercentage( 35, context ),
                    width: getDeviceWidthByPercentage( 40, context ),
                  ),

                 Image(

                    image: AssetImage('assets/images/hero.png'),
                   height: getDeviceHeightByPercentage(30, context),
                  ),


                ],

              ),
            ),


            Container(
              height: getDeviceHeightByPercentage(20, context),
              padding: EdgeInsets.only(top: getDeviceHeightByPercentage(0, context)),
              child: Column(
                children: [
                  Align(
                    alignment: AlignmentDirectional.center,
                    child: Container(
                     //   width: getDeviceWidthByPercentage(70, context),
                        padding:  EdgeInsets.only(left: getDeviceWidthByPercentage(0, context)),
                        child: buildText("I'M A HERO",  fontSize: 20, maxLine: 2,fontWeight: FontWeight.bold,fontFamily: customFontFamily.Lato.toShortString())
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional.center,
                    child: Padding(
                        padding:  EdgeInsets.only(left: getDeviceWidthByPercentage(25, context), right: getDeviceWidthByPercentage(25, context), top: getDeviceHeightByPercentage(2, context)),
                        child: buildText("Be a bold donor, be a HERO a Real one", fontSize: 16, maxLine: 10,fontFamily: customFontFamily.PlayfairDisplay.toShortString() )
                    ),
                  ),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 0),
              child: ClipPath(
                clipper: ProsteBezierCurve(
                  position: ClipPosition.top,
                  list: [
                    BezierCurveSection(
                      start: Offset(160, 120),
                      top: Offset(0 , 50),
                      end: Offset(0, 0),
                    ),
                  ],
                ),
                child: Container(
                  width: getDeviceWidthByPercentage(100, context),
                  height: getDeviceHeightByPercentage(45, context),

                  color:Color.fromRGBO(243,124,132,10),

                  child:  FlatButton(
                   onPressed: () => print('Skip'),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 150,top: 110),
                 child:   ElevatedButton(
                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                       padding: MaterialStateProperty.all(EdgeInsets.only(left:70,top: 11,bottom: 11)),
                        textStyle: MaterialStateProperty.all(TextStyle(fontSize: 20)) ,
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            side: BorderSide(
                              color: Colors.white,

                            ),
                          ),
                        ),
                      ),
                      child: Row(
                        children: [
                          Text('Next',),
                          SizedBox(width: 10,),
                          Icon(Icons.arrow_forward,size: 23,)
                        ],
                        
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => OnboardingScreenTwo(),
                          ),
                        );
                      },
                    ),


                  ),
                    

                       ),

                ),


              ),
            ),






          ],
        ),
      ),
     /* body: Container(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image(
                  width: size.width,
                  height: size.height * 0.6,
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/logo_i-am-the-hero.png'),
                ),




                ClipPath(
                  clipper: SlandingClipper(),
                  child: Container(
                    height: size.height * 0.4,
                    color: yellow,
                  ),
                )
              ],
            ),
            Positioned(
              top: size.height * 0.65,
              child: Container(
                width: size.width,
                padding: EdgeInsets.all(appPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'SELECT ITEMS',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: white,
                        fontSize: 30,
                      ),
                    ),
                    SizedBox(
                      height: size.height * 0.02,
                    ),
                    Text(
                      'Lorem Ipsum is simply dummy \ntext of the printing and typesetting industry.',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 15,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: appPadding / 4),
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                        border: Border.all(color: black, width: 2),
                        shape: BoxShape.circle,
                        color: white),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: appPadding / 4),
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                        border: Border.all(color: black, width: 2),
                        shape: BoxShape.circle,
                        color: yellow),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: appPadding / 4),
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                        border: Border.all(color: black, width: 2),
                        shape: BoxShape.circle,
                        color: yellow),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: appPadding * 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.centerRight,
                    child: FlatButton(
                      onPressed: () => print('Skip'),
                      child: Text(
                        'Skip',
                        style: TextStyle(
                          color: black,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: appPadding),
                    child: FloatingActionButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => OnboardingScreenTwo(),
                          ),
                        );
                      },
                      backgroundColor: white,
                      child: Icon(
                        Icons.navigate_next_rounded,
                        color: black,
                        size: 30,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),*/
    );
  }
}