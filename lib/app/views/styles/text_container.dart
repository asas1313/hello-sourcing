import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_sourcing/app/views/styles/colors.dart';
import 'package:hello_sourcing/app/views/styles/text_style.dart';
import 'package:responsive_builder/responsive_builder.dart';

class TextContainerHeading extends StatelessWidget {
  final String text;
  final TextStyle textStyle;

  const TextContainerHeading(
      {required this.text, this.textStyle = textStyleTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: textBackgroundColor,
      ),
      child: SelectableText(
        text,
        style: textStyle,
      ),
    );
  }
}

class TextContainerNormal extends StatelessWidget {
  final String text;
  final TextStyle textStyle;

  TextContainerNormal({
    required this.text,
    this.textStyle = textStyleNormal,
  });

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Container(
        width: Get.width,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: textBackgroundColor,
        ),
        child: SelectableText(
          text,
          style: textStyle,
        ),
      ),
    );
  }
}
