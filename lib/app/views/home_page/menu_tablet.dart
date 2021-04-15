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
                  width: Get.width / 2,
                  child: Wrap(
                    alignment: WrapAlignment.end,
                    direction: Axis.horizontal,
                    children: [
                      TextButton(
                        onPressed: () {
                          controller.scrollToIndex(Routes.TRUSTCONFIDENCE);
                        },
                        child: Text(
                          'Trust & Confidence',
                          style: textStyleMenu,
                        ),
                      ),
                      SizedBox(width: 27),
                      TextButton(
                        onPressed: () {
                          controller.scrollToIndex(Routes.WHOWEARE);
                        },
                        child: Text(
                          'Who are we?',
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
                          controller.scrollToIndex(Routes.OBJECTIVES);
                        },
                        child: Text(
                          'Objectives',
                          style: textStyleMenu,
                        ),
                      ),
                      SizedBox(width: 27),
                      TextButton(
                        onPressed: () {
                          controller.scrollToIndex(Routes.OFFICE);
                        },
                        child: Text(
                          'Office',
                          style: textStyleMenu,
                        ),
                      ),
                      SizedBox(width: 27),
                      TextButton(
                        onPressed: () {
                          controller.scrollToIndex(Routes.CONTACT);
                        },
                        child: Text(
                          'Contact',
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
