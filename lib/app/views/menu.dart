import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_sourcing/app/routes/app_pages.dart';

import 'styles/text_style.dart';

class Menu extends StatelessWidget {
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
                    FlatButton(
                      onPressed: () {
                        Get.toNamed(Routes.HOME);
                      },
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset('img/invert-logo.png'),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FlatButton(
                      onPressed: () {
                        Get.toNamed(Routes.ABOUT);
                      },
                      child: Text(
                        'ABOUT',
                        style: textStyleMenu,
                      ),
                    ),
                    SizedBox(width: 27),
                    FlatButton(
                      onPressed: () {
                        Get.toNamed(Routes.SERVICE);
                      },
                      child: Text(
                        'SERVICE',
                        style: textStyleMenu,
                      ),
                    ),
                    SizedBox(width: 27),
                    FlatButton(
                      onPressed: () {
                        Get.toNamed(Routes.INFOGRAPHIC);
                      },
                      child: Text(
                        'INFOGRAPHIC',
                        style: textStyleMenu,
                      ),
                    ),
                    SizedBox(width: 27),
                    FlatButton(
                      onPressed: () {
                        Get.toNamed(Routes.CONTACT);
                      },
                      child: Text(
                        'CONTACT',
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
