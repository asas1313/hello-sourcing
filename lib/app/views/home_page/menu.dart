import 'package:flutter/material.dart';
import 'package:hello_sourcing/app/views/home_page/menu_mobile.dart';
import 'package:hello_sourcing/app/views/home_page/menu_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MenuMobile(),
      tablet: MenuTablet(),
    );
  }
}
