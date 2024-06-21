import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:qwerty/myntra.dart';
import 'package:qwerty/navigation2.dart';

class texteditor extends StatefulWidget {
  const texteditor({super.key});

  @override
  State<texteditor> createState() => _texteditorState();
}

class _texteditorState extends State<texteditor> {


  int _num= 0;//by default we have to give

  final page=[ //index for navigating from page to page
    myntra(),
  ];

  void press(value)
  {
    setState(() {
      _num = value;
    });
  }

  final crtl = TextEditingController();
  bool _show = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Enter Name",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextFormField(
              controller: crtl,
              onChanged: (password)
              {
                setState(() {
                  _show=true;
                });

              },
              decoration: InputDecoration(
                hintText: "Enter Password",
                border: OutlineInputBorder(),
              ),
            ),
          ),

          SizedBox(height: 100),
            Visibility(
              visible: _show,
                child: ElevatedButton(onPressed: (){

                  Navigator.push(context, MaterialPageRoute(builder: (context) => const navigation())
                  );
                }, child: Text("LOGIN"))),
        ],
      ),
    );
  }
}

