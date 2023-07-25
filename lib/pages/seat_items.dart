import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/cubit/seat_cubit.dart';
import 'package:project/shared/theme.dart';

class SeatItems extends StatelessWidget {
  const SeatItems({
    super.key,
    required this.id,
    this.isAvalaible = true,
  });
  final String id;
  final bool isAvalaible;
  @override
  Widget build(BuildContext context) {
    bool isSelected = context.watch<SeatCubit>().isSelected(id);
    backgroundColor() {
      if (!isAvalaible) {
        return kUnavailableColor;
      } else {
        if (isSelected) {
          return kPrimary;
        } else {
          return kAvalaibleColor;
        }
      }
    }

    borderColor() {
      if (!isAvalaible) {
        return kUnavailableColor;
      } else {
        return kPrimary;
      }
    }

    child() {
      if (isSelected) {
        return const Center(
          child: Text(
            'You',
            style: TextStyle(
                color: Colors.white,
                fontFamily: "Poppins",
                fontWeight: FontWeight.bold),
          ),
        );
      } else {
        return const SizedBox();
      }
    }

    return InkWell(
      onTap: () {
        if (isAvalaible) {
          context.read<SeatCubit>().selected(id);
        }
      },
      child: Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: backgroundColor(),
              border: Border.all(width: 2, color: borderColor())),
          child: child()),
    );
  }
}
