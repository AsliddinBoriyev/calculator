import 'dart:async';
import 'package:calculator/View/Page/Home.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 4),
      () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const Home()));
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double myHeight = MediaQuery.of(context).size.height;
    double myWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.yellow,
        body: Container(
          height: myHeight,
          width: myWidth,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: myHeight * 0.05),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(''),
                const Text(
                  'calculator_app',
                  style: TextStyle(
                      fontSize: 60,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        // const Text(
                        //   'Created by',
                        //   style: TextStyle(
                        //       fontSize: 20,
                        //       color: Colors.white,
                        //       fontWeight: FontWeight.normal),
                        // ),
                        SizedBox(
                          width: myWidth * 0.02,
                        ),
                        // Image.asset(
                        //   'assets/io.png',
                        //   height: myHeight * 0.03,
                        // )
                      ],
                    ),
                    SizedBox(
                      height: myHeight * 0.005,
                    ),
                    Image.asset(
                      'assets/loading1.gif',
                      height: myHeight * 0.075,
                      color: Colors.white,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
