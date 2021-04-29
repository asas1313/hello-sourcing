import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_sourcing/app/views/widgets/product_carousel.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'styles/colors.dart';
import 'styles/text_container.dart';

class ProductsView extends StatelessWidget {
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
                  text: 'Products',
                ),
                TextContainerNormal(
                  text:
                      'In 2020, we sourced over 2,000 products from cosmetics, electronics, jewelry, personal protective equipment, and we branded over 300 items.',
                ),
                Container(
                  color: Color.fromRGBO(0, 0, 0, 0.75),
                  width: Get.width / 2.3,
                  child: ProductCarousel(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
