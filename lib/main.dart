import 'package:flutter/material.dart';
import 'package:shopping/e_commerce_before_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.green,
        appBarTheme: const AppBarTheme(
          elevation: 10,
          titleTextStyle: TextStyle(
            fontFamily: "LeckerliOne",
            fontSize: 24,
          )
        ),
      ),
      title: 'Flutter Demo',
      home: const ECommerceScreen(),
    );
  }
}

