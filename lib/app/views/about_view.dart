import 'package:flutter/material.dart';
import 'package:hello_sourcing/app/views/styles/text_style.dart';

class AboutView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Column(
        children: [
          Spacer(),
          Spacer(),
          Container(
            color: Color.fromRGBO(0, 0, 0, 0.50),
            child: Text(
              'About',
              style: textStyleTitle,
            ),
          ),
          Container(
            color: Color.fromRGBO(0, 0, 0, 0.50),
            child: Text(
              'text to be provided. So far it\'s a one man company.',
              style: textStyleNormal,
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
