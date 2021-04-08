import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_sourcing/app/views/widgets/product_carousel.dart';

import 'styles/text_container.dart';

class ProductsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Spacer(),
        TextContainerHeading(
          text: 'Products',
        ),
        Spacer(),
        TextContainerNormal(
          text:
              'In 2020, we sourced over 2,000 products from cosmetics, electronics, jewelry, personal protective equipment, and we branded over 300 items.',
        ),
        Spacer(),
        Container(
          color: Color.fromRGBO(0, 0, 0, 0.75),
          width: Get.width / 2,
          child: ProductCarousel(),
        ),
        Spacer(),
      ],
    );
  }
}
