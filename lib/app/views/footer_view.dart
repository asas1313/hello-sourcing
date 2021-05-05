import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_sourcing/app/routes/app_routes.dart';
import 'package:hello_sourcing/app/routes/routing_controller.dart';
import 'package:hello_sourcing/app/views/styles/colors.dart';
import 'package:hello_sourcing/app/views/styles/text_style.dart';
import 'package:hello_sourcing/app/views/terms_view.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

class FooterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<RoutingController>();
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Container(
        margin: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? EdgeInsets.all(0)
            : EdgeInsets.all(40),
        child: FittedBox(
          alignment: Alignment.topCenter,
          fit: BoxFit.contain,
          child: Container(
            color: backgroundColor,
            width: Get.width / 1.5,
            height: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: () {
                    controller.scrollToIndex(Routes.CONTACTUS);
                  },
                  child: Text(
                    'Contact',
                    style: textStyleNormalBoldUnderline,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    _launchURL('https://www.linkedin.com/in/sylvain-balieu/');
                  },
                  child: Text(
                    'LinkedIn',
                    style: textStyleNormalBoldUnderline,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Get.to(TermsView());
                  },
                  child: Text(
                    'Terms & Confidentiality',
                    style: textStyleNormalBoldUnderline,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _launchURL(_url) async => await canLaunch(_url)
      ? await launch(_url)
      : throw 'Could not launch $_url';
}
