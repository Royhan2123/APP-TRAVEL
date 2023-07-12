import 'package:flutter/material.dart';
import 'package:project/shared/theme.dart';

class SeatItems extends StatelessWidget {
  const SeatItems({super.key, required this.status});

  final int status;
  @override
  Widget build(BuildContext context) {
    backgroundColor() {
      switch (status) {
        case 0:
          return kAvalaibleColor;
        case 1:
          return kPrimary;
        case 2:
          return kUnavailableColor;
        default:
          return kUnavailableColor;
      }
    }

    borderColor() {
      switch (status) {
        case 0:
          return kPrimary;
        case 1:
          return kPrimary;
        case 2:
          return kUnavailableColor;
        default:
          return kUnavailableColor;
      }
    }

    child() {
      switch (status) {
        case 0:
          return const SizedBox();
        case 1:
          return const Center(
            child: Text(
              'You',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.bold),
            ),
          );
        case 2:
          return const SizedBox();
        default:
          return const SizedBox();
      }
    }

    return Container(
        width: 48,
        height: 48,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: backgroundColor(),
            border: Border.all(width: 2, color: borderColor())),
        child: child());
  }
}
