import 'package:flutter/material.dart';

import '../../baseUtils/colors.dart';
import '../../baseUtils/constants.dart';
import '../../baseUtils/strings.dart';
import '../../widgets/common_widget.dart';

class Upload extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return UploadState();
  }
}

class UploadState extends State<Upload> {
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
          child: buildText("",
            fontSize: 16,
            fontColor: Colors.grey,
          ),
        ),
        //User Text Box
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
          child: buildText("Your request submitted Successfully"),
        ),

        Padding(
          padding: const EdgeInsets.only(left: 5,right: 5,top: 20),
          child:Column(
            children: [
              buildText("I hope each new day brings them closer to ",maxLine: 2),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: buildText("full and speedy recovery!"),
              ),
            ],
          ),
        ),





      ],
    );
  }

}