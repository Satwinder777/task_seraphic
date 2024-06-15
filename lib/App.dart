
import 'package:flutter/material.dart';

import 'features/screens/HomeScreen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.system,
        home:  SafeArea(child: HomeScreen()),
// Satwinder code here

// sadak code

      );
  }
}
