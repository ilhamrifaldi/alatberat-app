import 'dart:async';
import 'package:alatberat/pages/sign_in_page.dart';
import 'package:get/get.dart';

import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 3), () => Get.to(SignInPage()));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
            width: 179,
            height: 122,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/splash_logo.png")))),
      ),
    );
  }
}
