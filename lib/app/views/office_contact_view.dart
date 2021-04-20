import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'styles/colors.dart';
import 'styles/text_container.dart';
import 'styles/text_style.dart';

class OfficeContactView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.contain,
      child: Container(
        color: backgroundColor,
        width: Get.width / 1.5,
        height: 600,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextContainerHeading(
              text: 'Office',
            ),
            TextContainerNormal(
              text:
                  'HelloSourcing Co.,Ltd\n88/204 The Plant Prestige, Mu5,\nBaan Mai, Pakkret, 11110 Nonthaburi\nThailand',
              textStyle: textStyleNormal,
            ),
          ],
        ),
      ),
    );
  }
}
