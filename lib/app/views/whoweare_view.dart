import 'package:flutter/material.dart';
import 'package:hello_sourcing/app/views/styles/colors.dart';
import 'package:hello_sourcing/app/views/styles/text_style.dart';

class WhoWeAreView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Column(
        children: [
          Spacer(),
          Spacer(),
          Container(
            color: textBackgroundColor,
            child: Text(
              'Who We Are',
              style: textStyleTitle,
            ),
          ),
          Container(
            margin: EdgeInsets.all(25.0),
            color: textBackgroundColor,
            child: Text(
              'We have more than 10 years of experience in sourcing products and exporting between Asia and Europe. \nOur objectives have always been to work in mutual trust and understanding with our customers.',
              style: textStyleNormal,
              textAlign: TextAlign.center,
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
