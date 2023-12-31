import 'package:flutter/material.dart';
import 'package:travel_journal/components/app_images.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(AppImages.startImg), fit: BoxFit.cover),
            ),
            child: ListView(children: [
              const Spacer(),
              Container(
                  margin: const EdgeInsets.only(
                    left: 35,
                    right: 35,
                  ),
                  height: MediaQuery.of(context).size.height - 100,
                  width: MediaQuery.of(context).size.width - 70,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(20)),
                  child: ListView(children: [
                    const Spacer(),
                    const Text(
                      'Login',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 32,
                          fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    Container(
                      margin: const EdgeInsets.only(left: 35, right: 35),
                      child: TextField(
                        decoration: const InputDecoration(
                            hintText: 'Email',
                            hintStyle: TextStyle(
                              color: Colors.black,
                            )),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 35, right: 35),
                      child: TextField(
                        decoration: const InputDecoration(
                            hintText: 'Password',
                            hintStyle: TextStyle(
                              color: Colors.black,
                            )),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 35, right: 35),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                value: false,
                                onChanged: (value) {},
                              ),
                              const Text(
                                'Remember me',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          const Text(
                            'Forgot Password?',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                        margin: const EdgeInsets.only(left: 35, right: 35),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text('Login',
                              style: TextStyle(
                                color: Colors.black,
                              )),
                        ))
                  ]))
            ])));
  }
}
