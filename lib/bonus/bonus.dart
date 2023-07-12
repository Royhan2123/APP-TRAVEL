import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/cubit/auth_cubit.dart';
import 'package:project/pages/main_page.dart';

class Bonus extends StatefulWidget {
  const Bonus({super.key});

  @override
  State<Bonus> createState() => _BonusState();
}

class _BonusState extends State<Bonus> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<AuthCubit, AuthState>(
              builder: (context, state) {
                if (state is AuthSuccess) {
                  return Container(
                    margin: const EdgeInsets.all(15),
                    width: 300,
                    height: 211,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 7, 98, 217),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.blue.withOpacity(0.8),
                              blurRadius: 20,
                              offset: const Offset(0, 10))
                        ],
                        borderRadius:
                            const BorderRadius.all(Radius.circular(30))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(top: 20),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Padding(
                                          padding: EdgeInsets.only(left: 8.0),
                                          child: Text(
                                            "Name",
                                            style: TextStyle(
                                                fontFamily: "Poppins",
                                                fontSize: 15,
                                                color: Colors.white),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 8.0),
                                          child: Text(
                                            state.user.name,
                                            style: const TextStyle(
                                                fontFamily: "Poppins",
                                                fontSize: 20,
                                                color: Colors.white),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 35,
                              height: 35,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/icon_plane.png"))),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(right: 10, left: 10),
                              child: Text(
                                "Pay",
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: 20,
                                    color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text(
                            "Balance",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 20,
                                color: Colors.white),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Text(
                            "IDR 148.000.000",
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 25,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  );
                } else {
                  return const SizedBox();
                }
              },
            ),
            const SizedBox(
              height: 100,
            ),
            const Text(
              "Big Bonus 🎉",
              style: TextStyle(
                  fontFamily: "Poppins",
                  fontSize: 25,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "We give you early credit so that\nyou can buy a flight ticket",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontFamily: "Poppins", fontSize: 15, color: Colors.grey),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    minimumSize: const Size(250, 50)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Mainpage()));
                },
                child: const Text(
                  "Start fly now",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ))
          ],
        )),
      ),
    );
  }
}
