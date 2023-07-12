import 'package:flutter/material.dart';

class InterestItem extends StatelessWidget {
  const InterestItem({super.key, required this.imageUrl, required this.name});

  final String imageUrl;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Container(
            width: 15,
            height: 15,
            margin: const EdgeInsets.only(right: 6),
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(imageUrl))),
          ),
          Text(
            name,
            style: const TextStyle(
              fontFamily: "Poppins",
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
