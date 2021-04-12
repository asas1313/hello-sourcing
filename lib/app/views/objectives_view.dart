import 'package:flutter/material.dart';
import 'package:hello_sourcing/app/views/styles/text_container.dart';

import 'styles/colors.dart';

class ObjectivesView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: Column(
        children: [
          Spacer(),
          Spacer(),
          TextContainerHeading(
            text: 'Objectives',
          ),
          Spacer(),
          TextContainerNormal(
            text:
                'We are sourcing the best suppliers in Asia to fit with your product requirements.\nWe help you to source the best quality with the best suppliers, and we offer support to develop your own brand.',
          ),
          Spacer(),
          TextContainerNormal(
            text:
                'Our main sourcing is Thailand, but we have also a strong connection in China and we organize the shipment door to door to simplify all the tasks for you.',
          ),
          Spacer(),
        ],
      ),
    );
  }
}
