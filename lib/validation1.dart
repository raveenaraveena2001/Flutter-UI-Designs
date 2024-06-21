import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'first.dart';

class validate extends StatefulWidget {
  const validate({super.key});

  @override
  State<validate> createState() => _validateState();
}

class _validateState extends State<validate> {
  final _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _key,
        child: ListView(
          children:[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
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
              padding: const EdgeInsets.all(8.0),
              child: Container(
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter Number",
                    border: OutlineInputBorder(),
                  ),
                  validator: (phoneNo){
                    if(phoneNo == null || phoneNo.isEmpty || phoneNo.length !=10)
                    {
                      return "Please Enter Valid PhoneNo";
                    }
                    else if(!RegExp(r'^\s*(?:\+?(\d{1,3}))?[-.(]*(\d{3})[-.)]*(\d{3})[-. ]*(\d{4})(?: *x(\d+))?\s*$').hasMatch(phoneNo)){
                      return "Please Enter Valid PhoneNo";
                    }
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter email",
                    border: OutlineInputBorder(),
                  ),
                  validator: (email){
                      if (email == null || email.isEmpty) {
                        return "Please Enter Valid email";
                      }
                      else if(!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(email)){
                        return "Please Enter Valid email";
                      }
                    },
                ),
              ),
            ),
            SizedBox(height:100 ,),
            ElevatedButton(onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const second()),
              );


                  // if (_key.currentState!.validate()) {
                  //   ScaffoldMessenger.of(context).showSnackBar(
                  //       SnackBar(content: Text("valid")));
                  // }
                },
                    child: Text("Enter")),


            GestureDetector(
              onTap: ()
              {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const second()),
                );
              },
              child: Container(
                height: 300,
                width: 100,
                color: Colors.cyan,
              ),
            ),
           
          ],
        ),
      ),
    );
  }
}


