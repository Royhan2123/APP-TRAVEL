import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:project/models/destinations_models.dart';
import 'package:project/pages/choose_page.dart';
import 'package:project/shared/theme.dart';
import 'package:project/widgets/interest_item.dart';
import 'package:project/widgets/photo_items.dart';
class Detailpage extends StatelessWidget {
  final DestinationsModels destinations;
  const Detailpage(this.destinations, {super.key});
  @override
  Widget build(BuildContext context) {
    Widget backgroundImage() {
      return Container(
        width: double.infinity,
        height: 400,
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: NetworkImage(destinations.imageUrl))),
      );
    }

    Widget customShadow() {
      return Container(
        margin: const EdgeInsets.only(top: 200),
        width: double.infinity,
        height: 200,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Colors.white.withOpacity(0),
              Colors.black.withOpacity(0.95)
            ])),
      );
    }

    Widget content() {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: defaultMargin),
        width: double.infinity,
        child: Column(
          children: [
            Container(
              width: 130,
              height: 50,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/icon_emblem.png"))),
            ),
            Container(
              margin: const EdgeInsets.only(top: 220),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          destinations.name,
                          style: const TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          destinations.city,
                          style: const TextStyle(
                            fontFamily: "Poppins",
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 20,
                    height: 20,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/icon_star.png"))),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    destinations.rating.toString(),
                    style: const TextStyle(
                        fontFamily: "Poppins",
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(top: 30),
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 30,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "About",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    destinations.about,
                    style: const TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Photos",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                      PhotoItems(imageurl: "assets/images/image_photo1.png"),
                      PhotoItems(imageurl: "assets/images/image_photo2.png"),
                      PhotoItems(
                          imageurl: "assets/images/image_destination10.png"),
                    ],
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  const Text(
                    "Interest",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Row(
                    children:  [
                      InterestItem(
                          imageUrl: "assets/images/icon_check.png",
                          name: "Kids Park"),
                      InterestItem(
                          imageUrl: "assets/images/icon_check.png",
                          name: "Honor Bridge"),
                    ],
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Row(
                    children:  [
                      InterestItem(
                          imageUrl: "assets/images/icon_check.png",
                          name: "City Museum"),
                      InterestItem(
                          imageUrl: "assets/images/icon_check.png",
                          name: "Central Mall"),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(vertical: 30),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          NumberFormat.currency(
                                  locale: "id",
                                  symbol: "IDR ",
                                  decimalDigits: 0)
                              .format(destinations.price),
                          style: const TextStyle(
                              color: Colors.black,
                              fontFamily: "Poppins",
                              fontSize: 17),
                        ),
                        const Text(
                          "per orang",
                          style: TextStyle(
                            color: Colors.grey,
                            fontFamily: "Poppins",
                          ),
                        )
                      ],
                    ),
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: const StadiumBorder(),
                          minimumSize: const Size(120, 40)),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>  ChoosePage(destinations)));
                      },
                      child: const Text(
                        'Book Now',
                        style: TextStyle(color: Colors.white),
                      )),
                ],
              ),
            )
          ],
        ),
      );
    }

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              backgroundImage(),
              customShadow(),
              content(),
            ],
          ),
        ),
      ),
    );
  }
}
