import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_sourcing/app/routes/app_pages.dart';

import '../styles/text_style.dart';

class MenuTablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            color: Color.fromRGBO(0, 0, 0, 0.25),
            padding: const EdgeInsets.all(32),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextButton(
                      onPressed: () {
                        Get.toNamed(Routes.HOME);
                      },
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset('assets/img/invert-logo.png'),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {
                        Get.toNamed(Routes.TRUSTCONFIDENCE);
                      },
                      child: Text(
                        'Trust & Confidence',
                        style: textStyleMenu,
                      ),
                    ),
                    SizedBox(width: 27),
                    TextButton(
                      onPressed: () {
                        Get.toNamed(Routes.WHOWEARE);
                      },
                      child: Text(
                        'Who are we?',
                        style: textStyleMenu,
                      ),
                    ),
                    SizedBox(width: 27),
                    TextButton(
                      onPressed: () {
                        Get.toNamed(Routes.PRODUCTS);
                      },
                      child: Text(
                        'Products',
                        style: textStyleMenu,
                      ),
                    ),
                    SizedBox(width: 27),
                    TextButton(
                      onPressed: () {
                        Get.toNamed(Routes.OBJECTIVES);
                      },
                      child: Text(
                        'Objectives',
                        style: textStyleMenu,
                      ),
                    ),
                    SizedBox(width: 27),
                    TextButton(
                      onPressed: () {
                        Get.toNamed(Routes.CONTACT);
                      },
                      child: Text(
                        'Contact',
                        style: textStyleMenu,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
