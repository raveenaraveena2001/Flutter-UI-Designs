import 'package:flutter/material.dart';

class file extends StatelessWidget {
  const file({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

    ),
      body: Column(
        children: [
          Container(
              height: 400,
              width: 400,
              child: Image.asset("assets/abc.jpg")
          ),
          Padding(
              padding: const EdgeInsets.all(8.0),
          child: TextField(),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(),
          ),
          SizedBox(height: 100,),
          ElevatedButton(onPressed: (){}, child: Text("Welcome")),
          SizedBox(height: 100,),
        ]
      ),
    );
  }
}

