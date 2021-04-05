import 'package:flutter/material.dart';
import 'package:hello_sourcing/app/views/styles/colors.dart';
import 'package:hello_sourcing/app/views/styles/text_style.dart';

class MainView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Column(
        children: [
          Spacer(),
          Container(
            color: textBackgroundColor,
            child: Text(
              'Hello Sourcing',
              style: textStyleTitle,
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
