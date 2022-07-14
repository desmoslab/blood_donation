import 'dart:collection';

import 'package:blood_donation/model/user_model.dart';
import 'package:blood_donation/modules/BloodRequestPage/personal.dart';
import 'package:blood_donation/modules/BloodRequestPage/upload.dart';
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
import 'contact.dart';




class BloodRequestScreen extends StatefulWidget {
  const BloodRequestScreen({Key? key}) : super(key: key);
  @override
  State<BloodRequestScreen> createState() => BloodRequestScreenState();
}

class BloodRequestScreenState extends State<BloodRequestScreen> {
  final TextEditingController _userController = new TextEditingController();
  final TextEditingController _passController = new TextEditingController();
  bool _isChecked = false;
  final TextEditingController userController = new TextEditingController();
  var currentStep = 0;
  final _stepsText = ["Personal Details", "Address", "Success"];

  final _stepCircleRadius = 10.0;

  final _stepProgressViewHeight = 150.0;

  Color _activeColor = Colors.lightBlue;

  Color _inactiveColor = Colors.grey;

  TextStyle _headerStyle =
  TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold);

  TextStyle _stepStyle = TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold);

  late Size _safeAreaSize;

  int _curPage = 1;
  StepProgressView _getStepProgress() {
    return StepProgressView(
      _stepsText,
      _curPage,
      _stepProgressViewHeight,
      _safeAreaSize.width,
      _stepCircleRadius,
      _activeColor,
      _inactiveColor,
      _headerStyle,
      _stepStyle,
      decoration: BoxDecoration(color: Colors.white),
      padding: EdgeInsets.only(
        top: 5.0,
        left: 24.0,
        right: 24.0,
      ),
    );
  }


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

    var mapData = HashMap<String, String>();
    mapData["first_name"] = PersonalState.controllerFirstName.text;
    mapData["last_name"] = PersonalState.controllerLastName.text;
    mapData["date_of_birth"] = PersonalState.controllerDateOfBirth.text;
    mapData["gender"] = PersonalState.controllerGender.text;

    List<Step> steps = [
      Step(
        title: Text('Patient'),
        content: Personal(),
        isActive: currentStep >= 0,
        state: currentStep >= 0 ? StepState.indexed : StepState.indexed,

      ),
      Step(
        title: Text('Contact'),
        content: Contact(),
        isActive: currentStep >= 0,
        state: currentStep >= 1 ? StepState.indexed : StepState.indexed,
      ),
      Step(
        title: Text('Success'),
        content: Upload(),
        isActive: currentStep >= 0,
        state: currentStep >= 2 ? StepState.complete : StepState.indexed,
      ),
    ];

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
                  InkWell(onTap: () {
                    Get.back();
                  },child: Icon(Icons.arrow_back,color: Colors.white,)),
                  SizedBox(width: 20,),
                  buildText(" Blood Request ",fontSize: 20,fontColor: Colors.white,maxLine: 2,fontWeight: FontWeight.bold),

                ],
              ),),

            Padding(
              padding: const EdgeInsets.only(top: 140,left: 20,right: 20),
              child: new Container(
                height: 800.0,
                //color: Colors.white,
                decoration: new BoxDecoration(
                    color:Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.grey)



                ),

                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.only(top:5,left: 0,right: 0),
                  child: Container(decoration: new BoxDecoration(
                    color:Colors.white,
                    borderRadius: BorderRadius.circular(15),




                  ),



                    height: getDeviceHeightByPercentage(10, context),
                    width: getDeviceWidthByPercentage(100, context),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 0,left: 0),
                      child:  Theme(
                        data: ThemeData(accentColor:Colors.black,colorScheme: ColorScheme.fromSwatch().copyWith(primary: mainColor)),
                        child: Stepper(

                          controlsBuilder: (context, ControlsDetails details ){
                            final _isLastStep = currentStep == steps.length - 3;
                            return Container(

                              child: Row(
                                children:<Widget> [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 7,right: 0),
                                    child: Column(
                                      children: [
                                        if (currentStep < 2)
                                        //_getStepProgress(),
                                        ElevatedButton(
                                          style: ButtonStyle(
                                            foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                            backgroundColor: MaterialStateProperty.all<Color>(mainColor),
                                            padding: MaterialStateProperty.all(EdgeInsets.only(left:125,top: 12,bottom: 12,right: 125)),
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
                                          child: Row(
                                            children: [


                                              Text(_isLastStep? 'Next': 'Next'),
                                            ],
                                          ),
                                          onPressed: details.onStepContinue,

                                        ),
                                        if(currentStep >= 2)
                                          ElevatedButton(
                                            style: ButtonStyle(
                                              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                              backgroundColor: MaterialStateProperty.all<Color>(mainColor),
                                              padding: MaterialStateProperty.all(EdgeInsets.only(left:120,top: 12,bottom: 12,right: 120)),
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
                                            child: Row(
                                              children: [


                                                Text('Home'),
                                              ],
                                            ),
                                            onPressed: (){},

                                          ),

                                      ],
                                    ),
                                  ),
                                 // TextButton(onPressed: details.onStepContinue, child: Text(_isLastStep? 'Next': 'Next')),
                                ],
                              ),
                            );
                          },
                          currentStep: this.currentStep,
                          steps: steps,
                          type: StepperType.horizontal,
                          onStepTapped: (step) {
                            setState(() {
                              currentStep = step;
                            });
                          },
                          onStepContinue: () {
                            setState(() {
                              if(currentStep !=2){
                                currentStep += 1;
                              }
                            });
                          },
                          onStepCancel: () {
                            setState(() {
                              if (currentStep != 0) {
                                currentStep -= 1;
                              }
                            });
                          },
                        ),
                      ),

                    ),






                  ),
                ),
              ),
            ),
           /* Padding(padding: EdgeInsets.only(top: 410,left: 22),
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
            ),*/
          ],
        ),
      ),
    );
  }
}
class StepProgressView extends StatelessWidget {
  const StepProgressView(
      List<String> stepsText,
      int curStep,
      double height,
      double width,
      double dotRadius,
      Color activeColor,
      Color inactiveColor,
      TextStyle headerStyle,
      TextStyle stepsStyle, {

        required this.decoration,
        required this.padding,
        this.lineHeight = 2.0,
      })  : _stepsText = stepsText,
        _curStep = curStep,
        _height = height,
        _width = width,
        _dotRadius = dotRadius,
        _activeColor = activeColor,
        _inactiveColor = inactiveColor,
        _headerStyle = headerStyle,
        _stepStyle = stepsStyle,
        assert(curStep > 0 == true && curStep <= stepsText.length),
        assert(width > 0),
        assert(height >= 2 * dotRadius),
        assert(width >= dotRadius * 2 * stepsText.length);


