import 'package:bookly/constans.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'features/splash feature/presintation/views/splash_view.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(
        scaffoldBackgroundColor: kBackgroundColor,
      ),
      home: const SplashView(),
    );
  }
}
