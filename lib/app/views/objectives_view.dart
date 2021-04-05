import 'package:flutter/material.dart';
import 'package:hello_sourcing/app/views/styles/colors.dart';
import 'package:hello_sourcing/app/views/styles/text_style.dart';

class ObjectivesView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Column(
        children: [
          Spacer(),
          Spacer(),
          Container(
            color: textBackgroundColor,
            child: Text(
              'Objectives',
              style: textStyleTitle,
            ),
          ),
          Container(
            margin: EdgeInsets.all(25.0),
            color: textBackgroundColor,
            child: Text(
              'We are sourcing the best suppliers in Asia to fit with your product requirements.\nWe help you to source the best quality with the best suppliers, and we offer support to develop your own brand.',
              style: textStyleNormal,
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            margin: EdgeInsets.all(25.0),
            color: Color.fromRGBO(0, 0, 0, 0.50),
            child: Text(
              'Our main sourcing is Thailand, but we have also a strong connection in China and we organize the shipment door to door to simplify all the tasks for you.',
              style: textStyleNormal,
              textAlign: TextAlign.center,
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
