import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_sourcing/app/views/styles/colors.dart';
import 'package:hello_sourcing/app/views/styles/text_style.dart';
import 'package:hello_sourcing/app/views/widgets/product_carousel.dart';

class ProductsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Spacer(),
        Container(
          color: textBackgroundColor,
          child: Text(
            'Products',
            style: textStyleTitle,
          ),
        ),
        Container(
          color: Color.fromRGBO(0, 0, 0, 0.50),
          width: Get.width / 1.5,
          child: ProductCarousel(),
        ),
        Spacer(),
      ],
    );
  }
}
