import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../baseUtils/colors.dart';
import '../../baseUtils/constants.dart';
import '../../baseUtils/strings.dart';
import '../../widgets/common_widget.dart';
//import 'mainlogin_controller.dart';


class SuccessScreen extends StatefulWidget {
  const SuccessScreen({Key? key}) : super(key: key);
  @override
  State<SuccessScreen> createState() => SuccessScreenState();
}

class SuccessScreenState extends State<SuccessScreen> {
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
            height: getDeviceHeightByPercentage(30, context),
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
                        padding: const EdgeInsets.only(left: 0,top: 30),
                        child: Align(alignment:Alignment.center,child: Icon(Icons.check_circle_outline_outlined,color: Colors.green,size: 50,))
                      ),
                    ),
                    //User Text Box
                    Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10),
                      child: buildText("Registration Completed Successfully"),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10,top: 20),
                      child:Column(
                        children: [
                          buildText("Please check your register email"),
                          buildText("for email verification"),
                        ],
                      ),
                    ),
                    //buildTextField(_passController, Strings.password, prefixIcons: Icons.password ),
                    //Password Text Box


                    // Container(
                    //   padding: EdgeInsets.only(left: 20, bottom: 20),
                    //   alignment: Alignment.topLeft,
                    //   child: buildText("Forgot Password?", fontSize: 14, fontColor: Colors.white, fontWeight: FontWeight.w600 ),
                    // ),
                    //Sign In Button
                    Padding(
                      padding: EdgeInsets.only(top: 20,left: 20,right: 20),
                      child:  ElevatedButton(
                        style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                          backgroundColor: MaterialStateProperty.all<Color>(mainColor),
                          padding: MaterialStateProperty.all(EdgeInsets.only(left:100,top: 11,bottom: 11)),
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
                            Text('Back to Login',),
                            SizedBox(width: 10,),

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
            padding: const EdgeInsets.only(top: 300),
            child:Image(

              image: AssetImage('assets/images/blooddonate.png'),
              height: getDeviceHeightByPercentage(50, context),
              width: getDeviceWidthByPercentage(100, context),
            ),

          )





          //Expanded(child: Container(color: Colors.white)),

        ],
      ),
    );
  }
}
