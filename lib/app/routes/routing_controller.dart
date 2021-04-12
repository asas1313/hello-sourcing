import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RoutingController extends GetxController {
  PageController controller = PageController();

  void scrollToIndex(int index) {
    controller.animateToPage(index,
        duration: Duration(seconds: 2), curve: Curves.fastLinearToSlowEaseIn);
  }
}
