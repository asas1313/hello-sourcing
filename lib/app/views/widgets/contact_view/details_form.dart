import 'package:flutter/material.dart';
import 'package:hello_sourcing/app/views/styles/colors.dart';
import 'package:hello_sourcing/app/views/styles/sylvain.dart';
import 'package:hello_sourcing/app/views/styles/text_container.dart';
import 'package:hello_sourcing/app/views/styles/text_style.dart';
import 'package:hello_sourcing/app/views/styles/wan.dart';

class DetailsForm extends StatelessWidget {
  final mobile;

  DetailsForm({this.mobile = false});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.contain,
      child: Container(
        color: backgroundColor,
        height: 1000,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextContainerHeading(
              text: 'Contact',
            ),
            TextContainerNormal(
              text: 'Sylvain Balieu',
              textStyle: textStyleNormalBold,
            ),
            TextContainerNormal(
              text:
                  'Founder HelloSourcing Co,Ltd\nEmail: sylvain@hellosourcing.asia\nTel: +66(0)9 74 91 54 28',
              textStyle: textStyleNormal,
            ),
            !mobile ? Sylvain() : Container(width: 0, height: 0),
            TextContainerNormal(
              text: 'Phatthanan Chunkla (Wan)',
              textStyle: textStyleNormalBold,
            ),
            TextContainerNormal(
              text:
                  'Director HelloSourcing Co,Ltd\nEmail: wan@hellosourcing.asia\nTel: +66(0)6 45 96 54 22',
              textStyle: textStyleNormal,
            ),
            !mobile ? Wan() : Container(width: 0, height: 0),
          ],
        ),
      ),
    );
  }
}
