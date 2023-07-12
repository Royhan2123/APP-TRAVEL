import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/cubit/pagecubits_cubit.dart';
import 'package:project/shared/theme.dart';

class CostumBottomNavigationsItem extends StatelessWidget {
  const CostumBottomNavigationsItem(
      {super.key, required this.imageurl, required this.index});

  final String imageurl;
  final int index;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.read<PagecubitsCubit>().setpage(index);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(),
          Image.asset(imageurl,
              width: 25,
              height: 25,
              color: context.read<PagecubitsCubit>().state == index
                  ? kPrimary
                  : Colors.grey),
          Container(
            width: 25,
            height: 3,
            decoration: BoxDecoration(
              color: context.read<PagecubitsCubit>().state == index
                  ? Colors.black
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(18),
            ),
          ),
        ],
      ),
    );
  }
}
