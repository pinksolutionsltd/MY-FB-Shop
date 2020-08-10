import 'dart:async';
import 'package:flutter/material.dart';
import 'package:tweakandeat/home_page.dart';

import 'helper.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  initState() {
    super.initState();
    Timer(
        Duration(seconds: 4),
            () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => HomePage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(Helper.getHexToInt("#4267B2")),
        child: SafeArea(
          child: Container(
            width: double.infinity,
            decoration:new BoxDecoration(
                image:  new DecorationImage(
                  image: new AssetImage("images/fb.png"),
                  fit: BoxFit.cover,)
            ),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircularProgressIndicator(
                  backgroundColor: Color(Helper.getHexToInt("#4267B2")),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Loading...',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
