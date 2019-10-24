import 'package:flutter/material.dart';

class NumberedText extends StatelessWidget {
  NumberedText({this.number, this.text})
      : assert(number != null),
        assert(text != null);

  final int number;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          this.number.toString(),
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(
          this.text,
        )
      ],
    );
  }
}
