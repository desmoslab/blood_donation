

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:blood_donation/baseUtils/colors.dart';
import 'package:blood_donation/baseUtils/constants.dart';


import 'common_widget.dart';

class CustomHeader1 extends StatefulWidget {
  Widget? bodyContent;
  String? title;
  Widget? stack1, stack2, stack3, stack4;
  Function()? right_icon_click;
  IconData? right_icon;
  Widget? right_widget;
  CustomHeader1({
    this.title,
    this.bodyContent,
    this.stack1,
    this.stack2,
    this.stack3,
    this.stack4,
    this.right_icon_click,
    this.right_icon,
    this.right_widget,
});

  @override
  State<CustomHeader1> createState() => CustomHeader1State();
}

class CustomHeader1State extends State<CustomHeader1> {
  late ScrollController _scrollController;
  var hasAppScroll = false ;
  // This widgets1 is the root of your application.
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _scrollController = ScrollController()
      ..addListener(() {
        setState(() {
          if (_isSliverAppBarExpanded ) { hasAppScroll = true;
          }else{ hasAppScroll = false;};
          //_textColor = _isSliverAppBarExpanded ? Colors.white : Colors.blue;
        });
      });
  }
  bool get _isSliverAppBarExpanded {
    return _scrollController.hasClients &&
        _scrollController.offset > (200 - kToolbarHeight);
  }
  @override
  Widget build(BuildContext context) {
    double statusBarHeight = MediaQuery.of(context).padding.top;
    return SafeArea(
        child:Scaffold(
          resizeToAvoidBottomInset: false,
          body: Stack(
            children: [
              CustomScrollView(
                controller: _scrollController,
                slivers: <Widget>[
                  //2
                  /*SliverAppBar(
                    automaticallyImplyLeading:false,
                    pinned: true,snap: false,floating: false,
                    expandedHeight: getDeviceHeightByPercentage(08, context)- statusBarHeight,
                    flexibleSpace: FlexibleSpaceBar(
                        centerTitle: true,
                        title: customHeader(),
                    ),
                    shape: ContinuousRectangleBorder(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30))),
                    backgroundColor: appDarkColor,
                  ),*/
                  //3
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                          (_, int index) {
                        return widget.bodyContent;
                      },
                      childCount: 1,
                    ),
                  ),
                ],
              ),
              widget.stack1 ?? Container(),
              widget.stack2 ?? Container(),
              widget.stack3 ?? Container(),
              widget.stack4 ?? Container(),
            ],
          ),
        ) );
  }

  Widget customHeader(){

    return Container(
      width: getDeviceWidthByPercentage(100, context),
      padding: EdgeInsets.only( top: 5, left: getDeviceWidthByPercentage(3, context), right: getDeviceWidthByPercentage(3, context)),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [


          widget.right_icon != null ? Align(
            alignment: Alignment.topRight,
            child: InkWell(
                onTap: (){
                  widget.right_icon_click!();
                },
                child: Icon(widget.right_icon, color: Colors.white, size: 25,)),
          ):Container(),
          widget.right_widget != null ? Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.only(top: 0),
              child: widget.right_widget!,
            )
          ):Container(),

        ],
      ),
    );
  }
}