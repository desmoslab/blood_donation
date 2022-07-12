import 'package:blood_donation/model/user_model.dart';
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




class BloodDonateScreen extends StatefulWidget {
  const BloodDonateScreen({Key? key}) : super(key: key);
  @override
  State<BloodDonateScreen> createState() => BloodDonateScreenState();
}

class BloodDonateScreenState extends State<BloodDonateScreen> {
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
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          children: [

            Container(
              height: getDeviceHeightByPercentage(40, context),
              decoration: new BoxDecoration(
                color:Color.fromRGBO(243,124,132,10),
                borderRadius: BorderRadius.vertical(
                    bottom: Radius.elliptical(
                        MediaQuery.of(context).size.width, 100.0)),
              ),),
            Padding(padding: EdgeInsets.only(top: 70,left: 20),
              child: Row(
                children: [
                  Icon(Icons.arrow_back,color: Colors.white,),
                  SizedBox(width: 20,),
                  buildText(" Blood Donation ",fontSize: 20,fontColor: Colors.white,maxLine: 2,fontWeight: FontWeight.bold),

                ],
              ),),

            Padding(
              padding: const EdgeInsets.only(top: 140,left: 20,right: 20),
              child: new Container(
                height: 240.0,
                //color: Colors.white,
                decoration: new BoxDecoration(
                  color:Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.grey)



                ),

                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [

                    Padding(
                      padding: const EdgeInsets.only(top:10,left: 10,right: 10),
                      child: Container(decoration: new BoxDecoration(
                          color:Colors.white,
                          borderRadius: BorderRadius.circular(15),




                      ),



                        height: getDeviceHeightByPercentage(10, context),
                        width: getDeviceWidthByPercentage(100, context),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10,left: 10),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              buildText('I am available for donate',fontSize: 18),
                             Icon(Icons.toggle_off_outlined,size: 35,)

                            ],

                          ),

                        ),






                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 0,left: 20,right: 20),
                      child: Container(decoration: new BoxDecoration(
                        color:Colors.white38,
                        borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.grey)




                      ),



                        height: getDeviceHeightByPercentage(12, context),
                        width: getDeviceWidthByPercentage(100, context),
                        child:Column(
                          children: [
                            Row(
                             // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // buildText(order_status == orderStatus.not_assigned.toShortString()?'New Order Placed': order_status == orderStatus.confirm.toShortString()? 'Order Confirmed':

                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10,left: 25),
                              child: Row(
                               mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Expanded(
                                      flex:2,
                                      child: buildText('Last Donate Date',  fontColor: Colors.grey, fontSize: 15)),
                                  Expanded(
                                      flex:2,
                                      child: buildText('Left Days',  fontColor: Colors.grey, fontSize: 15)),


                                ],
                              ),
                            ),

