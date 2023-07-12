import 'package:flutter/material.dart';
import 'package:project/login%20&%20register%20&%20lupa%20password/register.dart';
import 'lupapassword.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _obsucuretext = true;
  TextEditingController txtEmail = TextEditingController(text: "");
  TextEditingController txtPassword = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Container(
                margin: const EdgeInsets.all(15),
                child: Card(
                  child: Container(
                    margin: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        const Center(
                          child: Text(
                            'Login to your account',
                            style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 20,
                                color: Colors.black),
                          ),
                        ),
                        const SizedBox(
                          height: 100,
                        ),
                        TextField(
                          cursorColor: Colors.black,
                          controller: txtEmail,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            ),
                            prefixIcon: Icon(
                              Icons.email,
                            ),
                            hintText: "name@example.com",
                            label: Text('Email'),
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        TextField(
                          cursorColor: Colors.black,
                          obscureText: _obsucuretext,
                          controller: txtPassword,
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
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shape: const StadiumBorder(),
                              minimumSize: const Size(330, 40),
                            ),
                            onPressed: () {},
                            child: const Text("Login")),
                        const SizedBox(
                          height: 5,
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: TextButton(
                              style: TextButton.styleFrom(),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Lupapassword()));
                              },
                              child: const Text('Forgot your password?')),
                        ),
                        const SizedBox(
                          height: 35,
                        ),
                        const Text(
                          "-- or sign with --",
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                        const SizedBox(
                          height: 20,
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
                          height: 50,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'Dont have an account?',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const Register(),
                                          ));
                                    },
                                    child: const Text("Sign Up"))
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
