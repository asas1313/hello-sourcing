import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_sourcing/app/views/styles/text_container.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'styles/colors.dart';

class ServicesView extends StatelessWidget {
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
                  text: 'Our process in a glimpse',
                ),
                TextContainerNormal(
                  text:
                      '⦁ Identification of your needs\n  ⦁ We look for suppliers who will match your needs and quality standards',
                ),
                TextContainerNormal(
                  text:
                      '⦁ Product research\n  ⦁ We supply samples for your approval and comments',
                ),
                TextContainerNormal(
                  text:
                      '⦁ Negotiation\n  ⦁ Thanks to our long term partnership in China, we can deliver high end products at affordable conditions',
                ),
                TextContainerNormal(
                  text:
                      '⦁ Branding\n  ⦁ Depending on your needs, we can make sure your product will be unique which will deliver a competitive advantage to you and your sales team',
                ),
                TextContainerNormal(
                  text:
                      '⦁ Production and quality follow up\n  ⦁ We provide pictures and short videos to ensure you of what is delivered to your clients',
                ),
                TextContainerNormal(
                  text:
                      '⦁ Logistics\n  ⦁ Depending on the recipient’s country, the type of product, the weight and other items, we recommend you different delivery options',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