                            Padding(
                              padding:  EdgeInsets.only(top: 20,left: 25),
                              child: Row(
                               // mainAxisSize: MainAxisSize.max,
                               // mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Expanded(
                                      flex:2,
                                      child: buildText('12-02-2022',  fontColor: Colors.black, fontSize: 15, fontWeight: FontWeight.w600)),
                                  Expanded(
                                      flex:2,
                                      child: buildText('10 Days Left',  fontColor: Colors.black, fontSize: 15, fontWeight: FontWeight.w600)),



                                ],

                              ),
                            ),





                          ],
                        ),






                      ),
                    ),




                  ],
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 410,left: 22),
              child: Column(
                children: [
                  buildText('History',fontSize: 16,fontColor: Colors.black)
                ],
              )),
            Padding(
              padding: const EdgeInsets.only(top: 450,left: 20,right: 20),
              child: new Container(
                height: 90.0,
                //color: Colors.white,
                decoration: new BoxDecoration(
                  color:Colors.white,
                  borderRadius: BorderRadius.circular(15),



                ),

                width: MediaQuery.of(context).size.width,
                child: new Card(
                  color: Colors.white,
                  elevation: 4.0,
                  child: Column(
                    children: [



                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundImage: AssetImage("assets/images/profile.jpeg"),
                            ),
                            SizedBox(width: 20,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                buildText('Patient Name',fontColor: Colors.grey),
                                buildText('JOHN DEO')
                              ],
                            ),
                            SizedBox(width: 10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                buildText('Donate Date',fontColor: Colors.grey),
                                buildText('12-02-2022')
                              ],
                            ),
                            SizedBox(
                              width: 47,
                            ),
                            Container(
                              height: 80,
                              width: 40,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                                  backgroundColor: MaterialStateProperty.all<Color>(mainColor),
                                  padding: MaterialStateProperty.all(EdgeInsets.only(left:7,top: 10,bottom: 10,right: 0)),
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
                                    Icon(Icons.keyboard_arrow_down)


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
                            ),
                          ],

                        ),
                      ),




                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 560,left: 20,right: 20),
              child: new Container(
                height: 90.0,
                //color: Colors.white,
                decoration: new BoxDecoration(
                  color:Colors.white,
                  borderRadius: BorderRadius.circular(15),



                ),

                width: MediaQuery.of(context).size.width,
                child: new Card(
                  color: Colors.white,
                  elevation: 4.0,
                  child: Column(
                    children: [



                      Padding(
                        padding: const EdgeInsets.only(left: 10),
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
                                buildText('Patient Name',fontColor: Colors.grey),
                                buildText('JOHN DEO')
                              ],
                            ),
                            SizedBox(width: 10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                buildText('Donate Date',fontColor: Colors.grey),
                                buildText('12-02-2022')
                              ],
                            ),
                            SizedBox(
                              width: 47,
                            ),
                            Container(
                              height: 80,
                              width: 40,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                                  backgroundColor: MaterialStateProperty.all<Color>(mainColor),
                                  padding: MaterialStateProperty.all(EdgeInsets.only(left:7,top: 10,bottom: 10,right: 0)),
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
                                    Icon(Icons.keyboard_arrow_up)


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
                            ),
                          ],

                        ),
                      ),




                    ],
                  ),
                ),
              ),
            ),

            new Container(
              alignment: Alignment.topCenter,
              //color: Colors.white,
              padding: new EdgeInsets.only(
                  top: 645,
                  right: 20.0,
                  left: 20.0),
              child: new Container(
                height: 280.0,
                color: Colors.white,

                width: MediaQuery.of(context).size.width,
                child: new Card(
                  color: Colors.white,
                  elevation: 4.0,
                  child: Column(
                    children: [



                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            buildText('Patient Name',fontColor: Colors.grey),
                            SizedBox(width: 50,),
                            buildText('Age',fontColor: Colors.grey),
                            SizedBox(width: 60,),
                            buildText('Hospital',fontColor: Colors.grey)
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
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
                        padding: const EdgeInsets.only(left: 10,bottom: 5,top: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [


                            buildText('Description',fontSize: 13,fontColor: Colors.grey)
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10,bottom: 5,top: 5,right: 10),
                        child: buildText('Lorem Ipsum is simply dummied text of the printing and typesetting industry.',fontSize: 13,maxLine: 2,overflow: TextOverflow.ellipsis),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 4,bottom: 5,top: 5),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.location_on),
                            SizedBox(width: 5,),
                            buildText('Ganga Hospital, Coimbatore, TamilNadu 641003',fontSize: 13,fontColor: Colors.blue)
                          ],
                        ),
                      ),
                      Container(
                        height: 1,
                        color: Colors.grey,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
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
                                buildText('Post By',fontColor: Colors.grey),
                                buildText('RamSathya',fontSize: 14,fontColor: Colors.black)
                              ],
                            ),
                            SizedBox(width: 35,),
                            Padding(
                              padding: const EdgeInsets.only(top: 28),
                              child: Align(
                                alignment: Alignment.bottomRight,
                                child: buildText('I AM A HERO'),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Image(

                              image: AssetImage('assets/images/hero.png'),
                            height: 50,
                              width: 50,
                            ),

                            /*ElevatedButton(
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
                            ),*/
                          ],

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
    );

  }
}
