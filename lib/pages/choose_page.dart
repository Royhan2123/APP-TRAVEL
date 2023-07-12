import 'package:flutter/material.dart';
import 'package:project/pages/checkout_pages.dart';
import 'package:project/pages/seat_items.dart';
import 'package:project/shared/theme.dart';

class ChoosePage extends StatefulWidget {
  const ChoosePage({super.key});

  @override
  State<ChoosePage> createState() => _ChoosePageState();
}

class _ChoosePageState extends State<ChoosePage> {

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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                SizedBox(
                    width: 48,
                    height: 48,
                    child: Center(
                        child: Text(
                      "A",
                      style:
                          TextStyle(fontFamily: "Poppins", color: Colors.grey),
                    ))),
                SizedBox(
                    width: 48,
                    height: 48,
                    child: Center(
                        child: Text(
                      "B",
                      style:
                          TextStyle(fontFamily: "Poppins", color: Colors.grey),
                    ))),
                SizedBox(
                    width: 48,
                    height: 48,
                    child: Center(
                        child: Text(
                      "",
                      style:
                          TextStyle(fontFamily: "Poppins", color: Colors.grey),
                    ))),
                SizedBox(
                    width: 48,
                    height: 48,
                    child: Center(
                        child: Text(
                      "C",
                      style:
                          TextStyle(fontFamily: "Poppins", color: Colors.grey),
                    ))),
                SizedBox(
                    width: 48,
                    height: 48,
                    child: Center(
                        child: Text(
                      "D",
                      style:
                          TextStyle(fontFamily: "Poppins", color: Colors.grey),
                    ))),
              ],
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  SeatItems(status: 2),
                  SeatItems(status: 2),
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
                  SeatItems(status: 0),
                  SeatItems(status: 2),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  SeatItems(status: 0),
                  SeatItems(status: 0),
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
                  SeatItems(status: 0),
                  SeatItems(status: 2),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  SeatItems(status: 1),
                  SeatItems(status: 1),
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
                  SeatItems(status: 2),
                  SeatItems(status: 2),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  SeatItems(status: 0),
                  SeatItems(status: 2),
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
                  SeatItems(status: 0),
                  SeatItems(status: 0),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  SeatItems(status: 0),
                  SeatItems(status: 0),
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
                  SeatItems(status: 2),
                  SeatItems(status: 0),
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
                children: const [
                  Text(
                    "Your Seat",
                    style: TextStyle(color: Colors.grey, fontFamily: "Poppins"),
                  ),
                  Text(
                    "A3,B3",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
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
                children: const [
                  Text("Total",
                      style:
                          TextStyle(color: Colors.grey, fontFamily: "Poppins")),
                  Text("IDR 540.000.000",
                      style: TextStyle(
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
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        foregroundColor: const Color.fromARGB(255, 20, 0, 109),
                        animationDuration: const Duration(seconds: 1),
                        backgroundColor: kPrimary,
                        shadowColor: Colors.black,
                        minimumSize: const Size(350, 40),
                        shape: const StadiumBorder()),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CheckoutPages()));
                    },
                    child: const Text(
                      "Continue to Checkout",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    )),
              ),
            ),
          ],
        ),
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
