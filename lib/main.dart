import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotel_booking/features/authentication/screens/login/login.dart';
import 'package:hotel_booking/utils/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: SAppTheme.lightTheme,
      darkTheme: SAppTheme.darkTheme,
      home: LoginScreen(),
    );
  }
}
