import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class asd extends StatefulWidget {
  const asd({super.key});

  @override
  State<asd> createState() => _asdState();
}

class _asdState extends State<asd> {

  bool _show = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          Visibility(
            visible: _show,
            child: Center(
              child: Container(
                height: 100,
                width: 100,
                color: Colors.cyanAccent,
              ),
            ),
          ),
          ElevatedButton(onPressed: (){
            setState(() {
              _show = true;
            });
          }, child: Text("ok")),
        ],
      ),
    );
  }
}

