import 'package:blood_donation/baseUtils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get.dart';
import 'main.dart';
import 'onBoardingScreen1.dart';
import 'on_boarding_screen.dart';


class FlashScreen extends StatefulWidget {
  const FlashScreen({Key? key}) : super(key: key);

  @override
  State<FlashScreen> createState() => FlashScreenState();
}

class FlashScreenState extends State<FlashScreen> {
  int widgetId = 0;



  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds:10),(){
      print("After 3 seconds");
      Get.offAll(OnboardingScreenOne());

     // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const MyHomePage(title: 'This is Home Page',)));
    });
    super.initState();


  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: getDeviceWidthByPercentage(100, context) ,
        height: getDeviceHeightByPercentage(100, context) ,
        color: Color(0xFFFFFCF2),
        child: AnimatedSwitcher(
          duration:const Duration(milliseconds: 500),
            child: Image.asset('assets/images/Splash.png'),
        ),

      ),
    );
  }
}
