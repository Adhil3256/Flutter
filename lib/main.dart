import 'package:flutter/material.dart';
import 'package:project1/amahome.dart';
import 'package:project1/amalog.dart';
import 'package:project1/instagram.dart';
import 'package:project1/post%20api/StudentRecord.dart';
import 'package:project1/product_des.dart';
import 'package:project1/quotes/quotes.dart';
import 'package:project1/spotify.dart';
import 'package:project1/task2.dart';
import 'package:project1/weather/weather.dart';

import 'GetApi/Task1.dart';
import 'ListApi/JsonComments.dart';
import 'api project/products.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StudentRecord(),
    );
  }
}
