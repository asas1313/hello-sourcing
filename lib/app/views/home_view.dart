import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hello_sourcing/app/views/app_bar_top.dart';
import 'package:hello_sourcing/app/views/menu.dart';
import 'package:hello_sourcing/app/views/styles/background_decoration.dart';

class HomeView extends GetMaterialApp {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(66, 71, 76, 1.0),
        title: AppBarTop(),
      ),
      body: Container(
        decoration: backgroundDecoration,
        child: Column(
          children: [
            Menu(),
          ],
        ),
      ),
    );
  }
}
