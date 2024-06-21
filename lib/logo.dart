import 'package:flutter/material.dart';

class logo extends StatelessWidget {
  const logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/girl.jpg"),
                fit: BoxFit.fill,
              ),
              shape: BoxShape.circle,
            ),
          ),
        ),
      ),
          body: Column(
          children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      image: DecorationImage(
                        image: AssetImage("assets/girl.jpg"),
                      ),
                      shape: BoxShape.rectangle,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      border: Border.all(),
                      image: DecorationImage(
                        image: AssetImage("assets/girl.jpg"),
                      ),
                      shape: BoxShape.rectangle,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 400,
              width: 350,
              decoration: BoxDecoration(
                border: Border.all(),
                image: DecorationImage(
                  image: AssetImage("assets/background.jpg"),
                  fit: BoxFit.fill,
                ),
                shape: BoxShape.rectangle,
              ),
      child: Column(
          children: [
        Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          decoration: InputDecoration(
            icon: Icon(Icons.person),
            iconColor: Colors.white,
            hintText: "Enter Number",
            border: OutlineInputBorder(),
            ),
         ),
      ),
        Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextFormField(
          decoration: InputDecoration(
        icon: Icon(Icons.person),
        iconColor: Colors.white,
        hintText: "Enter Number",
        border: OutlineInputBorder(),
          ),
          ),
        ),
            SizedBox(height: 200),
            ElevatedButton(onPressed: (){}, child: Text("Login")),
        ],
     ),
     ),
      ),
      ],
     ),
    );
  }
}
