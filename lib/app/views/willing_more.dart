import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_sourcing/app/routes/app_routes.dart';
import 'package:hello_sourcing/app/routes/routing_controller.dart';
import 'package:hello_sourcing/app/views/styles/colors.dart';
import 'package:hello_sourcing/app/views/styles/text_container.dart';
import 'package:hello_sourcing/app/views/styles/text_style.dart';
import 'package:responsive_builder/responsive_builder.dart';

class WillingMoreView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<RoutingController>();
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Container(
        margin: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? EdgeInsets.all(0)
            : EdgeInsets.all(40),
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            width: Get.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextContainerHeading(
                  text: 'Willing to know more ?',
                  textStyle: textStyleTitleBold,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: actionButtonColor),
                  onPressed: () {
                    controller.scrollTo(Routes.contactUs);
                  },
                  child: Text(
                    'Message us',
                    style: textStyleNormalSmaller,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
