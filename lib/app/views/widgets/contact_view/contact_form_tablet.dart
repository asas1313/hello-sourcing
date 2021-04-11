import 'package:flutter/material.dart';

import 'details_form.dart';
import 'message_form.dart';

class ContactFormTablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MessageForm(),
        Spacer(),
        DetailsForm(),
      ],
    );
  }
}
