import 'package:flutter/material.dart';
import 'package:hello_sourcing/app/views/styles/text_container.dart';

import 'styles/colors.dart';

class TrustConfidenceView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: Column(
        children: [
          Spacer(),
          Spacer(),
          TextContainerHeading(
            text: 'Trust & Confidence',
          ),
          Spacer(),
          TextContainerNormal(
            text:
                'Your local sourcing partner in Asia, from Dropshipping profile, to a mass production follow-up and deliveries.',
          ),
          Spacer(),
        ],
      ),
    );
  }
}
