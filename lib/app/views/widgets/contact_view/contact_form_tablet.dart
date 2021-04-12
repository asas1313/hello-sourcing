import 'package:flutter/material.dart';
import 'package:hello_sourcing/app/views/styles/colors.dart';

import 'details_form.dart';
import 'message_form.dart';

class ContactFormTablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: Row(
        children: [
          MessageForm(),
          Spacer(),
          DetailsForm(),
        ],
      ),
    );
  }
}
