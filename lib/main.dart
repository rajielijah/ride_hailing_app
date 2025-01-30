import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ride_hailing_app/views/login_screen.dart';
import 'package:ride_hailing_app/views/navigation.dart';
import 'package:ride_hailing_app/views/sign_up_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Ride Hailing App',
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => LoginScreen()),
        GetPage(name: '/home', page: () => const MainNavigationScreen()),
        GetPage(name: '/signup', page: () => SignupScreen()),
      ],
    );
  }
}

