import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_sourcing/app/views/contact_view.dart';
import 'package:hello_sourcing/app/views/home_page/home_page.dart';
import 'package:hello_sourcing/app/views/main_view.dart';
import 'package:hello_sourcing/app/views/objectives_view.dart';
import 'package:hello_sourcing/app/views/products_view.dart';
import 'package:hello_sourcing/app/views/trustconfidence_view.dart';
import 'package:hello_sourcing/app/views/whoweare_view.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: Routes.HOME,
      page: () => HomePage(
        child: MainView(),
      ),
    ),
    GetPage(
      name: Routes.TRUSTCONFIDENCE,
      page: () => HomePage(
        child: TrustConfidenceView(),
      ),
    ),
    GetPage(
      name: Routes.WHOWEARE,
      page: () => HomePage(
        child: WhoWeAreView(),
      ),
    ),
    GetPage(
      name: Routes.PRODUCTS,
      page: () => HomePage(
        child: ProductsView(),
      ),
    ),
    GetPage(
      name: Routes.OBJECTIVES,
      page: () => HomePage(
        child: ObjectivesView(),
      ),
    ),
    GetPage(
      name: Routes.CONTACT,
      page: () => HomePage(
        child: ContactView(),
      ),
    ),
  ];
}
