import 'package:blood_donation/baseUtils/constants.dart';
import 'package:blood_donation/modules/MainLogin/mainlogin_screen.dart';
import 'package:blood_donation/modules/RegisterPage/registartion_screen.dart';
import 'package:blood_donation/widgets/common_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:proste_bezier_curve/proste_bezier_curve.dart';

class LoginPage extends StatefulWidget {

  _LoginPageState createState() => _LoginPageState();
}



class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [

          Container(
          height: getDeviceHeightByPercentage(45, context),
            decoration: new BoxDecoration(
            color:Color.fromRGBO(243,124,132,10),
              borderRadius: BorderRadius.vertical(
                  bottom: Radius.elliptical(
                      MediaQuery.of(context).size.width, 100.0)),
            ),),
          Padding(padding: EdgeInsets.only(top: 70,left: 20),
          child: Column(
            children: [
              buildText(" The gift of blood is a gift to  ",fontSize: 20,fontColor: Colors.white,maxLine: 2,fontWeight: FontWeight.bold),
              Align(
                alignment: Alignment.center,
                child:  buildText(" someone's life  ",fontSize: 20,fontColor: Colors.white,maxLine: 2,fontWeight: FontWeight.bold),
              )
            ],
          ),),

          Padding(
            padding: const EdgeInsets.only(top: 149,left: 20,right: 20),
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: DefaultTabController(
                length: 2,
                child: Stack(
                  children: [

                    TabBar(
                      isScrollable: true,
                      indicatorColor: Colors.white,
                      indicatorWeight: 6.0,
                      onTap: (index){

                      },
                      tabs: <Widget>[
                        Tab(
                          child: Container(
                            child: Text(
                              'Login',
                              style: TextStyle(color: Colors.white, fontSize: 18.0),
                            ),
                          ),
                        ),
                        Tab(
                          child: Container(
                            child: Text(
                              'Register',
                              style: TextStyle(color: Colors.white, fontSize: 18.0),
                            ),
                          ),
                        ),

                      ],
                    ),

                    /*Padding(
                  padding: const EdgeInsets.only(top: 200,left: 20),
                  child: Container(
                   // height: getDeviceHeightByPercentage(50, context),
                    width: getDeviceWidthByPercentage(90, context),
                    child: TabBarView(children: <Widget>[
                     MainLogin(),

                      Container(
                        height: 50,
                        color: Colors.blue,
                      ),
                    ] ),
                  ),
                ),*/

                    Padding(
                      padding: const EdgeInsets.only(top: 52,left: 10,right: 10),
                      child: Center(
                        child: TabBarView(children: <Widget>[

                          MainLogin(),

                        RegistrationScreen()
                        ] ),
                      ),
                    ),
                   /* Padding(
                      padding: const EdgeInsets.only(top: 400),
                      child:Image(

                        image: AssetImage('assets/images/blooddonate.png'),
                        height: getDeviceHeightByPercentage(30, context),
                        width: getDeviceWidthByPercentage(100, context),
                      ),

                    )*/





                  ],

                ),
                /*child:  TabBar(
                    isScrollable: true,
                    indicatorColor: Colors.white,
                    indicatorWeight: 6.0,
                    onTap: (index){
                      setState(() {
                       /* switch (index) {
                          case 0:
                            PrimaryColor= Color(0xffff5722);
                            break;
                          case 1:
                            PrimaryColor= Color(0xff3f51b5);
                            break;
                          case 2:
                            PrimaryColor= Color(0xffe91e63);
                            break;
                          case 3:
                            PrimaryColor= Color(0xff9c27b0);
                            break;
                          case 4:
                            PrimaryColor= Color(0xff2196f3);
                            break;
                          default:
                        }*/
                      });
                    },
                    tabs: <Widget>[
                      Tab(
                        child: Container(
                          child: Text(
                            'Login',
                            style: TextStyle(color: Colors.white, fontSize: 18.0),
                          ),
                        ),
                      ),
                      Tab(
                        child: Container(
                          child: Text(
                            'Register',
                            style: TextStyle(color: Colors.white, fontSize: 18.0),
                          ),
                        ),
                      ),

                    ],
                  ),*/
              ),
            ),
          ),
        ],
      ),
    );

  }
}
















