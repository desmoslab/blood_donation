import 'package:blood_donation/baseUtils/constants1.dart';
import 'package:blood_donation/modules/LoginPage/login_screen.dart';
import 'package:blood_donation/widgets/common_widget.dart';
//import 'package:ecommerce_onboarding/screens/onboarding/screen_three.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:proste_bezier_curve/proste_bezier_curve.dart';

import 'baseUtils/colors.dart';
import 'baseUtils/constants.dart';
import 'components/slanding_clipper.dart';
import 'onBoardingScreen3.dart';

class OnboardingScreenFour extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
              SvgPicture.asset('assets/images/Chat_directly.svg',)
                 /* Image(

                    image: AssetImage('assets/images/Chat_directly.svg',),fit: BoxFit.fill,
                  ),*/


                ],

              ),
            ),


            Column(
              children: [
                Align(
                  alignment: AlignmentDirectional.center,
                  child: Container(
                    //  width: getDeviceWidthByPercentage(70, context),
                      padding:  EdgeInsets.only(left: getDeviceWidthByPercentage(0, context)),
                      child: buildText("Chat Directly",  fontSize: 18,fontWeight: FontWeight.bold, maxLine: 2,fontFamily: customFontFamily.Lato.toShortString() )
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Padding(
                      padding:  EdgeInsets.only(left: getDeviceWidthByPercentage(15, context), right: getDeviceWidthByPercentage(15, context), top: getDeviceHeightByPercentage(2, context)),
                      child: buildText("Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document.", fontSize: 15, maxLine: 5,fontFamily: customFontFamily.PlayfairDisplay.toShortString() )
                  ),
                ),

              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: ClipPath(
                clipper: ProsteBezierCurve(
                  position: ClipPosition.top,
                  list: [
                    BezierCurveSection(
                      start: Offset(0, 60),
                      top: Offset(100, 0),
                      end: Offset(0, 100),
                    ),
                  ],
                ),
                child: Container(
                  width: getDeviceWidthByPercentage(100, context),
                  height: getDeviceHeightByPercentage(45, context),

                  color:Color.fromRGBO(243,124,132,10),

                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FlatButton(
                        onPressed: () => print('Skip'),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 35,top: 180),
                          child:   ElevatedButton(
                            style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                              padding: MaterialStateProperty.all(EdgeInsets.only(left:100,top: 13,bottom: 13,right: 100)),
                              textStyle: MaterialStateProperty.all(TextStyle(fontSize: 18)) ,
                              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                  side: BorderSide(
                                    color: Colors.white,
                                    width: 2.0,
                                  ),
                                ),
                              ),
                            ),
                            child: Text('Get Started',),
                            onPressed: () {
                               Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => LoginPage(),
                                ),
                              );
                            },
                          ),

                        ),

                      ),


                    ],
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