import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:project/cubit/auth_cubit.dart';
import 'package:project/cubit/transaksi_cubit.dart';
import 'package:project/models/transaksi_models.dart';
import 'package:project/pages/booking_detail_item.dart';
import 'package:project/pages/succes_pages.dart';
import 'package:project/shared/theme.dart';

class CheckoutPages extends StatelessWidget {
  final TransaksiModels transaksi;
  const CheckoutPages(this.transaksi, {super.key});

  @override
  Widget build(BuildContext context) {
    Widget route() {
      return Container(
        margin: const EdgeInsets.only(
          top: 50,
        ),
        child: Column(
          children: [
            Container(
              width: 291,
              height: 65,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/image_checkout.png"))),
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "CGK",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Tangerang",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "TLC",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Ciliwung",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      );
    }

    Widget booking() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 70,
                  height: 70,
                  margin: const EdgeInsets.only(right: 16),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(transaksi.destination.imageUrl))),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        transaksi.destination.name,
                        style: const TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      Text(
                        transaksi.destination.city,
                        style: const TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 20,
                      height: 20,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image:
                                  AssetImage("assets/images/icon_star.png"))),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      transaksi.destination.rating.toString(),
                      style: const TextStyle(
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )
              ],
            ),
            Container(
                margin: const EdgeInsets.only(top: 15),
                child: const Text(
                  "Booking Details",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                )),
            BookingDetailItem(
                title: "Traveler",
                valueText: "${transaksi.amountTraveler} person",
                valueColor: Colors.black),
            BookingDetailItem(
                title: "Seat",
                valueText: transaksi.seat,
                valueColor: Colors.black),
            BookingDetailItem(
                title: "Insurance",
                valueText: transaksi.insurance ? "YES " : "FALSE",
                valueColor: transaksi.insurance ? Colors.green : Colors.red),
            BookingDetailItem(
                title: "Refundable",
                valueText: transaksi.refundable ? "Yes" : "No",
                valueColor: transaksi.insurance ? Colors.blue : Colors.red),
            BookingDetailItem(
                title: "Vat",
                valueText: "${(transaksi.vat * 100).toStringAsFixed(0)}%",
                valueColor: Colors.black),
            BookingDetailItem(
                title: "Price",
                valueText: NumberFormat.currency(
                        locale: "id", symbol: "IDR ", decimalDigits: 0)
                    .format(transaksi.price),
                valueColor: Colors.black),
            BookingDetailItem(
                title: "Grand Total",
                valueText: NumberFormat.currency(
                        locale: "id", symbol: "IDR ", decimalDigits: 0)
                    .format(transaksi.grandTotal),
                valueColor: kPrimary),
          ],
        ),
      );
    }

    Widget paymentDetails() {
      return BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          if (state is AuthSuccess) {
            return Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(18)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Payment Details",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      top: 15,
                    ),
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 10),
                          width: 100,
                          height: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                      "assets/images/image_card.png"))),
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(right: 5),
                                  width: 25,
                                  height: 25,
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/images/icon_plane.png"))),
                                ),
                                const Text(
                                  "Pay",
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      color: Colors.white,
                                      fontSize: 16),
                                )
                              ],
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              NumberFormat.currency(
                                      locale: "id",
                                      symbol: "IDR ",
                                      decimalDigits: 0)
                                  .format(state.user.balance),
                              style: const TextStyle(
                                  fontFamily: "Poppins",
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                            const Text(
                              "Current Balance",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    margin: const EdgeInsets.only(top: 50),
                    child: BlocConsumer<TransaksiCubit, TransaksiState>(
                      listener: (context, state) {
                        if (state is TransaksiSucces) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SuccesPages()));
                        } else if (state is TransaksiFailed) {
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              backgroundColor: Colors.red,
                              content: Text(state.error)));
                        }
                      },
                      builder: (context, state) {
                        if (state is TransaksiLoading) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                        return ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                minimumSize: const Size(350, 50),
                                backgroundColor: kPrimary,
                                shadowColor: Colors.black,
                                foregroundColor: Colors.blue,
                                animationDuration: const Duration(seconds: 2),
                                shape: const StadiumBorder()),
                            onPressed: () {
                              context
                                  .read<TransaksiCubit>()
                                  .fetchTransaksi(transaksi);
                            },
                            child: const Text(
                              "Pay Now",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ));
                      },
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.only(top: 15),
                    child: const Text(
                      "Terms and Conditions",
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: 15,
                          color: Colors.grey,
                          decoration: TextDecoration.underline),
                    ),
                  )
                ],
              ),
            );
          }
          return const SizedBox();
        },
      );
    }

    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        children: [route(), booking(), paymentDetails()],
      ),
    );
  }
}
