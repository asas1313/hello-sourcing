import 'package:flutter/material.dart';
import 'package:hello_sourcing/app/views/styles/text_container.dart';

class MainView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        TextContainerHeading(
          text: 'Hello Sourcing Co, Ltd',
        ),
        Spacer(),
      ],
    );
  }
}
