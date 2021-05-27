import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_sourcing/app/views/footer_view.dart';
import 'package:hello_sourcing/app/views/main_view.dart';
import 'package:hello_sourcing/app/views/services_view.dart';
import 'package:hello_sourcing/app/views/reviews_view.dart';
import 'package:hello_sourcing/app/views/products_view.dart';
import 'package:hello_sourcing/app/views/aboutus_view.dart';
import 'package:hello_sourcing/app/views/contactus_view.dart';
import 'package:hello_sourcing/app/views/willing_more.dart';

class RoutingController extends GetxController {
  PageController controller = PageController();

  final pages = [
    MainView(),
    AboutusView(),
    ProductsView(),
    ServicesView(),
    WillingMoreView(),
    ReviewsView(),
    ContactUsView(),
    FooterView(),
  ];

  void scrollTo(GlobalKey dataKey) {
    Scrollable.ensureVisible(dataKey.currentContext!);
  }
}
