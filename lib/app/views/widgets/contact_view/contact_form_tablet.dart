import 'package:flutter/material.dart';
import 'package:hello_sourcing/app/views/styles/colors.dart';

import 'details_form.dart';
import 'message_form.dart';

class ContactFormTablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.contain,
      child: Container(
        height: 600,
        color: backgroundColor,
        child: Row(
          children: [
            MessageForm(),
            DetailsForm(),
          ],
        ),
      ),
    );
  }
}
