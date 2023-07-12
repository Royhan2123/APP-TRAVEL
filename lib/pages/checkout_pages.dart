import 'package:flutter/material.dart';
import 'package:project/pages/booking_detail_item.dart';
import 'package:project/pages/succes_pages.dart';
import 'package:project/shared/theme.dart';

class CheckoutPages extends StatefulWidget {
  const CheckoutPages({super.key});

  @override
  State<CheckoutPages> createState() => _CheckoutPagesState();
}

class _CheckoutPagesState extends State<CheckoutPages> {
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
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
                  children: const [
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
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                              "assets/images/image_destination1.png"))),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Lake Ciliwung",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      Text(
                        "Tangerang ",
                        style: TextStyle(
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
                    const Text(
                      "4.5",
                      style: TextStyle(
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
            const BookingDetailItem(
                title: "Traveler",
                valueText: "2 Person",
                valueColor: Colors.black),
            const BookingDetailItem(
                title: "Seat", valueText: "A3,B3", valueColor: Colors.black),
            const BookingDetailItem(
                title: "Insurance", valueText: "Yes", valueColor: Colors.green),
            const BookingDetailItem(
                title: "Refundable", valueText: "No", valueColor: Colors.blue),
            const BookingDetailItem(
                title: "Vat", valueText: "45%", valueColor: Colors.black),
            const BookingDetailItem(
                title: "Price",
                valueText: "IDR 8.500.690",
                valueColor: Colors.black),
            BookingDetailItem(
                title: "Grand Total",
                valueText: "IDR 12.000.000",
                valueColor: kPrimary),
          ],
        ),
      );
    }

    Widget paymentDetails() {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(18)),
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
                            image: AssetImage("assets/images/image_card.png"))),
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
                    children: const [
                      Text(
                        "IDR 80.400.000",
                        style: TextStyle(
                            fontFamily: "Poppins",
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                      Text(
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
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(350, 50),
                      backgroundColor: kPrimary,
                      shadowColor: Colors.black,
                      foregroundColor: Colors.blue,
                      animationDuration: const Duration(seconds: 2),
                      shape: const StadiumBorder()),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SuccesPages()));
                  },
                  child: const Text(
                    "Pay Now",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )),
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
