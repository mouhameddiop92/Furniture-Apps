import 'package:flutter/material.dart';
import 'package:furniture_app/discount.dart';
import 'package:furniture_app/home.dart';
import 'package:furniture_app/home1.dart';
import 'package:furniture_app/login.dart';
import 'package:furniture_app/person.dart';
import 'package:furniture_app/registre.dart';
import 'package:furniture_app/screen1.dart';
import 'package:furniture_app/screen2.dart';
import 'package:furniture_app/screen3.dart';
import 'package:furniture_app/screen4.dart';

void main(List<String> args) {
  runApp(const FurnitureApp());
}

class FurnitureApp extends StatelessWidget {
  const FurnitureApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Furniture App',
      initialRoute: 'chaise1',
      routes: {
        '/': (context) => const Screen1(),
        '/screen2': (context) => const Screen2(),
        '/screen3': (context) => const Screen3(),
        '/login': (context) => const LoginPage(),
        '/registre': (context) => const RegistrePage(),
        '/home': (context) => HomePage(),
        '/screen4': (context) => const Screen4(),
        '/person': (context) => const PersonPage(),
        '/home1': (context) => HomePage1(),
        '/discount': (context) => DiscountPage(),
      },
      theme: ThemeData(
        primaryColor: const Color(0xFFF2A213),
        secondaryHeaderColor: Colors.white,
      ),
    );
  }
}
