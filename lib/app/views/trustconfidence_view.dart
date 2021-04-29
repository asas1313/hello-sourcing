import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_sourcing/app/views/styles/text_container.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'styles/colors.dart';

class TrustConfidenceView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(40),
      child: FittedBox(
        fit: BoxFit.contain,
        child: ResponsiveBuilder(
          builder: (context, sizingInformation) => Container(
            color: backgroundColor,
            width: sizingInformation.deviceScreenType == DeviceScreenType.mobile
                ? Get.width
                : Get.width / 1.5,
            height: 600,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextContainerHeading(
                  text: 'Trust & Confidence',
                ),
                TextContainerNormal(
                  text:
                      'Your local sourcing partner in Asia, from Dropshipping profile, to a mass production follow-up and deliveries.',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
