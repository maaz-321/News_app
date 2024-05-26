import 'dart:js';

import 'package:flutter/material.dart';

Widget buildImage(String urlImage, int index) => Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      width: double.infinity,
      child: ClipRRect(
        borderRadius: const BorderRadius.all(Radius.circular(6)),
        child: Image.asset(
          urlImage,
          fit: BoxFit.cover,
          height: double.infinity,
        ),
      ),
    );
