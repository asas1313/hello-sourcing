import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_sourcing/app/views/styles/colors.dart';
import 'package:hello_sourcing/app/views/styles/text_container.dart';

import 'details_form.dart';
import 'message_form.dart';

class ContactFormMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.contain,
      child: Container(
        width: Get.width,
        height: 600,
        color: backgroundColor,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextContainerHeading(
              text: 'Contact',
            ),
            MessageForm(),
            DetailsForm(mobile: true),
          ],
        ),
      ),
    );
  }
}
