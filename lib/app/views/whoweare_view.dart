import 'package:flutter/material.dart';
import 'package:hello_sourcing/app/views/styles/text_container.dart';

class WhoWeAreView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Spacer(),
        TextContainerHeading(
          text: 'Who We Are',
        ),
        Spacer(),
        TextContainerNormal(
          text:
              'We have more than 10 years of experience in sourcing products and exporting between Asia and Europe. \nOur objectives have always been to work in mutual trust and understanding with our customers.',
        ),
        Spacer(),
      ],
    );
  }
}
