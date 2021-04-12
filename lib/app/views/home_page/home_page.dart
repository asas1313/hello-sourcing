import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hello_sourcing/app/routes/routing_controller.dart';
import 'package:hello_sourcing/app/views/home_page/menu.dart';
import 'package:hello_sourcing/app/views/home_page/navigation_drawer.dart';
import 'package:hello_sourcing/app/views/main_view.dart';
import 'package:hello_sourcing/app/views/objectives_view.dart';
import 'package:hello_sourcing/app/views/products_view.dart';
import 'package:hello_sourcing/app/views/styles/background_decoration.dart';
import 'package:hello_sourcing/app/views/styles/colors.dart';
import 'package:hello_sourcing/app/views/trustconfidence_view.dart';
import 'package:hello_sourcing/app/views/whoweare_view.dart';
import 'package:hello_sourcing/app/views/widgets/contact_view/contact_view.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomePage extends GetWidget<RoutingController> {
  final pages = [
    MainView(),
    TrustConfidenceView(),
    WhoWeAreView(),
    ProductsView(),
    ObjectivesView(),
    ContactView(),
  ];

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? NavigationDrawer()
            : null,
        backgroundColor: backgroundColor,
        body: Container(
          decoration: backgroundDecoration,
          child: Column(
            children: <Widget>[
              Menu(),
              Expanded(
                child: PageView(
                    scrollDirection: Axis.vertical,
                    pageSnapping: false,
                    controller: controller.controller,
                    children: List.generate(pages.length, (index) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: index == 0
                            ? null
                            : BoxDecoration(color: backgroundColor),
                        child: pages[index],
                      );
                    })),
              ),
            ],
          ),
        ),
      ),
    );
    //   return Scaffold(
    //     body: SafeArea(
    //         child: Column(
    //       mainAxisSize: MainAxisSize.max,
    //       children: <Widget>[
    //         Row(
    //           children: <Widget>[
    //             TextButton(
    //               onPressed: () {
    //                 _scrollToIndex(0);
    //               },
    //               child: Logo(),
    //             ),
    //             Spacer(),
    //             Row(
    //               children: List.generate(5, (index) {
    //                 return TextButton(
    //                   onPressed: () {
    //                     _scrollToIndex(index);
    //                   },
    //                   child: Container(
    //                     margin: EdgeInsets.all(8),
    //                     child: Text(
    //                       list[index + 1],
    //                       style: textStyleTop,
    //                     ),
    //                   ),
    //                 );
    //               }),
    //             )
    //           ],
    //         ),
    //         Expanded(
    //           child:
    //         ),
    //       ],
    //     )),
    //   );
    // }
  }
}
