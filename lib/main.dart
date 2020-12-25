import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shopping_ui_app/ui/pages/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness:Brightness.dark,
    ),);
    SystemChrome.setEnabledSystemUIOverlays([
      SystemUiOverlay.top,
    ]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shopping UI',
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      home: SplashScreen(),
    );
  }
}


