import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  final image, category;

  CustomImage({this.image, this.category});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(children: [
        Image.asset(
          image,
          height: 60,
          width: 120,
        )
      ]),
    );
  }
}
