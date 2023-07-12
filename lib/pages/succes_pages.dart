import 'package:flutter/material.dart';
import 'package:project/pages/main_page.dart';
import 'package:project/shared/theme.dart';

class SuccesPages extends StatefulWidget {
  const SuccesPages({super.key});

  @override
  State<SuccesPages> createState() => _SuccesPagesState();
}

class _SuccesPagesState extends State<SuccesPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 30),
              width: 300,
              height: 300,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/image_success.png"))),
            ),
          ),
          const Text(
            "WELL BOOKED 😍",
            style: TextStyle(
                fontFamily: "Poppins",
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
          const Text(
            " Are you ready to explore the new\nworld of exprience?",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: "Poppins",
              color: Colors.grey,
              fontSize: 15,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: const StadiumBorder(),
                foregroundColor: Colors.blue,
                backgroundColor: kPrimary,
                shadowColor: Colors.black,
                animationDuration: Duration.zero,
                minimumSize: const Size(300, 40),
              ),
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => const Mainpage()),
                    (route) => false);
              },
              child: const Text(
                "My Booking",
                style: TextStyle(
                  fontFamily: "Poppins",
                  color: Colors.white,
                ),
              ))
        ],
      ),
    );
  }
}
