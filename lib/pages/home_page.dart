import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/cubit/auth_cubit.dart';
import 'package:project/cubit/destination_cubit.dart';
import 'package:project/shared/theme.dart';
import 'package:project/widgets/destinations_card.dart';
import 'package:project/widgets/destinations_tile.dart';
import 'package:project/models/destinations_models.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    context.read<DestinationCubit>().fetchDestination();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          if (state is AuthSuccess) {
            return Container(
              margin: EdgeInsets.only(
                left: defaultMargin,
                right: defaultMargin,
                top: 30,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello ${state.user.name}",
                          style: const TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 24,
                              fontWeight: FontWeight.w800),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          "Where to fly today?",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey,
                              fontFamily: "Poppins"),
                        ),
                        const SizedBox(
                          width: 100,
                          height: 100,
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/images/royhan.jpg"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          } else {
            return const SizedBox();
          }
        },
      );
    }

    Widget popularDestination(List<DestinationsModels> destination) {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: destination.map((DestinationsModels destination) {
              return Destinations(destination);
            }).toList(),
          ),
        ),
      );
    }

    Widget newDestination(List<DestinationsModels> destinations) {
      return Container(
        margin:
            EdgeInsets.only(right: defaultMargin, left: defaultMargin, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "New This Year",
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontFamily: "Poppins",
                fontSize: 20,
              ),
            ),
            Column(
              children: destinations.map((DestinationsModels destinations) {
                return Destinationstile(destinations);
              }).toList(),
            ),
            const SizedBox(
              height: 80,
            )
          ],
        ),
      );
    }

    return BlocConsumer<DestinationCubit, DestinationState>(
      listener: (context, state) {
        if (state is DestinationFailed) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              backgroundColor: Colors.red, content: Text(state.error)));
        }
      },
      builder: (context, state) {
        if (state is DestinationSucces) {
          return ListView(
            children: [
              header(),
              popularDestination(state.destination),
              newDestination(state.destination),
            ],
          );
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
