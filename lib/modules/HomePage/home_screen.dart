import 'package:blood_donation/model/user_model.dart';
import 'package:blood_donation/modules/BloodDonatePage/blooddonate_screen.dart';
import 'package:blood_donation/modules/BloodRequestPage/bloodrequest_screen.dart';
import 'package:blood_donation/modules/ChatPage/chat_screen.dart';
import 'package:blood_donation/modules/ChatPage/home_screen.dart';
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
import 'home_controller.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  final TextEditingController _userController = new TextEditingController();
  final TextEditingController _passController = new TextEditingController();
  bool _isChecked = false;
  final TextEditingController userController = new TextEditingController();


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
    return SingleChildScrollView(
      child: new Stack(
        children: <Widget>[
          // The containers in the background
          new Column(
            children: <Widget>[
              new Container(
                height: MediaQuery.of(context).size.height * .35,
               width: getDeviceWidthByPercentage(100, context),
               // color: mainColor,
                decoration: new BoxDecoration(
                  color:mainColor,
                  borderRadius: BorderRadius.vertical(
                      bottom: Radius.elliptical(
                          MediaQuery.of(context).size.width, 100.0)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 50,left: 25),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                   // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                         buildText("Welcome",fontSize: 18,fontColor: Colors.white),

                          buildText('Arulmozhi Varman',fontSize: 18,fontColor: Colors.white),


                          /*Padding(
                            padding: const EdgeInsets.only(top: 10,left: 0),
                            child: Row(
                              children: [
                                buildText('Recent Request',fontSize: 18,fontColor: Colors.white),
                                Divider(
                                height: 20,thickness: 4,indent: 5,endIndent: 5,
                                  color: Colors.black,
                                )
                              ],
                            ),
                          ),*/


                        ],

                      ),
                      SizedBox(width: 120,),
                      Image(

                        image: AssetImage('assets/images/profile.jpeg'),
                        height: getDeviceHeightByPercentage(7, context),
                        width: getDeviceWidthByPercentage(15, context),
                      ),


                    ],



                  ),


                ),



              ),

              new Container(
                height: MediaQuery.of(context).size.height * .45,
                color: Colors.white,
              )
            ],
          ),
          // The card widget with top padding,
          // incase if you wanted bottom padding to work,
          // set the `alignment` of container to Alignment.bottomCenter
          new Container(
            alignment: Alignment.topCenter,
            //color: Colors.white,
            padding: new EdgeInsets.only(
                top: MediaQuery.of(context).size.height * .20,
                right: 20.0,
                left: 20.0),
            child: new Container(
              height: 470.0,
              color: Colors.white,

              width: MediaQuery.of(context).size.width,
              child: new Card(
                color: Colors.white,
                elevation: 4.0,
                child: Column(
                  children: [

                    Padding(
                      padding: const EdgeInsets.only(top: 10,left: 10,right: 10),
                      child: Container(decoration: new BoxDecoration(
                          color:Colors.white60,
                          borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: AssetImage('assets/images/doctor.jpeg'),fit: BoxFit.fill
                        )


                      ),



                        height: getDeviceHeightByPercentage(25, context),
                        width: getDeviceWidthByPercentage(100, context),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 145,left: 10),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            buildText('9878456789',fontColor: Colors.white,fontWeight: FontWeight.bold),
                            buildText('John Deo',fontColor: Colors.white,fontWeight: FontWeight.bold),

                          ],
                        ),
                      ),
                    ),






                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10,top: 10),
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Column(
                          children: [buildText('Today')],
                        ),
                      ),
                    ),
                   Padding(
                     padding: const EdgeInsets.only(left: 10),
                     child: Row(
                       children: [
                         buildText('Donate blood and become a super hero',maxLine: 2),
                         SizedBox(width: 20),
                         Container(
                           height: getDeviceHeightByPercentage(5, context),
                           width: getDeviceWidthByPercentage(10, context),
                           color: Colors.white54,

                           child: Column(
                             children: [
                               Image(

                                 image: AssetImage('assets/images/Blood.png'),
                                height: getDeviceHeightByPercentage(2, context),
                                 width: getDeviceWidthByPercentage(5, context),
                               ),
                               buildText('O-ve')
                             ],
                           ),
                         )


                       ],
                     ),
                   ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                       // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          buildText('Patient Name'),
                          SizedBox(width: 50,),
                          buildText('Age'),
                          SizedBox(width: 60,),
                          buildText('Hospital')
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                       // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          buildText('John Deo'),
                          SizedBox(width: 80,),
                          buildText('20'),
                          SizedBox(width: 50,),

                          buildText('Ganga Hospital')
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 4,bottom: 5,top: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.location_on),
                          SizedBox(width: 5,),
                          buildText('Ganga Hospital, Coimbatore, TamilNadu 641003',fontSize: 13)
                        ],
                      ),
                    ),
                    Container(
                      height: 1,
                      color: Colors.grey,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundImage: AssetImage("assets/images/profile.jpeg"),
                          ),
                          SizedBox(width: 20,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              buildText('Post By'),
                              buildText('RamSathya')
                            ],
                          ),
                          SizedBox(
                            width: 100,
                          ),
                          ElevatedButton(
                            style: ButtonStyle(
                              foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                              padding: MaterialStateProperty.all(EdgeInsets.only(left:10,top: 6,bottom: 6,right: 10)),
                              textStyle: MaterialStateProperty.all(TextStyle(fontSize: 20)) ,
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                  side: BorderSide(
                                    color: Colors.white,

                                  ),
                                ),
                              ),
                            ),
                            child: Row(
                              children: [
                                Text('IM A HERO',style: TextStyle(fontSize: 12,color: Colors.white),),


                              ],

                            ),
                            onPressed: () {
                             /* Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => OnboardingScreenTwo(),
                                ),
                              );*/
                            },
                          ),
                        ],

                      ),
                    ),


                  ],
                ),
              ),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => BloodDonateScreen(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 40,top: 660),
              child: Container(
                //color: appColor,
                  width: getDeviceWidthByPercentage(35, context),
                  height: getDeviceHeightByPercentage(6 , context),
                  // alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Colors.white,
                    border: Border.all(color: Colors.black12),

                  ),

                  child: Padding(
                    padding: const EdgeInsets.only(left: 45,top: 3),
                    child: Row(

                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            buildText('Blood', fontWeight: FontWeight.bold, fontSize: 14 ),
                            buildText('Donation', fontWeight: FontWeight.bold, fontSize: 14 ),

                          ],
                        ),
                        Align(alignment: Alignment.topLeft,
                        child: Icon(Icons.arrow_forward_ios,size: 16,),)
                      ],
                    ),
                  )
              ),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => BloodDonateScreen(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 660,left: 20),
              child: Container(
                //color: appColor,
                  width: getDeviceWidthByPercentage(13, context),
                  height: getDeviceHeightByPercentage(6 , context),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Colors.white,
                    border: Border.all(color: Colors.black12),

                  ),

                  child:Image(

                    image: AssetImage('assets/images/Blood donation.png'),
                    height: getDeviceHeightByPercentage(4, context),
                    width: getDeviceWidthByPercentage(5, context),
                  ),
              ),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => BloodRequestScreen(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 232,top: 660),
              child: Container(
                //color: appColor,
                  width: getDeviceWidthByPercentage(33, context),
                  height: getDeviceHeightByPercentage(6 , context),
                  // alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                    color: Colors.white,
                    border: Border.all(color: Colors.black12),

                  ),

                  child: Padding(
                    padding: const EdgeInsets.only(left: 35,top: 3),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            buildText('Blood', fontWeight: FontWeight.bold, fontSize: 14 ),
                            buildText('Request', fontWeight: FontWeight.bold, fontSize: 14 ),

                          ],
                        ),
                        Align(alignment: Alignment.topLeft,
                          child: Icon(Icons.arrow_forward_ios,size: 16,),)
                      ],
                    ),
                  )
              ),
            ),
          ),
          InkWell(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => BloodDonateScreen(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 660,left: 200),
              child: Container(
                //color: appColor,
                width: getDeviceWidthByPercentage(13, context),
                height: getDeviceHeightByPercentage(6 , context),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: Colors.white,
                  border: Border.all(color: Colors.black12),

                ),

                child:Image(

                  image: AssetImage('assets/images/Blood Request.png'),
                  height: getDeviceHeightByPercentage(4, context),
                  width: getDeviceWidthByPercentage(5, context),
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 740,left: 20,right: 20),
            child: Container(
             // width: getDeviceWidthByPercentage(, context),
              height: 250,
              color:Colors.green,
              child: HomesScreens(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 850,right: 25,left: 25),
            child: new Container(
              height: 400.0,
             // color: Colors.white38,
              decoration: new BoxDecoration(
               color:Colors.white60,
                 borderRadius: BorderRadius.circular(15),),

              width: MediaQuery.of(context).size.width,
              child: new Card(
                color: Colors.white,
                elevation: 4.0,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10,top: 10,bottom: 5),
                  child: Row(
                  //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Row(
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundImage: AssetImage("assets/images/profile.jpeg"),
                            ),
                            SizedBox(width: 10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                buildText("John Deo",fontSize: 15,fontColor: Colors.black),

                                buildText('Online',fontSize: 12,fontColor: Colors.black),],),
                          ],
                        ),



                          Padding(
                            padding: const EdgeInsets.only(top: 10,right: 10,left: 10),
                            child: Container(
                              height: 1,
                              width: 300,
                              color: Colors.grey,
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.only(top: 20,left: 20,right: 0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  buildText('Hi,Good Morning'),
                                  SizedBox(width: 120),

                                  CircleAvatar(
                                    radius: 20,
                                    backgroundImage: AssetImage("assets/images/profile.jpeg"),
                                  ),

                                ],
                              )
                          ),
                          Padding(
                              padding: const EdgeInsets.only(top: 30,left: 20,right: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [


                                  CircleAvatar(
                                    radius: 20,
                                    backgroundImage: AssetImage("assets/images/doctor.jpeg"),
                                  ),
                                  SizedBox(width: 10),

                                  buildText('Good Morning'),

                                ],
                              )
                          ),
                          Padding(
                              padding: const EdgeInsets.only(top: 30,left: 20,right: 0),
                              child: Row(
                                children: [
                                  buildText('How are you'),
                                  SizedBox(
                                    width: 150,
                                  ),

                                  CircleAvatar(
                                    radius: 20,
                                    backgroundImage: AssetImage("assets/images/profile.jpeg"),
                                  ),

                                ],
                              )
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10,right: 10,left: 10),
                            child: Container(
                              height: 1,
                              width: 300,
                              color: Colors.grey,
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.only(top: 10,left: 10,right: 0),
                              child: Row(
                                children: [
                                  Icon(Icons.more_vert),
                                  buildText("Type Something..."),
                                  SizedBox(
                                    width: 140,
                                  ),
                                  Icon(Icons.send),

                                ],
                              )
                          ),

                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
