import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_sourcing/app/views/main_view.dart';
import 'package:hello_sourcing/app/views/objectives_view.dart';
import 'package:hello_sourcing/app/views/office_contact_view.dart';
import 'package:hello_sourcing/app/views/products_view.dart';
import 'package:hello_sourcing/app/views/trustconfidence_view.dart';
import 'package:hello_sourcing/app/views/whoweare_view.dart';
import 'package:hello_sourcing/app/views/our_contacts_view.dart';
import 'package:hello_sourcing/app/views/contactus_view.dart';

class RoutingController extends GetxController {
  PageController controller = PageController();

  final pages = [
    MainView(),
    TrustConfidenceView(),
    WhoWeAreView(),
    ProductsView(),
    ObjectivesView(),
    OfficeContactView(),
    ContactUsView(),
    OurContactsView()
  ];

  void scrollToIndex(int index) {
    controller.animateToPage(index,
        duration: Duration(seconds: 2), curve: Curves.fastLinearToSlowEaseIn);
  }
}
