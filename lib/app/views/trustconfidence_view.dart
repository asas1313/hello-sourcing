import 'package:flutter/material.dart';
import 'package:hello_sourcing/app/views/styles/text_container.dart';

import 'styles/colors.dart';

class TrustConfidenceView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.contain,
      child: Container(
        color: backgroundColor,
        height: 800,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextContainerHeading(
              text: 'Trust & Confidence',
            ),
            TextContainerNormal(
              text:
                  'Your local sourcing partner in Asia, from Dropshipping profile, to a mass production follow-up and deliveries.',
            ),
          ],
        ),
      ),
    );
  }
}
