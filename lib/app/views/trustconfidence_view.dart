import 'package:flutter/material.dart';
import 'package:hello_sourcing/app/views/styles/colors.dart';
import 'package:hello_sourcing/app/views/styles/text_style.dart';

class TrustConfidenceView extends StatelessWidget {
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
              'Trust & Confidence',
              style: textStyleTitle,
            ),
          ),
          Container(
            margin: EdgeInsets.all(25.0),
            color: textBackgroundColor,
            child: Text(
              'Your local sourcing partner in Asia, from Dropshipping profile, to a mass production follow-up and deliveries.',
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
