import 'package:flutter/material.dart';

import '../../baseUtils/colors.dart';
import '../../baseUtils/constants.dart';
import '../../baseUtils/strings.dart';
import '../../widgets/common_widget.dart';

class Contact extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ContactState();
  }
}

class ContactState extends State<Contact> {
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
            child: buildText("Hospital Name",
              fontSize: 16,
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
            child: buildText("Hospital Address",
              fontSize: 16,
              fontColor: Colors.grey,
            ),
          ),
        ),
        //User Text Box
        Padding(
          padding: const EdgeInsets.only(left: 12,right: 12,top: 5),
          child: Card(
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.all(15),
              child: TextField(
                maxLines: 5, //or null
                decoration: InputDecoration.collapsed(hintText: "Enter hospital address"),
              ),
            ),),
        ),

        Container(
          padding: EdgeInsets.only(bottom: 0),
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 0,top: 0),
            child: buildText("Contact Number",
              fontSize: 16,
              fontColor: Colors.grey,
            ),
          ),
        ),
        //User Text Box
        Padding(
          padding: const EdgeInsets.only(left: 0,right: 0),
          child: buildTextField(_userController, Strings.userName,borderColor: Colors.grey,),
        ),



        Container(
          padding: EdgeInsets.only(bottom: 0),
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 0,top: 0),
            child: buildText("Alternate Number",
              fontSize: 16,
              fontColor: Colors.grey,
            ),
          ),
        ),
        //User Text Box
        Padding(
          padding: const EdgeInsets.only(left: 0,right: 0),
          child: buildTextField(_userController, Strings.userName,borderColor: Colors.grey),
        ),

        //User Text Box


        
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
              backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
              padding: MaterialStateProperty.all(EdgeInsets.only(left:25,top: 12,bottom: 12,right: 25)),
              textStyle: MaterialStateProperty.all(TextStyle(fontSize: 18)) ,
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  side: BorderSide(
                    color: mainColor,
                    width: 2.0,
                  ),
                ),
              ),
            ),
            child: Row(
              children: [


               Padding(
                 padding: const EdgeInsets.only(left: 85),
                 child: Text("Cancel"),
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