import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hello_sourcing/app/views/app_bar_top.dart';
import 'package:hello_sourcing/app/views/menu.dart';
import 'package:hello_sourcing/app/views/styles/background_decoration.dart';
import 'package:hello_sourcing/app/views/styles/colors.dart';

class HomeView extends GetMaterialApp {
  final Widget child;

  HomeView({@required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: topBarColor,
        title: AppBarTop(),
      ),
      body: Container(
        decoration: backgroundDecoration,
        child: Column(
          children: [
            Menu(),
            child,
          ],
        ),
      ),
    );
  }
}
