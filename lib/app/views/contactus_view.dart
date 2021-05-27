import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_sourcing/app/views/styles/sylvain.dart';
import 'package:hello_sourcing/app/views/styles/text_container.dart';
import 'package:hello_sourcing/app/views/styles/text_style.dart';
import 'package:hello_sourcing/app/views/styles/wan.dart';
import 'package:hello_sourcing/app/views/widgets/contactus_form.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ContactUsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Container(
        margin: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? EdgeInsets.all(0)
            : EdgeInsets.all(40),
        child: SingleChildScrollView(
          child: Container(
            width: Get.width,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                sizingInformation.deviceScreenType == DeviceScreenType.mobile
                    ? ContactUsForm()
                    : Container(width: 0, height: 0),
                Row(
                  children: [
                    sizingInformation.deviceScreenType !=
                            DeviceScreenType.mobile
                        ? ContactUsForm()
                        : Container(width: 0, height: 0),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(height: Get.height / 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                TextContainerNormal(
                                  text: 'Sylvain Balieu',
                                  textStyle: textStyleNormalSmallerBold,
                                  widthModifier:
                                      sizingInformation.deviceScreenType ==
                                              DeviceScreenType.mobile
                                          ? 0.95
                                          : 0.35,
                                ),
                                TextContainerNormal(
                                  text:
                                      'Founder HelloSourcing Co,Ltd\nEmail: sylvain@hellosourcing.asia\nTel: +66(0)9 74 91 54 28',
                                  textStyle: textStyleNormalSmaller,
                                  widthModifier:
                                      sizingInformation.deviceScreenType ==
                                              DeviceScreenType.mobile
                                          ? 0.95
                                          : 0.35,
                                ),
                                sizingInformation.deviceScreenType ==
                                        DeviceScreenType.mobile
                                    ? Sylvain()
                                    : Container(width: 0, height: 0),
                              ],
                            ),
                            sizingInformation.deviceScreenType !=
                                    DeviceScreenType.mobile
                                ? Sylvain()
                                : Container(width: 0, height: 0),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                TextContainerNormal(
                                  text: 'Phatthanan Chunkla (Wan)',
                                  textStyle: textStyleNormalSmallerBold,
                                  widthModifier:
                                      sizingInformation.deviceScreenType ==
                                              DeviceScreenType.mobile
                                          ? 0.95
                                          : 0.35,
                                ),
                                TextContainerNormal(
                                  text:
                                      'Director HelloSourcing Co,Ltd\nEmail: wan@hellosourcing.asia\nTel: +66(0)6 45 96 54 22',
                                  textStyle: textStyleNormalSmaller,
                                  widthModifier:
                                      sizingInformation.deviceScreenType ==
                                              DeviceScreenType.mobile
                                          ? 0.95
                                          : 0.35,
                                ),
                                sizingInformation.deviceScreenType ==
                                        DeviceScreenType.mobile
                                    ? Wan()
                                    : Container(width: 0, height: 0),
                              ],
                            ),
                            sizingInformation.deviceScreenType !=
                                    DeviceScreenType.mobile
                                ? Wan()
                                : Container(width: 0, height: 0),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
