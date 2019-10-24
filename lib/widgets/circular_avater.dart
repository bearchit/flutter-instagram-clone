import 'package:flutter/material.dart';

class CircularAvatar extends StatelessWidget {
  CircularAvatar(
    ImageProvider image, {
    this.width = 100.0,
    this.height = 100.0,
    this.color = const Color.fromRGBO(235, 236, 237, 1),
  })  : assert(image != null),
        this.image = image;

  final double width;
  final double height;
  final ImageProvider image;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.width,
      height: this.height,
      decoration: BoxDecoration(
        color: Colors.grey,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: this.image,
        ),
        borderRadius: BorderRadius.all(Radius.circular(50.0)),
        border: Border.all(
          color: this.color,
          width: 1.0,
        ),
      ),
    );
  }
}
