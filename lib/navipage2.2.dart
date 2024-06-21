import 'package:flutter/material.dart';

class navipage3 extends StatefulWidget {
  const navipage3({super.key});

  @override
  State<navipage3> createState() => _navipage3State();
}

class _navipage3State extends State<navipage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink.shade50,
        leading: Icon(Icons.arrow_circle_left_outlined,size: 40,),
        title: Center(child: Text("Profile",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 40),
      ),
    ),
      ),
      body: Container(
        color: Colors.purple.shade50,
        child: ListView(
            children:[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Report",style: TextStyle(fontStyle: FontStyle.italic,fontSize: 30)),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  color: Colors.purple.shade50,
                  child: ListTile(
                    leading: Icon(Icons.person,),
                    title: Center(child: Text('Report 1',style: TextStyle(fontSize: 25))),
                    trailing: Icon(Icons.arrow_forward_ios_rounded),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  color: Colors.pink.shade50,
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Center(child: Text('Report 2',style: TextStyle(fontSize: 25))),
                    trailing: Icon(Icons.arrow_forward_ios_rounded),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Help",style: TextStyle(fontStyle: FontStyle.italic,fontSize: 30),),
              ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
                    color: Colors.pink.shade100,
                    child: ListTile(
                      leading: Icon(Icons.person),
                      title: Center(child: Text('Logout',style: TextStyle(fontSize: 25))),
                      trailing: Icon(Icons.arrow_forward_ios_rounded),
                    ),
                  ),
          ),
            ],
          ),
      ),
    );
  }
}
