import 'dart:async';

import 'package:flutter/material.dart';
import 'package:plantify/splashPage.dart';

class MyMainSplashPage extends StatefulWidget {
  const MyMainSplashPage({super.key});

  @override
  State<MyMainSplashPage> createState() => _MyMainSplashPageState();
}

class _MyMainSplashPageState extends State<MyMainSplashPage> {

   @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 3), () { 
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SplashPage()));

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0D986A),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                    // width: MediaQuery.sizeOf(context).width,
                  child: Image.asset("assets/images/Logo (1).png",width: 300,),
                  ),
                  Container(
                    width: MediaQuery.sizeOf(context).width,
                  child: Image.asset("assets/images/Plantify.png",width: 300,),
                  ),
            ],
          ),
        ),
    );
  }
}