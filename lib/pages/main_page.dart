import 'package:flutter/material.dart';
import 'package:project/cubit/pagecubits_cubit.dart';
import 'package:project/pages/home_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/pages/setting.dart';
import 'package:project/pages/transaction_page.dart';
import 'package:project/pages/wallet.dart';
import 'package:project/widgets/costum_botton_navigations.dart';

class Mainpage extends StatefulWidget {
  const Mainpage({super.key});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  @override
  Widget build(BuildContext context) {
    Widget customButtonNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 60,
          margin: const EdgeInsets.only(bottom: 10, left: 20, right: 20),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children:  [
              CostumBottomNavigationsItem(
                imageurl: 'assets/images/home.png',
                index: 0,
              ),
              CostumBottomNavigationsItem(
                imageurl: "assets/images/search.png",
                index: 1,
              ),
              CostumBottomNavigationsItem(
                imageurl: "assets/images/paid.png",
                index: 2,
              ),
              CostumBottomNavigationsItem(
                imageurl: "assets/images/setting.png",
                index: 3,
              ),
            ],
          ),
        ),
      );
    }
    
    Widget buildContent(int currentIndex) {
      switch (currentIndex) {
        case 0:
          return const HomePage();
        case 1:
          return const TransactionPages();
        case 2:
          return const Wallet();
        case 3:
          return const Setting    ();
        default:
          return const HomePage();
      }
    }

    return SafeArea(
      child: BlocBuilder<PagecubitsCubit, int>(
        builder: (context, currentIndex) {
          return Scaffold(
            body: Stack(
              children: [
                buildContent(currentIndex),
                customButtonNavigation(),
              ],
            ),
          );
        },
      ),
    );
  }
}
