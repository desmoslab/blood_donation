import 'package:blood_donation/modules/RegisterPage/address_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../baseUtils/colors.dart';
import '../../baseUtils/colors.dart';
import '../../baseUtils/constants.dart';
import '../../baseUtils/strings.dart';
import '../../widgets/common_widget.dart';
//import 'mainlogin_controller.dart';


class PersonalScreen extends StatefulWidget {
  const PersonalScreen({Key? key}) : super(key: key);
  @override
  State<PersonalScreen> createState() => PersonalScreensState();
}

class PersonalScreensState extends State<PersonalScreen> {
  final TextEditingController _userController = new TextEditingController();
  final TextEditingController _passController = new TextEditingController();
  bool _isChecked = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    var data = {
      //'user_name':GlobalDetails.getInstance()!.userName,
      //'user_id':GlobalDetails.getInstance()!.user_id
    };
  }

  @override
  Widget build(BuildContext context) {
   // final loginController = Get.put(LoginController());
return MaterialApp(
  home: PersonalDetails(),
);
    /*return Scaffold(
      body: Stack(
        children: [
          Container(
            height: getDeviceHeightByPercentage(40, context),
            width: getDeviceWidthByPercentage(100, context),
            // color: Colors.white54,
            decoration: new BoxDecoration(
                color:Colors.white60,
                borderRadius: BorderRadius.circular(15)


            ),
            child: Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(bottom: 5),
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30,top: 30),
                        child: buildText("First Name",
                          fontSize: 16,
                          fontColor: Colors.grey,
                        ),
                      ),
                    ),
                    //User Text Box
                    Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10),
                      child: buildTextField(_userController, Strings.userName,borderColor: Colors.grey),
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 5),
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30,top: 5),
                        child: buildText("Last Name",
                          fontSize: 16,
                          fontColor: Colors.grey,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10),
                      child: buildTextField(_userController, Strings.userName,borderColor: Colors.grey),
                    ),
                    //buildTextField(_passController, Strings.password, prefixIcons: Icons.password ),
                    //Password Text Box
                    Padding(
                        padding: const EdgeInsets.only(left: 10,right: 10),
                        child:Row(children: [
                          // Checkbox(value: , onChanged: onChanged)
                        ],)
                    ),

                    Container(
                      padding: EdgeInsets.only(bottom: 5),
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30,top: 5),
                        child: buildText("DOB",
                          fontSize: 16,
                          fontColor: Colors.grey,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10),
                      child: buildTextField(_passController,Strings.password,borderColor: Colors.grey),
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 5),
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30,top: 5),
                        child: buildText("Mobile Number",
                          fontSize: 16,
                          fontColor: Colors.grey,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10),
                      child: buildTextField(_passController,Strings.password,borderColor: Colors.grey),
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 5),
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30,top: 5),
                        child: buildText("Email ID",
                          fontSize: 16,
                          fontColor: Colors.grey,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10),
                      child: buildTextField(_passController,Strings.password,borderColor: Colors.grey),
                    ),

                    // Container(
                    //   padding: EdgeInsets.only(left: 20, bottom: 20),
                    //   alignment: Alignment.topLeft,
                    //   child: buildText("Forgot Password?", fontSize: 14, fontColor: Colors.white, fontWeight: FontWeight.w600 ),
                    // ),
                    //Sign In Button
                    Padding(
                      padding: EdgeInsets.only(top: 15),
                      child:  ElevatedButton(
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
                         /* Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AddressScreen(),
                            ),
                          );*/
                        },
                      ),
                    ),


                    // SvgPicture.asset("assets/images/Find Donors.svg")

                  ],
                ),
              ),
            ),

          ),
          Padding(
            padding: const EdgeInsets.only(top: 370),
            child:Image(

              image: AssetImage('assets/images/blooddonate.png'),
              height: getDeviceHeightByPercentage(40, context),
              width: getDeviceWidthByPercentage(100, context),
            ),

          )





          //Expanded(child: Container(color: Colors.white)),

        ],
      ),
    );*/
  }

}
class PersonalDetails extends StatefulWidget {
  const PersonalDetails({Key? key}) : super(key: key);
  @override
  State<PersonalDetails> createState() => PersonalDetailsState();
}

