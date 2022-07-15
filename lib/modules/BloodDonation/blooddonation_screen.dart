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




class BloodDonationScreen extends StatefulWidget {
  const BloodDonationScreen({Key? key}) : super(key: key);
  @override
  State<BloodDonationScreen> createState() => BloodDonationScreenState();
}

class BloodDonationScreenState extends State<BloodDonationScreen> {
  final TextEditingController _userController = new TextEditingController();
  final TextEditingController _passController = new TextEditingController();
  bool _isChecked = false;
  final TextEditingController userController = new TextEditingController();
  TextEditingController _searchController = new TextEditingController();


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
    return SingleChildScrollView(
      child: new Stack(
        children: <Widget>[
          // The containers in the background
          new Column(
            children: <Widget>[
              new Container(
                height: MediaQuery.of(context).size.height * .47,
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      buildText("Blood Donate",fontSize: 18,fontColor: Colors.white,fontWeight: FontWeight.bold),
                  Padding(
                    padding: const EdgeInsets.only(top: 15,right: 20,left: 0),
                    child: Container(
                      width: double.infinity,
                      height: 40,
                      decoration: BoxDecoration(
                      color: Color(0xFFe9eaec),
                      borderRadius: BorderRadius.circular(10)),
                      child: TextField(

                    cursorColor: Color(0xFF000000),
                    controller: _searchController,
                    decoration: InputDecoration(
                        suffixIcon: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: mainColor,
                                borderRadius: BorderRadius.circular(10)),
                            child: Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        hintText: "Search",
                        border: InputBorder.none),),),
                  ),
                      Padding(padding: EdgeInsets.only(top: 10),
                          child:chipList()),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(
                          children: [
                            buildText('Recent Request',fontColor: Colors.white,fontSize: 15),
                            SizedBox(width: 10,),
                            Container(
                              height: 2,width: 220,
                              color: Colors.white,
                            )
                          ],
                        ),
                      )
                   

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
                top: MediaQuery.of(context).size.height * .35,
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
          new Container(
            alignment: Alignment.topCenter,
            //color: Colors.white,
            padding: new EdgeInsets.only(
                top: 780,
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

        ],
      ),
    );

  }
}
Widget _buildChip(String label, Color color) {
  return Chip(
    labelPadding: EdgeInsets.all(2.0),
    avatar: CircleAvatar(
      backgroundColor: Colors.white70,
     // foregroundColor: Colors.white,
      child: Text(label[0].toUpperCase()),
    ),
    label: Text(
      label,
      style: TextStyle(
        color: Colors.white,
      ),
    ),
    backgroundColor: mainColor,
    elevation: 6.0,
    shadowColor: Colors.white,
    padding: EdgeInsets.all(8.0),
  );
}
chipList() {
  return Wrap(
    spacing: 6.0,
    runSpacing: 6.0,
    children: <Widget>[
      _buildChip('Children', Color(0xFFff6666)),
      _buildChip('Pregnant women', Color(0xFF007f5c)),
      _buildChip('Accident', Color(0xFF5f65d3)),
      _buildChip('Health', Color(0xFF19ca21)),

    ],
  );
}

