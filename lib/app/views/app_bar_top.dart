import 'package:flutter/material.dart';

import 'styles/text_style.dart';

class AppBarTop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.phone,
                color: Color.fromRGBO(145, 145, 145, 1.0),
                size: 11,
              ),
              Text(
                '+370 XXX XXXXX',
                style: textStyleTop,
              ),
              SizedBox(width: 20),
              Icon(
                Icons.mail,
                color: Color.fromRGBO(145, 145, 145, 1.0),
                size: 11,
              ),
              Text(
                'XXX@XXX.XX',
                style: textStyleTop,
              ),
              SizedBox(width: 20),
              Icon(
                Icons.map,
                color: Color.fromRGBO(145, 145, 145, 1.0),
                size: 11,
              ),
              Text(
                '123 SOMESTREET, CITY, CO',
                style: textStyleTop,
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FlatButton(
                onPressed: () {},
                child: Text(
                  'LOGIN',
                  style: textStyleTop,
                ),
              ),
              Text(' | '),
              FlatButton(
                onPressed: () {},
                child: Text(
                  'SIGN UP',
                  style: textStyleTop,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