class PersonalDetailsState extends State<PersonalDetails> {
  final TextEditingController _userController = new TextEditingController();
  final TextEditingController _passController = new TextEditingController();
  bool _isChecked = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    var data = {
      //'user_name':GlobalDetails.getInstance()!.userName,
      //'user_id':GlobalDetails.getInstance()!.user_id
    };
  }

  @override
  Widget build(BuildContext context) {
    // final loginController = Get.put(LoginController());

    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: getDeviceHeightByPercentage(45, context),
            width: getDeviceWidthByPercentage(100, context),
            // color: Colors.white54,
            decoration: new BoxDecoration(
                color:Colors.white60,
                borderRadius: BorderRadius.circular(15)


            ),
            child: Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(bottom: 5),
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30,top: 30),
                        child: buildText("First Name",
                          fontSize: 16,
                          fontColor: Colors.grey,
                        ),
                      ),
                    ),
                    //User Text Box
                    Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10),
                      child: buildTextField(_userController, Strings.userName,borderColor: Colors.grey),
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 5),
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30,top: 5),
                        child: buildText("Last Name",
                          fontSize: 16,
                          fontColor: Colors.grey,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10),
                      child: buildTextField(_userController, Strings.userName,borderColor: Colors.grey),
                    ),
                    //buildTextField(_passController, Strings.password, prefixIcons: Icons.password ),
                    //Password Text Box
                    Padding(
                        padding: const EdgeInsets.only(left: 10,right: 10),
                        child:Row(children: [
                          // Checkbox(value: , onChanged: onChanged)
                        ],)
                    ),

                    Container(
                      padding: EdgeInsets.only(bottom: 5),
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30,top: 5),
                        child: buildText("DOB",
                          fontSize: 16,
                          fontColor: Colors.grey,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10),
                      child: buildTextField(_passController,Strings.password,borderColor: Colors.grey),
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 5),
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30,top: 5),
                        child: buildText("Mobile Number",
                          fontSize: 16,
                          fontColor: Colors.grey,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10),
                      child: buildTextField(_passController,Strings.password,borderColor: Colors.grey),
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 5),
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30,top: 5),
                        child: buildText("Email ID",
                          fontSize: 16,
                          fontColor: Colors.grey,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10),
                      child: buildTextField(_passController,Strings.password,borderColor: Colors.grey),
                    ),

                    // Container(
                    //   padding: EdgeInsets.only(left: 20, bottom: 20),
                    //   alignment: Alignment.topLeft,
                    //   child: buildText("Forgot Password?", fontSize: 14, fontColor: Colors.white, fontWeight: FontWeight.w600 ),
                    // ),
                    //Sign In Button
                    Padding(
                      padding: EdgeInsets.only(top: 15,left: 15,right: 15),
                      child:  ElevatedButton(
                        style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                          backgroundColor: MaterialStateProperty.all<Color>(mainColor),
                          padding: MaterialStateProperty.all(EdgeInsets.only(left:120,top: 11,bottom: 11)),
                          textStyle: MaterialStateProperty.all(TextStyle(fontSize: 20)) ,
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              side: BorderSide(
                                color: mainColor,

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
                         /* Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AddressScreen(),
                            ),
                          );*/
                        },
                      ),
                    ),


                    // SvgPicture.asset("assets/images/Find Donors.svg")

                  ],
                ),
              ),
            ),

          ),
          Padding(
            padding: const EdgeInsets.only(top: 370),
            child:Image(

              image: AssetImage('assets/images/blooddonate.png'),
              height: getDeviceHeightByPercentage(40, context),
              width: getDeviceWidthByPercentage(100, context),
            ),

          )





          //Expanded(child: Container(color: Colors.white)),

        ],
      ),
    );
  }

}



