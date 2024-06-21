import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:qwerty/navigation2.dart';

class navipage1 extends StatefulWidget {
  const navipage1({super.key});

  @override
  State<navipage1> createState() => _navipage1State();
}

class _navipage1State extends State<navipage1> {
  int _num= 0;//by default we have to give

  final page=[ //index for navigating from page to page
    navipage1(),
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
      body:
         Column(
           mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Container(
                      color: Colors.pink.shade50,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter Name",
                          border: OutlineInputBorder(),
                        ),
                        validator: (name){
                          if(name == null || name.isEmpty)
                          {
                            return "Invalid Name";
                          }
                          else if(!RegExp(r'^[A-Za-z][A-Za-z0-9_]{7,29}$').hasMatch(name)){
                            return "Please Enter Valid Name";
                          }
                          },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Container(
                      color: Colors.purple.shade50,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: "Enter Password",
                          border: OutlineInputBorder(),
                        ),
                        validator: (password){
                          if(password == null || password.isEmpty || password!.length <=8)
                          {
                            return "Please Enter Valid Password";
                          }
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 100,),
                  ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const navigation()));
                      },
                        child: Text("Login")),
                ],
              ),
    );
  }
}
