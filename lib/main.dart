import 'package:flutter/material.dart';
import 'package:flutter_instagram/responsive/mobile_screen_layout.dart';
import 'package:flutter_instagram/responsive/responsive_layout_screen.dart';
import 'package:flutter_instagram/responsive/web_screen_layout.dart';
import 'package:flutter_instagram/utils/colos.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram Clone',
      theme: ThemeData.dark()
          .copyWith(scaffoldBackgroundColor: mobileBackgroundColor),
      home: ResponsiveLayout(
        mobileScreenLayout: MobileScreenLayout(),
        webScreenLayout: WebScreenLayout(),
      ),
    );
  }
}
