import 'package:flutter/material.dart';
import 'package:Myntra_App/routes.dart';
import 'package:Myntra_App/screens/profile/profile_screen.dart';
import 'package:Myntra_App/screens/splash/splash_screen.dart';
import 'package:Myntra_App/theme.dart';

import 'screens/home/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      // home: SplashScreen(),
      // We use routeName so that we dont need to remember the name
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
