import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
            child: Container(
              height: 700.0,
              width: 450.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                image: const DecorationImage(
                  image: AssetImage('assets/cargo.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Stack(
                  children: [
                    BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 1.0, sigmaY: 1.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.blue.withOpacity(0.4),
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(
                            height: 50.0,
                            child: Text(
                              "Explore Demo Limited's Premier Logistics and Freight Services",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 50.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 20.0, bottom: 70.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage('assets/Logo.png'),
                      height: 25.0,
                      width: 25.0,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'DEMO',
                      style: TextStyle(
                          color: Color.fromARGB(255, 37, 92, 137),
                          fontSize: 25.0,
                          fontWeight: FontWeight.w900),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Container(
                  height: 480,
                  width: 350,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            spreadRadius: 3.0,
                            offset: Offset.zero,
                            blurRadius: 5.0,
                            color: Colors.black.withOpacity(0.3),
                            blurStyle: BlurStyle.outer),
                      ],
                      borderRadius: BorderRadius.circular(15.0)),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 100.0, bottom: 5.0),
                        child: Image(
                          image: AssetImage('assets/ficon.png'),
                          height: 60.0,
                          width: 60.0,
                        ),
                      ),
                      const Text(
                        "Welcome Back",
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                        "We are glad to see you",
                        style: TextStyle(
                            fontSize: 10.0,
                            fontWeight: FontWeight.w300,
                            color: Colors.black.withOpacity(0.8)),
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      SizedBox(
                        height: 40.0,
                        width: 300.0,
                        child: TextField(
                          decoration: InputDecoration(
                              labelText: 'Username',
                              labelStyle: const TextStyle(fontSize: 12.0),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black.withOpacity(
                                      0.2), // Border color with opacity when enabled
                                ),
                              ),
                              border: const OutlineInputBorder()),
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      SizedBox(
                        height: 40.0,
                        width: 300.0,
                        child: TextField(
                          decoration: InputDecoration(
                              labelText: 'Password',
                              labelStyle: const TextStyle(fontSize: 12.0),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black.withOpacity(0.2),
                                ),
                              ),
                              border: const OutlineInputBorder()),
                        ),
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      Container(
                          height: 35.0,
                          width: 300.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            gradient: const LinearGradient(
                              colors: [
                                Color.fromARGB(255, 115, 182, 230),
                                Color.fromARGB(255, 37, 92, 137)
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                          ),
                          child: const Center(
                            child: Text(
                              'LOGIN',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15.0),
                            ),
                          )),
                      const SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        'Forgot Password?',
                        style: TextStyle(
                            fontSize: 10.0,
                            fontWeight: FontWeight.w300,
                            color: Colors.black.withOpacity(0.8)),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 100.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 75.0),
                child: Text(
                  "© 2024 DEMO GROUP. All Rights Reserved",
                  style: TextStyle(
                      fontSize: 10.0,
                      fontWeight: FontWeight.w300,
                      color: Colors.black.withOpacity(0.8)),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
