import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hello_sourcing/app/routes/routing_controller.dart';
import 'package:hello_sourcing/app/views/home_page/menu.dart';
import 'package:hello_sourcing/app/views/home_page/navigation_drawer.dart';
import 'package:hello_sourcing/app/views/styles/background_decoration.dart';
import 'package:hello_sourcing/app/views/styles/colors.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomePage extends GetWidget<RoutingController> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? NavigationDrawer()
            : null,
        backgroundColor: backgroundColor,
        body: Container(
          decoration: backgroundDecoration,
          child: Column(
            children: <Widget>[
              Menu(),
              Expanded(
                child: PageView(
                  scrollDirection: Axis.vertical,
                  pageSnapping: false,
                  controller: controller.controller,
                  children: List.generate(controller.pages.length, (index) {
                    return Container(
                      decoration: index == 0
                          ? null
                          : BoxDecoration(color: backgroundColor),
                      child: controller.pages[index],
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
