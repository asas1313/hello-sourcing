import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hello_sourcing/app/views/home_page/menu.dart';
import 'package:hello_sourcing/app/views/home_page/navigation_drawer.dart';
import 'package:hello_sourcing/app/views/styles/background_decoration.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomePage extends GetMaterialApp {
  final Widget child;

  HomePage({required this.child});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? NavigationDrawer()
            : null,
        backgroundColor: Colors.white,
        body: Container(
          decoration: backgroundDecoration,
          child: Column(
            children: <Widget>[
              Menu(),
              Expanded(
                child: child,
              )
            ],
          ),
        ),
      ),
    );
  }
}