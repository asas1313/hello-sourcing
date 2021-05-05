import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_sourcing/app/routes/app_routes.dart';
import 'package:hello_sourcing/app/routes/routing_controller.dart';
import 'package:hello_sourcing/app/views/styles/logo.dart';
import 'package:hello_sourcing/app/views/styles/text_style.dart';

class NavigationDrawer extends GetWidget<RoutingController> {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            color: Color.fromRGBO(0, 0, 0, 0.25),
            padding: const EdgeInsets.all(32),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextButton(
                  onPressed: () {
                    controller.scrollToIndex(Routes.HOME);
                  },
                  child: Logo(),
                ),
                SizedBox(height: 27),
                TextButton(
                  onPressed: () {
                    controller.scrollToIndex(Routes.ABOUTUS);
                  },
                  child: Text(
                    'About us',
                    style: textStyleMenu,
                  ),
                ),
                SizedBox(height: 27),
                TextButton(
                  onPressed: () {
                    controller.scrollToIndex(Routes.PRODUCTS);
                  },
                  child: Text(
                    'Products',
                    style: textStyleMenu,
                  ),
                ),
                SizedBox(height: 27),
                TextButton(
                  onPressed: () {
                    controller.scrollToIndex(Routes.SERVICES);
                  },
                  child: Text(
                    'Services',
                    style: textStyleMenu,
                  ),
                ),
                SizedBox(height: 27),
                TextButton(
                  onPressed: () {
                    controller.scrollToIndex(Routes.REVIEWS);
                  },
                  child: Text(
                    'Reviews',
                    style: textStyleMenu,
                  ),
                ),
                SizedBox(height: 27),
                TextButton(
                  onPressed: () {
                    controller.scrollToIndex(Routes.CONTACTUS);
                  },
                  child: Text(
                    'Message Us',
                    style: textStyleMenu,
                  ),
                ),
                SizedBox(height: 27),
                TextButton(
                  onPressed: () {
                    controller.scrollToIndex(Routes.OURTEAM);
                  },
                  child: Text(
                    'Our Team',
                    style: textStyleMenu,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
