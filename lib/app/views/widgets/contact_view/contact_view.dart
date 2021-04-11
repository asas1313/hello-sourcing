import 'package:flutter/material.dart';
import 'package:hello_sourcing/app/views/styles/text_container.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'contact_form_mobile.dart';
import 'contact_form_tablet.dart';

class ContactView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) =>
          sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? ContactFormMobile()
              : ContactFormTablet(),
    );
  }
}
