import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_sourcing/app/views/styles/text_container.dart';

import 'styles/colors.dart';

class WhoWeAreView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.contain,
      child: Container(
        color: backgroundColor,
        width: Get.width / 1.5,
        height: 600,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextContainerHeading(
              text: 'Who We Are',
            ),
            TextContainerNormal(
              text:
                  'We have more than 10 years of experience in sourcing products and exporting between Asia and Europe. \nOur objectives have always been to work in mutual trust and understanding with our customers.',
            ),
          ],
        ),
      ),
    );
  }
}
