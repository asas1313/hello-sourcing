import 'package:flutter/material.dart';
import 'package:hello_sourcing/app/views/styles/text_style.dart';

class MainView extends StatelessWidget {
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
              'Home Page',
              style: textStyleTitle,
            ),
          ),
          Container(
            color: Color.fromRGBO(0, 0, 0, 0.50),
            child: Text(
              'with scrolls to display different information',
              style: textStyleNormal,
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
