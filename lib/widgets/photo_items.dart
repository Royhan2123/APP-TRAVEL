import 'package:flutter/material.dart';

class PhotoItems extends StatelessWidget {
  const PhotoItems({super.key, required this.imageurl});

  final String imageurl;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 80,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(image: AssetImage(imageurl))),
    );
  }
}
