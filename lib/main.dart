import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:radwa_back/Features/Splash/presentation/views/splash_view.dart';
import 'package:radwa_back/constans.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: const SplashView(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: kPrimaryColor,
        primarySwatch: Colors.blue    ,
       ));
  }
}
