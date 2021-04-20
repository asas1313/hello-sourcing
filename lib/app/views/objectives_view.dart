import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_sourcing/app/views/styles/text_container.dart';

import 'styles/colors.dart';

class ObjectivesView extends StatelessWidget {
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
              text: 'Objectives',
            ),
            TextContainerNormal(
              text:
                  'We are sourcing the best suppliers in Asia to fit with your product requirements.\nWe help you to source the best quality with the best suppliers, and we offer support to develop your own brand.',
            ),
            TextContainerNormal(
              text:
                  'Our main sourcing is Thailand, but we have also a strong connection in China and we organize the shipment door to door to simplify all the tasks for you.',
            ),
          ],
        ),
      ),
    );
  }
}
