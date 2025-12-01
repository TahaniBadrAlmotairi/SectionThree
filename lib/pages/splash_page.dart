import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 6), () {
      Get.off(() => const HomePage());
    });

    return Scaffold(
      body: Center(
        child: Image.asset(
          'assets/images/Section.png',
          width: 200,
        ),
      ),
    );
  }
}
