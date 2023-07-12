import 'package:flutter/material.dart';
import 'package:project/models/destinations_models.dart';
import 'package:project/pages/detail_page.dart';
import 'package:project/shared/theme.dart';

class Destinations extends StatelessWidget {
  final DestinationsModels destinations;
  const Destinations(this.destinations,{
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => Detailpage(destinations))),
      child: Container(
        margin: const EdgeInsets.only(top: 30),
        child: Row(
          children: [
            Container(
              width: 200,
              height: 300,
              margin: EdgeInsets.only(
                left: defaultMargin,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18), color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 180,
                    height: 220,
                    margin: const EdgeInsets.only(bottom: 20),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(image: NetworkImage(destinations.imageUrl))),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        width: 55,
                        height: 30,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20))),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 20,
                              height: 20,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/icon_star.png"))),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              destinations.rating.toString(),
                              style: const TextStyle(
                                  fontFamily: "Poppins",
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          destinations.name,
                          style: const TextStyle(
                              color: Colors.black,
                              fontFamily: "Poppins",
                              fontSize: 20),
                        ),
                        Text(
                          destinations.city,
                          style: const TextStyle(
                              color: Colors.grey,
                              fontFamily: "Poppins",
                              fontSize: 15),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
