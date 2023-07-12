import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/cubit/auth_cubit.dart';
import 'package:project/cubit/pagecubits_cubit.dart';
import 'package:project/login%20&%20register%20&%20lupa%20password/login.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {
          if (state is AuthFailed) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              backgroundColor: Colors.red, content: Text(state.error)));
          } else if (state is AuthInitial) {
            context.read<PagecubitsCubit>().setpage(0);
            Navigator.pushAndRemoveUntil(
                context,
                (MaterialPageRoute(
                  builder: (context) => const Login(),
                )),
                (route) => false);
          }
        },
        builder: (context, state) {
          if (state is AuthLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return ElevatedButton(
              style: ElevatedButton.styleFrom(shape: const StadiumBorder()),
              onPressed: () {
                context.read<AuthCubit>().signOut();
              },
              child: const Text("SignOut"));
        },
      )),
    );
  }
}
