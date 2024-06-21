import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'dart:ui';

class qwerty extends StatefulWidget {
  const qwerty({super.key});

  @override
  State<qwerty> createState() => _qwertyState();
}

class _qwertyState extends State<qwerty> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Column(
        children: [
          SizedBox(height: 300,),
          Center(
            child: Container(
              height: 200,
              width: 300,
              color: Colors.cyan,
              child: BackdropFilter(
                filter: ImageFilter.blur(
                    sigmaX: 5,
                    sigmaY: 5,
                ),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0)
                  ),
                  child: Center(
                    child: Text("OK"),
                  ),
                ),
                ),
              ),
            ),
      ],
      ),
    );
  }
}

