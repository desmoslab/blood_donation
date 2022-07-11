import 'package:blood_donation/modules/initial_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../baseUtils/colors.dart';
import '../../baseUtils/constants.dart';
import '../../baseUtils/strings.dart';
import '../../widgets/common_widget.dart';
import 'mainlogin_controller.dart';


class MainLogin extends StatefulWidget {
  const MainLogin({Key? key}) : super(key: key);
  @override
  State<MainLogin> createState() => MainLoginState();
}

class MainLoginState extends State<MainLogin> {
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
    final loginController = Get.put(LoginController());

    return Scaffold(
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
                        child: buildText("User ID",
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
                        child: buildText("Password",
                          fontSize: 16,
                          fontColor: Colors.grey,
                        ),
                      ),
                    ),
                    //buildTextField(_passController, Strings.password, prefixIcons: Icons.password ),
                    //Password Text Box
                    Padding(
                        padding: const EdgeInsets.only(left: 10,right: 10),
                        child:Row(children: [
                          // Checkbox(value: , onChanged: onChanged)
                        ],)
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10),
                      child: buildTextField(_passController,Strings.password,borderColor: Colors.grey),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(left: 25,right: 10,top: 10),
                        child: Row(
                          children: [
                            SizedBox(
                                height: 24.0,
                                width: 24.0,
                                child: Theme(
                                  data: ThemeData(
                                      unselectedWidgetColor: Colors.grey // Your color
                                  ),
                                  child: Checkbox(

                                    activeColor: Colors.grey, value: _isChecked, onChanged: (bool? value) {  },
                                  ),

                                )),
                            SizedBox(width: 10,),
                            buildText("Remember Me",fontSize: 15,fontColor: Colors.grey)
                          ],
                        )
                    ),

                    // Container(
                    //   padding: EdgeInsets.only(left: 20, bottom: 20),
                    //   alignment: Alignment.topLeft,
                    //   child: buildText("Forgot Password?", fontSize: 14, fontColor: Colors.white, fontWeight: FontWeight.w600 ),
                    // ),
                    //Sign In Button
                    Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: buildButtonRec('Login', () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => InitialScreen(),
                          ),
                        );
                        //Sign Button Click
                        // loginController.getRetailerLogin(_userController.text, _passController.text);

                        /*loginController
                          .validateNumber(_userController.text, context)
                          .then((isLogin) {
                        if (_userController.text.isNotEmpty && isLogin) {
                          Future.delayed(Duration(milliseconds: 700), () {
                            loginController.loadLoginData(
                                _userController.text, context);
                          });
                        } else {
                          showToast('Please enter valid number',
                              context: context);
                        }
                      });*/
                      }, backgroundColor: Color.fromRGBO(243,124,132,10),textColor: Colors.white),

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
