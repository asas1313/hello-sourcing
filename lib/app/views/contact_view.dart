import 'package:flutter/material.dart';
import 'package:hello_sourcing/app/views/styles/text_style.dart';

class ContactView extends StatelessWidget {
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
              'Contact',
              style: textStyleTitle,
            ),
          ),
          Container(
            color: Color.fromRGBO(0, 0, 0, 0.50),
            child: Text(
              'email / phone / picture / Address',
              style: textStyleNormal,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: Image.asset(
              'img/istockphoto-1176263278-170667a.jpg',
              fit: BoxFit.fitWidth,
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
