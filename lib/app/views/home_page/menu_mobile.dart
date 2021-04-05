import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_sourcing/app/routes/app_pages.dart';

class MenuMobile extends StatelessWidget {
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                    ),
                    TextButton(
                      onPressed: () {
                        Get.toNamed(Routes.HOME);
                      },
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset('assets/img/invert-logo.png'),
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
