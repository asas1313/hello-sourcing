import 'package:flutter/material.dart';

import 'styles/text_style.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            color: Color.fromRGBO(0, 0, 0, 0.25),
            padding: const EdgeInsets.all(32),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      child: Image.asset('img/invert-logo.png'),
                    )
                  ],
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FlatButton(
                      onPressed: () {},
                      child: Text(
                        'ABOUT',
                        style: textStyleMenu,
                      ),
                    ),
                    SizedBox(width: 27),
                    FlatButton(
                      onPressed: () {},
                      child: Text(
                        'SERVICE',
                        style: textStyleMenu,
                      ),
                    ),
                    SizedBox(width: 27),
                    FlatButton(
                      onPressed: () {},
                      child: Text(
                        'INFOGRAPHIC',
                        style: textStyleMenu,
                      ),
                    ),
                    SizedBox(width: 27),
                    FlatButton(
                      onPressed: () {},
                      child: Text(
                        'CONTACT',
                        style: textStyleMenu,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
