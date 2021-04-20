import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_sourcing/app/views/styles/colors.dart';
import 'package:hello_sourcing/app/views/styles/text_container.dart';

import 'details_form.dart';
import 'message_form.dart';

class ContactFormTablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.contain,
      child: Container(
        width: Get.width / 1.5,
        height: 600,
        color: backgroundColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            TextContainerHeading(
              text: 'Contact',
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MessageForm(),
                DetailsForm(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
