import 'package:flutter/material.dart';

class qwe extends StatelessWidget {
  const qwe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        leading: Icon(Icons.menu),
        title: Center(child: Text("hello")),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.camera),
          ),


        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(),
          ),
          SizedBox(height: 100,),
          ElevatedButton(onPressed: (){}, child: Text("login")),
          SizedBox(height: 100,),
          Container(
            height: 100,
              width: 100,
              child: Image.asset("assets/abc.jpg"),
          ),
        ],
      ),
    );
  }
}
