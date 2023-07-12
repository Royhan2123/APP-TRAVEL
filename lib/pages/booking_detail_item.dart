import 'package:flutter/material.dart';

class BookingDetailItem extends StatelessWidget {
  const BookingDetailItem(
      {super.key,
      required this.title,
      required this.valueText,
      required this.valueColor});

  final String title;
  final String valueText;
  final Color valueColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      child: Row(
        children: [
          Container(
            width: 15,
            height: 15,
            margin: const EdgeInsets.only(right: 5),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/icon_check.png"))),
          ),
          Text(
            title,
            style: const TextStyle(
              fontFamily: "Poppins",
              color: Colors.black,
            ),
          ),
          const Spacer(),
          Text(
            valueText,
            style: TextStyle(
              fontFamily: "Poppins",
              fontWeight: FontWeight.bold,
              color: valueColor,
            ),
          ),
        ],
      ),
    );
  }
}
