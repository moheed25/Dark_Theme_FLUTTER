import 'dart:async';

import 'package:black/home.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // void initState() {
  //   super.initState();
  //   // ignore: prefer_const_constructors
  //   Timer(
  //     // ignore: prefer_const_constructors
  //     Duration(
  //       seconds: 8,
  //     ),
  //     () => Navigator.of(context).push(
  //       MaterialPageRoute(
  //           // ignore: prefer_const_constructors
  //           builder: (BuildContext context) => HomePage()),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          // // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 130,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.network(
                  'https://assets5.lottiefiles.com/private_files/lf30_kqshlcsx.json',
                  width: 200,
                  height: 200,
                  // fit: BoxFit.fill,
                ),
              ],
            ),
            SizedBox(
              height: 120,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    );
                  },
                  child: Container(
                    height: 80,
                    width: 200,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.black,
                    ),
                    child: Center(
                      child: Text(
                        "Start",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
