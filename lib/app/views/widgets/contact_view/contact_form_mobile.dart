import 'package:flutter/material.dart';

import 'details_form.dart';
import 'message_form.dart';

class ContactFormMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MessageForm(),
        Spacer(),
        DetailsForm(),
      ],
    );
  }
}
