import 'package:flutter/material.dart';
import 'package:hello_sourcing/app/views/styles/text_style.dart';

class ServiceView extends StatelessWidget {
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
              'Service',
              style: textStyleTitle,
            ),
          ),
          Container(
            color: Color.fromRGBO(0, 0, 0, 0.50),
            child: Text(
              'research and development of products for e sellers.',
              style: textStyleNormal,
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
