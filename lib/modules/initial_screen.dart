import 'dart:io';


import 'package:blood_donation/baseUtils/colors.dart';
import 'package:blood_donation/modules/BloodDonation/blooddonation_screen.dart';
import 'package:blood_donation/modules/HomePage/home_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../baseUtils/constants.dart';



class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);
  @override
  State<InitialScreen> createState() => InitialScreenState();
}

class InitialScreenState extends State<InitialScreen> {
  int currentTabIndex = 0;
  List<BottomNavigationBarItem> bottomDoctorList = [];
  var arguments = Get.arguments;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    bottomDoctorList.clear();
    bottomDoctorList.add(buildBottomItem("Home", icon:Icons.home));
    bottomDoctorList.add(buildBottomItem("Blood Donation", icon:Icons.bloodtype_outlined));
    bottomDoctorList.add(buildBottomItem("Message", icon: Icons.message));
    bottomDoctorList.add(buildBottomItem("More", icon:Icons.more_vert));
    //bottomDoctorList.add(buildBottomItem("Account", icon:Icons.account_circle_outlined));

    if( arguments != null && arguments[0]['passValue'] != null ){
      if( arguments[0]['passValue'] == 'Cart' ){
        setState(() {
          currentTabIndex = 2;
        });
      }else if( arguments[0]['passValue'] ==  'MyOrders'){
        setState(() {
          currentTabIndex = 3;
        });
      }
    }
  }
  onTapped(int index) {
    setState(() {
      currentTabIndex = index;
      print(currentTabIndex.toString() + "   -- Outside");
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: mainColor
    ));
    return WillPopScope(
      onWillPop: (){
        if(currentTabIndex != 0){
          setState(() {
            currentTabIndex = 0;
          });
          return Future<bool>.value(false);
        }
        return Future<bool>.value(true);
      },
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          bottomNavigationBar: Container(
            height: getDeviceHeightByPercentage(10, context),
            decoration: BoxDecoration(
              color: soulRed,
              boxShadow: [
                BoxShadow(
                  color: soulRed,
                ),
              ],
            ),
            child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                backgroundColor: mainColor,
                onTap: onTapped,
                currentIndex: currentTabIndex,
                selectedItemColor: soulRed,
                unselectedItemColor: Colors.white,
                items: bottomDoctorList),
          ),
         /* body: currentTabIndex == 1? SearchPage():
          currentTabIndex == 2?CardScreen():
          currentTabIndex == 3? MyOrderScreen():
          currentTabIndex == 4? AccountPage():
          HomeScreen()*/
        body: currentTabIndex ==1? BloodDonationScreen():
        HomeScreen(),

      ),
    );
  }
  BottomNavigationBarItem buildBottomItem(title, {icon, bool? menu, image}) {
    return BottomNavigationBarItem(
      backgroundColor: appColor,
      icon: Column(
        children: <Widget>[
          icon != null ?SizedBox(
              width: 30,
              height: 30,
              child: Padding(
                  padding: EdgeInsets.all(2),
                  child: Icon(icon,
                      color: Colors.white, size: 20)
              )
          ):Container(
              width: 30,height: 30,
              padding: EdgeInsets.all(2),
              child: Image.asset('$image')),
          // Text(title,
          //     maxLines: 1,
          //     style: TextStyle(
          //       fontSize: 10,
          //       color: Colors.white
          //     ))
        ],
      ),
      activeIcon: Column(
        children: <Widget>[
          icon != null ?SizedBox(
            width: 30,
            height: 30,
            child: Padding(
                padding: EdgeInsets.all(2),
                child: Icon(icon, color: soulRed, size: 23)
            ),
          ):Container(
              width: 30,height: 30,
              padding: EdgeInsets.all(2),
              child: Image.asset('assets/images/procurement_icon_blue.png')),
          // Text(title,
          //     maxLines: 1,
          //     style: TextStyle(
          //       fontSize: 10,
          //       color: appColor
          //     ))
        ],
      ),
      label: '$title',
    );
  }
}