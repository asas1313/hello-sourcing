import 'package:flutter/material.dart';
import 'package:hello_sourcing/app/views/styles/text_style.dart';

class InfographicView extends StatelessWidget {
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
              'Infogrphic',
              style: textStyleTitle,
            ),
          ),
          Container(
            color: Color.fromRGBO(0, 0, 0, 0.50),
            child: Text(
              'small infographic showing how many products he sourced so far, items sold through his actions.',
              style: textStyleNormal,
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
