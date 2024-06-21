import 'package:flutter/material.dart';

class demo extends StatelessWidget {
  const demo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        leading: Icon(Icons.menu,size: 35,color: Colors.cyan,),
        title: Text("Home page",style: TextStyle(color: Colors.cyan,fontSize: 35,fontWeight: FontWeight.bold),),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.timeline),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.calendar_today),
          ),


        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.person),
                hintText: "Enter name",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(),
          ),
          SizedBox(height: 100,),
          ElevatedButton(onPressed: (){}, child: Text("Welcome")),
          SizedBox(height: 100,),
          Container(
            height: 300,
            width: 300,
            //color: Colors.cyan,
            decoration: BoxDecoration(
              color: Colors.cyan,
              border: Border.all(),
              //borderRadius: BorderRadius.circular(35),
              image: DecorationImage(
                  image: AssetImage("assets/abc.jpg"),
                fit: BoxFit.fill
              ),
              shape: BoxShape.circle
            ),
            child: Center(child: Text("ok")),
          ),
        ],
      ),
    );
  }
}