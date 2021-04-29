import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_sourcing/app/views/styles/colors.dart';
import 'package:hello_sourcing/app/views/styles/sylvain.dart';
import 'package:hello_sourcing/app/views/styles/text_container.dart';
import 'package:hello_sourcing/app/views/styles/text_style.dart';
import 'package:hello_sourcing/app/views/styles/wan.dart';
import 'package:responsive_builder/responsive_builder.dart';

class OurContactsView extends StatelessWidget {
  final mobile;

  OurContactsView({this.mobile = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(40),
      child: FittedBox(
        fit: BoxFit.contain,
        child: ResponsiveBuilder(
          builder: (context, sizingInformation) => Container(
            color: backgroundColor,
            height: 600,
            width: sizingInformation.deviceScreenType == DeviceScreenType.mobile
                ? Get.width
                : Get.width / 1.5,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: Get.height / 10),
                FittedBox(
                  fit: sizingInformation.deviceScreenType ==
                          DeviceScreenType.mobile
                      ? BoxFit.contain
                      : BoxFit.contain,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextContainerNormal(
                            text: 'Sylvain Balieu',
                            textStyle: textStyleNormalBold,
                          ),
                          TextContainerNormal(
                            text:
                                'Founder HelloSourcing Co,Ltd\nEmail: sylvain@hellosourcing.asia\nTel: +66(0)9 74 91 54 28',
                            textStyle: textStyleNormal,
                          ),
                          mobile ? Sylvain() : Container(width: 0, height: 0),
                        ],
                      ),
                      !mobile ? Sylvain() : Container(width: 0, height: 0),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                FittedBox(
                  fit: sizingInformation.deviceScreenType ==
                          DeviceScreenType.mobile
                      ? BoxFit.contain
                      : BoxFit.contain,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextContainerNormal(
                            text: 'Phatthanan Chunkla (Wan)',
                            textStyle: textStyleNormalBold,
                          ),
                          TextContainerNormal(
                            text:
                                'Director HelloSourcing Co,Ltd\nEmail: wan@hellosourcing.asia\nTel: +66(0)6 45 96 54 22',
                            textStyle: textStyleNormal,
                          ),
                          mobile ? Wan() : Container(width: 0, height: 0),
                        ],
                      ),
                      !mobile ? Wan() : Container(width: 0, height: 0),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
