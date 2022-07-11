
import 'dart:convert';

import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

import '../../main.dart';

class LoginController extends GetxController {

  var hasLoaderStart = false.obs;
  @override
  void onInit() {
    super.onInit();
  }

  Future<void> loadLogOutData() async {
    hasLoaderStart.value = true;
  }
}