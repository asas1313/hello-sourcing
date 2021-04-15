import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hello_sourcing/app/views/home_page/menu.dart';
import 'package:hello_sourcing/app/views/home_page/navigation_drawer.dart';
import 'package:hello_sourcing/app/views/styles/background_decoration.dart';
import 'package:hello_sourcing/app/views/styles/colors.dart';
import 'package:responsive_builder/responsive_builder.dart';

class OtherPage extends GetMaterialApp {
  final Widget child;

  OtherPage({required this.child});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? NavigationDrawer()
            : null,
        backgroundColor: backgroundColor,
        body: Container(
          child: Column(
            children: <Widget>[
              Container(
                height: Get.height / 2,
                decoration: backgroundDecoration,
                child: Menu(),
              ),
              Flexible(
                fit: FlexFit.loose,
                child: child,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
