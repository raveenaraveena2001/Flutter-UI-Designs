import 'package:flutter/material.dart';

class loginPage extends StatelessWidget {
  const loginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset("assets/abc.jpg"),
        title: Center(child: Icon(Icons.home)),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("GT"),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 300,
              width: 400,
              decoration: BoxDecoration(
                  border: Border.all(),
                  image: DecorationImage(
                    image: AssetImage("assets/img/tree.jpg"),
                    fit: BoxFit.fill,
                  ),
                  shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(30),
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
                  SizedBox(height: 100),
                  ElevatedButton(onPressed: (){}, child: Text("Login")),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.person),
                hintText: "Enter Number",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.person),
                hintText: "Password",
                border: OutlineInputBorder(),
              ),
            ),
          ),
            SizedBox(height: 100),
            ElevatedButton(onPressed: (){}, child: Text("Login")),
        ],
      ),
    );
  }
}
