import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_sourcing/app/views/styles/text_container.dart';
import 'package:hello_sourcing/app/views/styles/text_style.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:responsive_grid/responsive_grid.dart';

class AboutusView extends StatelessWidget {
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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextContainerHeading(
                  text: 'About us',
                ),
                TextContainerNormal(
                  text:
                      'We are established in Asia for over 20 years and have been trading goods between Asia and Europe for different sectors and for different countries.\nWe have strong and long term established partnerships in Asia and in Europe.',
                ),
                ResponsiveGridRow(children: [
                  ResponsiveGridCol(
                    lg: 4,
                    md: 6,
                    sm: 12,
                    child: Container(
                      alignment: Alignment(0, 0),
                      child: Column(
                        children: [
                          TextContainerNormal(
                            text: 'Added Value',
                            textStyle: textStyleSubtitle,
                          ),
                          TextContainerNormal(
                              text:
                                  'Service in French\nAvailability in different time zone through our partnerships'),
                        ],
                      ),
                    ),
                  ),
                  ResponsiveGridCol(
                    lg: 4,
                    md: 6,
                    sm: 12,
                    child: Container(
                      alignment: Alignment(0, 0),
                      child: Column(
                        children: [
                          TextContainerNormal(
                            text: 'Product range sourced',
                            textStyle: textStyleSubtitle,
                          ),
                          TextContainerNormal(
                              text:
                                  'Cosmetics, garden tools, accessories, toys for children, …'),
                        ],
                      ),
                    ),
                  ),
                  ResponsiveGridCol(
                    lg: 4,
                    md: 6,
                    sm: 12,
                    child: Container(
                      alignment: Alignment(0, 0),
                      child: Column(
                        children: [
                          TextContainerNormal(
                            text: 'Location',
                            textStyle: textStyleSubtitle,
                          ),
                          TextContainerNormal(
                              text:
                                  'Warehouse : Ningbo, China\nOffice : Bangkok, Thailand\nSales : Lille, France '),
                        ],
                      ),
                    ),
                  ),
                ])
              ],
            ),
          ),
        ),
      ),
    );
  }
}