  //height of the container
  final double _height;
  //width of the container
  final double _width;
  //container decoration
  final BoxDecoration decoration;
  //list of texts to be shown for each step
  final List<String> _stepsText;
  //cur step identifier
  final int _curStep;
  //active color
  final Color _activeColor;
  //in-active color
  final Color _inactiveColor;
  //dot radius
  final double _dotRadius;
  //container padding
  final EdgeInsets padding;
  //line height
  final double lineHeight;
  //header textstyle
  final TextStyle _headerStyle;
  //steps text
  final TextStyle _stepStyle;

  List<Widget> _buildNumbers() {
    var wids = <Widget>[];
    _stepsText.asMap().forEach((i, text) {
      var circleColor =
      (i == 0 || _curStep > i + 1) ? mainColor : _inactiveColor;

      var lineColor = _curStep > i + 1 ? mainColor : _inactiveColor;

      wids.add(CircleAvatar(
        radius: _dotRadius,
        backgroundColor: circleColor,
      ));

      //add a line separator
      //0-------0--------0
      if (i != _stepsText.length - 1) {
        wids.add(
          Expanded(
            child: Container(
              height: lineHeight,
              color: lineColor,
            ),
          ),
        );
      }
    });

    return wids;
  }

  List<Widget> _buildText() {
    var wids = <Widget>[];
    _stepsText.asMap().forEach((i, text) {
      wids.add(Text(text, style: _stepStyle));
    });

    return wids;
  }

  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      height: this._height,
      width: this._width,
      decoration: this.decoration,
      child: Column(
        children: <Widget>[
          Container(
            child: Center(
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: (_curStep).toString(),
                      style: _headerStyle.copyWith(
                        color: _activeColor, //this is always going to be active
                      ),
                    ),
                    TextSpan(
                      text: " / " + _stepsText.length.toString(),
                      style: _headerStyle.copyWith(
                        color: _curStep == _stepsText.length
                            ? _activeColor
                            : _inactiveColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Row(
            children: _buildNumbers(),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: _buildText(),
          )
        ],
      ),
    );
  }
}
