import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final image, categoryname;

  CustomImage({this.image, this.categoryname});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      child: Stack(children: [
        ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(8)),
          child: Image.asset(
            image,
            height: 60,
            width: 120,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          height: 60,
          width: 120,
          child: Center(
            child: Text(
              categoryname,
              style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey),
            ),
          ),
        )
      ]),
    );
  }
}
