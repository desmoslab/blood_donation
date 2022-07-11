import 'package:flutter/material.dart';
import 'package:get/get.dart';


import 'package:blood_donation/widgets/common_widget.dart';
import 'baseUtils/colors.dart';
import 'model/slider_model.dart';
//import 'modules/loginPage/login_screen.dart';
import 'package:blood_donation/baseUtils/constants.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  OnBoardingScreenState createState() => OnBoardingScreenState();
}

class OnBoardingScreenState extends State<OnBoardingScreen> {

  List<SliderModel> slides = [];
  int currentIndex = 0;
  PageController _controller = PageController(initialPage: 0);
  var hasCheckedTermsAndConditions = false;

  @override
  void initState() {

    // TODO: implement initState
    super.initState();
    //_controller = PageController(initialPage: 0);
    slides = getSlides();
  }
  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        color: appLightColor,
        padding: EdgeInsets.only(top: getDeviceHeightByPercentage(5, context)),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: getDeviceHeightByPercentage(5, context)),
              height: getDeviceHeightByPercentage(38, context),
              width: getDeviceWidthByPercentage(100, context),
              child: PageView.builder(
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (value){
                    setState(() {
                      currentIndex = value;
                    });
                  },
                  controller: _controller,
                  itemCount: slides.length,
                  itemBuilder: (context, index){
                    return Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            shape: BoxShape.circle,
                          ),
                          height: getDeviceHeightByPercentage( 35, context ),
                          width: getDeviceWidthByPercentage( 40, context ),
                        ),
                        Slider(
                          image: slides[index].getImage(),
                        ),
                      ],

                    );
                  }
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: getDeviceHeightByPercentage(5, context)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(slides.length, (index) => buildDot(index, context),
                ),
              ),
            ),
            Container(
              height: getDeviceHeightByPercentage(30, context),
              padding: EdgeInsets.only(top: getDeviceHeightByPercentage(3, context)),
              child: Column(
                children: [
                  Align(
                    alignment: AlignmentDirectional.topStart,
                    child: Container(
                        width: getDeviceWidthByPercentage(70, context),
                        padding:  EdgeInsets.only(left: getDeviceWidthByPercentage(35, context)),
                        child: buildText(slides[currentIndex].getTitle(),  fontSize: 25, maxLine: 2 )
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional.topStart,
                    child: Padding(
                        padding:  EdgeInsets.only(left: getDeviceWidthByPercentage(10, context), right: getDeviceWidthByPercentage(5, context), top: getDeviceHeightByPercentage(2, context)),
                        child: buildText(slides[currentIndex].getDescription(), fontSize: 18, maxLine: 10 )
                    ),
                  ),

                ],
              ),
            ),

            currentIndex == slides.length - 1 ?buildButtonRec("Get Started", (){
              if(currentIndex == slides.length - 1){
                showModalBottomSheet(
                    context: context,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    isScrollControlled: true,
                    builder: (context) {
                      return StatefulBuilder(
                          builder: (BuildContext context, StateSetter setState1){
                            return Container(
                              color: Colors.transparent, //could change this to Color(0xFF737373),
                              //so you don't have to change MaterialApp canvasColor
                              child: Container(
                                  decoration: new BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: new BorderRadius.only(
                                          topLeft: const Radius.circular(20.0),
                                          topRight: const Radius.circular(20.0))),
                                  //padding: EdgeInsets.all(10),
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        bottom: 0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Align(
                                          alignment: AlignmentDirectional.center,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: appLightColor,
                                            ),
                                            width: getDeviceWidthByPercentage(15, context),
                                            height: getDeviceHeightByPercentage(15, context),
                                            child: Image.asset('assets/images/app_logo.png'),
                                            // child: SvgPicture.asset(
                                            //   "assets/images/app_logo.png",
                                            //   fit: BoxFit.fitWidth,
                                            // ),
                                          ),
                                        ),
                                        Align(
                                            alignment: AlignmentDirectional.center,
                                            child: buildText('Get Started with Soulocal', fontWeight: FontWeight.bold,  fontSize: 20)),
                                        InkWell(
                                          onTap: (){
                                            setState(() {
                                            //  Get.toNamed('/${pageName.registration_page.toShortString()}');
                                              // hasOpenRegistration = true;
                                              // focusNodePhoneNumber.requestFocus();
                                              //FocusScope.of(context).requestFocus(focusNodePhoneNumber);
                                            });
                                          },
                                          child: Padding(
                                            padding: EdgeInsets.only(left: 20),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(top: 30),
                                                  child: buildText('Enter your phone number', fontSize: 15, fontColor: Colors.black87),
                                                ),
                                                Container(
                                                  height: 1,
                                                  margin: EdgeInsets.only(top: getDeviceHeightByPercentage(1, context)),
                                                  width: getDeviceWidthByPercentage(80, context),
                                                  color: Colors.black87,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),


                                      ],
                                    ),
                                  )),
                            );
                          }
                      );
                    }
                );
                //Get.offAllNamed('/${pageName.registration_page.toShortString()}');
              }
              _controller.nextPage(duration: Duration(milliseconds: 100), curve: Curves.bounceIn);
            }): InkWell(
              onTap: (){
                _controller.nextPage(duration: Duration(milliseconds: 100), curve: Curves.bounceIn);
              },
              child: Align(
                alignment: AlignmentDirectional.bottomEnd,
                child: Container(
                  width: 60,
                  height: 60,
                  margin: EdgeInsets.only(right: getDeviceWidthByPercentage(5, context)),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: appColor,
                    boxShadow: kElevationToShadow[0.5],
                  ),
                  child: Icon(
                    Icons.arrow_forward_ios_rounded,
                   // color: appSecColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }

  // container created for dots
  Container buildDot(int index, BuildContext context){
    return Container(
      height: 10,
      width: currentIndex == index ? 25 : 10,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: currentIndex == index ?appColor : appDarkColor ,
      ),
    );
  }

  //Container for title and description
  Container buildTitleAndDesc(int index, BuildContext context){
    return Container(
      height: getDeviceHeightByPercentage(20, context),
      child: Column(
        children: [
          Text(
            slides[currentIndex].getTitle(),
          ),
          Text(
            slides[index].getDescription(),
          )
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
// slider declared
class Slider extends StatelessWidget {
  String? image;

  Slider({this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // image given in slider
          Image(image: AssetImage(image!)),
        ],
      ),
    );
  }
}