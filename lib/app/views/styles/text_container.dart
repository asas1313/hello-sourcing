import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hello_sourcing/app/views/styles/colors.dart';
import 'package:hello_sourcing/app/views/styles/text_style.dart';

class TextContainerHeading extends StatelessWidget {
  final String text;

  const TextContainerHeading({required this.text});

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
        style: textStyleTitle,
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
    return Container(
      width: Get.width / 2,
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
