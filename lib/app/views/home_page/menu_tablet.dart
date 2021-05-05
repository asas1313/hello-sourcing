import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_sourcing/app/routes/app_routes.dart';
import 'package:hello_sourcing/app/routes/routing_controller.dart';
import 'package:hello_sourcing/app/views/styles/logo.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../styles/text_style.dart';

class MenuTablet extends GetWidget<RoutingController> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Container(
        color: Color.fromRGBO(0, 0, 0, 0.25),
        padding: const EdgeInsets.all(8),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextButton(
              onPressed: () {
                controller.scrollToIndex(Routes.HOME);
              },
              child: Logo(),
            ),
            Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  width: Get.width / 1.5,
                  child: Wrap(
                    alignment: WrapAlignment.end,
                    direction: Axis.horizontal,
                    children: [
                      TextButton(
                        onPressed: () {
                          controller.scrollToIndex(Routes.ABOUTUS);
                        },
                        child: Text(
                          'About us',
                          style: textStyleMenu,
                        ),
                      ),
                      SizedBox(width: 27),
                      TextButton(
                        onPressed: () {
                          controller.scrollToIndex(Routes.PRODUCTS);
                        },
                        child: Text(
                          'Products',
                          style: textStyleMenu,
                        ),
                      ),
                      SizedBox(width: 27),
                      TextButton(
                        onPressed: () {
                          controller.scrollToIndex(Routes.SERVICES);
                        },
                        child: Text(
                          'Services',
                          style: textStyleMenu,
                        ),
                      ),
                      SizedBox(width: 27),
                      TextButton(
                        onPressed: () {
                          controller.scrollToIndex(Routes.REVIEWS);
                        },
                        child: Text(
                          'Reviews',
                          style: textStyleMenu,
                        ),
                      ),
                      SizedBox(width: 27),
                      TextButton(
                        onPressed: () {
                          controller.scrollToIndex(Routes.CONTACTUS);
                        },
                        child: Text(
                          'Message Us',
                          style: textStyleMenu,
                        ),
                      ),
                      SizedBox(width: 27),
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
          ],
        ),
      ),
    );
  }
}
