import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'styles/colors.dart';
import 'styles/text_container.dart';

class ReviewsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Container(
        margin: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? EdgeInsets.all(0)
            : EdgeInsets.all(40),
        child: FittedBox(
          fit: BoxFit.contain,
          child: Container(
            color: backgroundColor,
            width: Get.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextContainerHeading(
                  text: 'Reviews',
                ),
                TextContainerNormal(
                  text:
                      '“Thanks to Hello Sourcing, I’ve been able to source items for garden at a competitive price and with his partners, we were able to reduce our after sales service issues by 36% the first month” – Guillaume R. selling garden tools',
                ),
                TextContainerNormal(
                  text:
                      '“I tried several agents in Asia claiming to perform before contacting Sylvain. I’ve been impressed by his way to manage issues and the efficiency of his sourcing network. I highly recommend using his services” – Fabrice E. selling toys',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
