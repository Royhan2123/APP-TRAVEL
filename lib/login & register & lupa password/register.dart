import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/bonus/bonus.dart';
import 'package:project/cubit/auth_cubit.dart';
import 'package:project/login%20&%20register%20&%20lupa%20password/login.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool _obsucuretext = true;
  TextEditingController txtName = TextEditingController(text: '');
  TextEditingController txtEmail = TextEditingController(text: '');
  TextEditingController txtPassword = TextEditingController(text: '');
  TextEditingController txtKonfirmpas = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 5,
              ),
              Container(
                margin: const EdgeInsets.all(20),
                child: Card(
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        const Center(
                          child: Text(
                            'Create your account',
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 20,
                                color: Colors.black),
                          ),
                        ),
                        const SizedBox(
                          height: 65,
                        ),
                        TextField(
                          controller: txtName,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                              hintText: "Enter your name",
                              label: Text('Name')),
                          keyboardType: TextInputType.name,
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        TextField(
                          controller: txtEmail,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                              prefixIcon: Icon(Icons.email),
                              hintText: "name@example.com",
                              label: Text('Email')),
                          keyboardType: TextInputType.emailAddress,
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        TextField(
                          controller: txtPassword,
                          obscureText: _obsucuretext,
                          decoration: InputDecoration(
                              border: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    _obsucuretext = !_obsucuretext;
                                  });
                                },
                                icon: Icon(_obsucuretext
                                    ? Icons.visibility_off
                                    : Icons.visibility),
                              ),
                              prefixIcon: const Icon(Icons.lock),
                              hintText: "enter your password",
                              label: const Text('Password')),
                          keyboardType: TextInputType.visiblePassword,
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        TextField(
                          controller: txtKonfirmpas,
                          obscureText: _obsucuretext,
                          decoration: InputDecoration(
                              border: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    _obsucuretext = !_obsucuretext;
                                  });
                                },
                                icon: Icon(_obsucuretext
                                    ? Icons.visibility_off
                                    : Icons.visibility),
                              ),
                              prefixIcon: const Icon(Icons.lock),
                              hintText: "Konfrim Password",
                              label: const Text('Konfrim Password')),
                          keyboardType: TextInputType.visiblePassword,
                        ),
                        const SizedBox(height: 30),
                        BlocConsumer<AuthCubit, AuthState>(
                          listener: (context, state) {
                            if (state is AuthSuccess) {
                              Navigator.pushAndRemoveUntil( 
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Bonus(),
                                  ),
                                  (route) => false);
                            } else if (state is AuthFailed) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                      backgroundColor: Colors.red,
                                      content: Text(state.error)));
                            }
                          },
                          builder: (context, state) {
                            if (state is AuthLoading) {
                              return const Center(
                                child: CircularProgressIndicator(),
                              );
                            }
                            return ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: const StadiumBorder(),
                                  minimumSize: const Size(330, 40),
                                ),
                                onPressed: () {
                                  context.read<AuthCubit>().signUp(
                                      name: txtName.text,
                                      email: txtEmail.text,
                                      password: txtPassword.text,
                                      konfirmpassword: txtKonfirmpas.text);
                                },
                                child: const Text("Create Account"));
                          },
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        const Text(
                          "-- or sign with --",
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/facebook.png',
                              scale: 3.0,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Image.asset(
                              'assets/images/google.png',
                              scale: 3.0,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Image.asset(
                              'assets/images/twitter.png',
                              scale: 3.0,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'Already have an account?',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                TextButton(
                                    onPressed: () {
                                      Navigator.pushAndRemoveUntil(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => const Login(),
                                          ),
                                          (route) => false);
                                    },
                                    child: const Text("Login"))
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
