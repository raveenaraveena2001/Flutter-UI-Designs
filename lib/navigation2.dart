import 'package:flutter/material.dart';
import 'package:qwerty/amazo.dart';
import 'package:qwerty/myntra.dart';
import 'package:qwerty/navipage2.2.dart';

class navigation extends StatefulWidget {
  const navigation({super.key});

  @override
  State<navigation> createState() => _navigationState();
}

class _navigationState extends State<navigation> {

  int _num=0;//by default we have to give

  final page=[
    myntra(),//index for navigating from page to page
    navipage3(),
  ];

  void press(value)
  {
    setState(() {
      _num = value;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page[_num],

      bottomNavigationBar: BottomNavigationBar(
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: " "),
        BottomNavigationBarItem(icon: Icon(Icons.settings),label: " "),
          //BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined,size: 30,),label: " "),
          //BottomNavigationBarItem(icon: Icon(Icons.menu,size: 30,),label: " ")
      ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _num,
        onTap: press,

      ),
    );
  }
}
