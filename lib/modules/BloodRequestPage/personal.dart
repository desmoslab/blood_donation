import 'package:flutter/material.dart';

import '../../baseUtils/colors.dart';
import '../../baseUtils/constants.dart';
import '../../baseUtils/strings.dart';
import '../../widgets/common_widget.dart';

class Personal extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return PersonalState();
  }
}

class PersonalState extends State<Personal> {
  static final formKey = GlobalKey<FormState>();
  static TextEditingController controllerFirstName = new TextEditingController();
  static TextEditingController controllerLastName = new TextEditingController();
  static TextEditingController controllerDateOfBirth = new TextEditingController();
  static TextEditingController controllerGender = new TextEditingController();
  final TextEditingController _userController = new TextEditingController();
  final TextEditingController _passController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Container(

          padding: EdgeInsets.only(bottom: 0),
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 0,top: 0),
            child: buildText("Patient Name",
              fontSize: 15,
              fontColor: Colors.grey,
            ),
          ),
        ),
        //User Text Box
        Padding(
          padding: const EdgeInsets.only(left: 0,right: 0),
          child: buildTextField(_userController, Strings.userName,borderColor: Colors.grey),
        ),

        Container(
          padding: EdgeInsets.only(bottom: 0),
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 0,top: 0),
            child: buildText("Age",
              fontSize: 15,
              fontColor: Colors.grey,
            ),
          ),
        ),
        //User Text Box
        Padding(
          padding: const EdgeInsets.only(left: 0,right: 0),
          child: buildTextField(_userController, Strings.userName,borderColor: Colors.grey),
        ),

        Container(
          padding: EdgeInsets.only(bottom: 0),
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 0,top: 0),
            child: buildText("Blood Group",
              fontSize: 15,
              fontColor: Colors.grey,
            ),
          ),
        ),
        //User Text Box
        Padding(
          padding: const EdgeInsets.only(left: 0,right: 0),
          child: buildTextField(_userController, Strings.userName,borderColor: Colors.grey),
        ),
        Container(
          padding: EdgeInsets.only(bottom: 0),
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 0,top: 0),
            child: buildText("Blood Needed Time",
              fontSize: 15,
              fontColor: Colors.grey,
            ),
          ),
        ),
        new Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Flexible(child: buildTextField(_userController, Strings.userName,borderColor: Colors.grey,prefixIcons: Icons.date_range,)),


            Flexible(child: buildTextField(_userController, Strings.userName,borderColor: Colors.grey,prefixIcons: Icons.access_time,)),


          ],
        ),


        Container(
          padding: EdgeInsets.only(bottom: 0),
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 0,top: 0),
            child: buildText("Relation With Patient",
              fontSize: 15,
              fontColor: Colors.grey,
            ),
          ),
        ),
        //User Text Box
        Padding(
          padding: const EdgeInsets.only(left: 0,right: 0),
          child: buildTextField(_userController, Strings.userName,borderColor: Colors.grey),
        ),
        Container(
          padding: EdgeInsets.only(bottom: 0),
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 0,top: 0),
            child: buildText("Description",
              fontSize: 15,
              fontColor: Colors.grey,
            ),
          ),
        ),
        //User Text Box


    Card(
    color: Colors.white38,
    child: Padding(
    padding: EdgeInsets.all(15),
    child: TextField(
    maxLines: 8, //or null
    decoration: InputDecoration.collapsed(hintText: "Enter your text here"),
    ),
    ),),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
                backgroundColor: MaterialStateProperty.all<Color>(mainColor),
                padding: MaterialStateProperty.all(EdgeInsets.only(left:25,top: 12,bottom: 12,right: 25)),
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


                  Padding(
                    padding: const EdgeInsets.only(left: 110),
                    child: Icon((Icons.camera_alt_outlined)),
                  )
                ],
              ),
              onPressed: (){},
          ),
        ),
        

      ],
    );
  }

}