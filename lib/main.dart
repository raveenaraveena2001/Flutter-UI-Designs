import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:qwerty/second.dart';
import 'package:qwerty/validation.dart';

import 'COLOR.dart';
import 'myntra.dart';

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
      title: 'Flutter Demo',
      home:  myValidation(),
    );
  }
}
