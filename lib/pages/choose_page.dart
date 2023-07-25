import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:project/cubit/seat_cubit.dart';
import 'package:project/models/destinations_models.dart';
import 'package:project/models/transaksi_models.dart';
import 'package:project/pages/checkout_pages.dart';
import 'package:project/pages/seat_items.dart';
import 'package:project/shared/theme.dart';

class ChoosePage extends StatelessWidget {
  final DestinationsModels destination;
  const ChoosePage(this.destination, {super.key});

  @override
  Widget build(BuildContext context) {
    Widget tittle() {
      return Container(
        margin: const EdgeInsets.only(top: 20),
        child: const Text(
          "Select Your\nFavorit Seat",
          style: TextStyle(
              fontFamily: "Poppins",
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.bold),
        ),
      );
    }

    Widget seatStatus() {
      return Container(
        margin: const EdgeInsets.only(top: 25),
        child: Row(
          children: [
            Container(
              width: 20,
              height: 20,
              margin: const EdgeInsets.only(right: 5),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/icon_available.png"))),
            ),
            const Text(
              "Available",
              style: TextStyle(fontFamily: "Poppins", color: Colors.black),
            ),
            Container(
              width: 20,
              height: 20,
              margin: const EdgeInsets.only(left: 10, right: 5),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/icon_selected.png"))),
            ),
            const Text(
              "Selected",
              style: TextStyle(fontFamily: "Poppins", color: Colors.black),
            ),
            Container(
              width: 20,
              height: 20,
              margin: const EdgeInsets.only(left: 10, right: 5),
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/icon_unavailable.png"))),
            ),
            const Text(
              "Unavailable",
              style: TextStyle(fontFamily: "Poppins", color: Colors.black),
            ),
          ],
        ),
      );
    }

    Widget selecSeat() {
      return BlocBuilder<SeatCubit, List<String>>(
        builder: (context, state) {
          return Container(
            width: double.infinity,
            margin: const EdgeInsets.only(top: 30),
            padding: const EdgeInsets.symmetric(
              horizontal: 22,
              vertical: 30,
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18), color: Colors.white),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                        width: 48,
                        height: 48,
                        child: Center(
                            child: Text(
                          "A",
                          style: TextStyle(
                              fontFamily: "Poppins", color: Colors.grey),
                        ))),
                    SizedBox(
                        width: 48,
                        height: 48,
                        child: Center(
                            child: Text(
                          "B",
                          style: TextStyle(
                              fontFamily: "Poppins", color: Colors.grey),
                        ))),
                    SizedBox(
                        width: 48,
                        height: 48,
                        child: Center(
                            child: Text(
                          "",
                          style: TextStyle(
                              fontFamily: "Poppins", color: Colors.grey),
                        ))),
                    SizedBox(
                        width: 48,
                        height: 48,
                        child: Center(
                            child: Text(
                          "C",
                          style: TextStyle(
                              fontFamily: "Poppins", color: Colors.grey),
                        ))),
                    SizedBox(
                        width: 48,
                        height: 48,
                        child: Center(
                            child: Text(
                          "D",
                          style: TextStyle(
                              fontFamily: "Poppins", color: Colors.grey),
                        ))),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SeatItems(
                        id: "A1",
                      ),
                      SeatItems(
                        isAvalaible: false,
                        id: "B1",
                      ),
                      SizedBox(
                        width: 48,
                        height: 48,
                        child: Center(
                          child: Text(
                            "1",
                            style: TextStyle(
                                fontFamily: "Poppins", color: Colors.grey),
                          ),
                        ),
                      ),
                      SeatItems(
                        id: "C1",
                        isAvalaible: false,
                      ),
                      SeatItems(
                        id: "D1",
                        isAvalaible: false,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SeatItems(
                        id: "A2",
                      ),
                      SeatItems(
                        id: "B2",
                      ),
                      SizedBox(
                        width: 48,
                        height: 48,
                        child: Center(
                          child: Text(
                            "2",
                            style: TextStyle(
                                fontFamily: "Poppins", color: Colors.grey),
                          ),
                        ),
                      ),
                      SeatItems(
                        id: "C2,",
                      ),
                      SeatItems(
                        id: "D2",
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SeatItems(
                        id: "A3",
                      ),
                      SeatItems(
                        id: "B3",
                      ),
                      SizedBox(
                        width: 48,
                        height: 48,
                        child: Center(
                          child: Text(
                            "3",
                            style: TextStyle(
                                fontFamily: "Poppins", color: Colors.grey),
                          ),
                        ),
                      ),
                      SeatItems(
                        id: "C3",
                        isAvalaible: false,
                      ),
                      SeatItems(
                        id: "D3",
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SeatItems(
                        id: "A4",
                      ),
                      SeatItems(
                        id: "B4",
                      ),
                      SizedBox(
                        width: 48,
                        height: 48,
                        child: Center(
                          child: Text(
                            "4",
                            style: TextStyle(
                                fontFamily: "Poppins", color: Colors.grey),
                          ),
                        ),
                      ),
                      SeatItems(
                        id: "C4",
                        isAvalaible: false,
                      ),
                      SeatItems(
                        id: "D4",
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SeatItems(
                        id: "A5",
                        isAvalaible: false,
                      ),
                      SeatItems(
                        id: "B5",
                      ),
                      SizedBox(
                        width: 48,
                        height: 48,
                        child: Center(
                          child: Text(
                            "5",
                            style: TextStyle(
                                fontFamily: "Poppins", color: Colors.grey),
                          ),
                        ),
                      ),
                      SeatItems(
                        id: "C5",
                      ),
                      SeatItems(
                        id: "D5",
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "Your Seat",
                        style: TextStyle(
                            color: Colors.grey, fontFamily: "Poppins"),
                      ),
                      Text(
                        state.join(','),
                        style: const TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w500),
                        overflow: TextOverflow.clip,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                    top: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Total",
                          style: TextStyle(
                              color: Colors.grey, fontFamily: "Poppins")),
                      Text(
                          NumberFormat.currency(
                                  locale: "id",
                                  symbol: "IDR ",
                                  decimalDigits: 0)
                              .format(state.length * destination.price),
                          style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                              fontFamily: "Poppins"))
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Center(
                  child: Container(
                    margin: const EdgeInsets.only(top: 35),
                    child: BlocBuilder<SeatCubit, List<String>>(
                      builder: (context, state) {
                        return ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                foregroundColor:
                                    const Color.fromARGB(255, 20, 0, 109),
                                animationDuration: const Duration(seconds: 1),
                                backgroundColor: kPrimary,
                                shadowColor: Colors.black,
                                minimumSize: const Size(350, 40),
                                shape: const StadiumBorder()),
                            onPressed: () {
                              int price = destination.price * state.length;
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          CheckoutPages(TransaksiModels(
                                            destination: destination,
                                            amountTraveler: state.length,
                                            seat: state.join(","),
                                            insurance: true,
                                            refundable: false,
                                            price: price,
                                            vat: 0.45,
                                            grandTotal: price + (price * 0.45).toInt(),
                                          ))));
                            },
                            child: const Text(
                              "Continue to Checkout",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ));
                      },
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      );
    }

    return SafeArea(
      child: Scaffold(
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          children: [
            tittle(),
            seatStatus(),
            selecSeat(),
          ],
        ),
      ),
    );
  }
}
