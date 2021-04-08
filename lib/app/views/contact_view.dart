import 'package:flutter/material.dart';
import 'package:hello_sourcing/app/views/styles/text_container.dart';

class ContactView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Spacer(),
        TextContainerHeading(
          text: 'Contact',
        ),
        Spacer(),
        TextContainerNormal(
          text: 'email / phone / picture / Address',
        ),
        Container(
          padding: const EdgeInsets.all(8),
          child: Image.asset(
            'assets/img/istockphoto-1176263278-170667a.jpg',
            fit: BoxFit.fitWidth,
          ),
        ),
        Spacer(),
      ],
    );
  }
}
