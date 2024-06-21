import 'package:flutter/material.dart';

class myValidation extends StatefulWidget {
  const myValidation({super.key});

  @override
  State<myValidation> createState() => _myValidationState();
}

class _myValidationState extends State<myValidation> {

  final _key = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Form(
        key: _key,
        child: Column(
          children: [
            TextFormField(
              validator: (input){
                if(input == null || input.isEmpty )
                  {
                    return "please enter valid name";
                  }
              },
            ),
            ElevatedButton(onPressed: (){
              if(_key.currentState!.validate())
              {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("ok valid")));
              }
            }, child: Text("ok")),
          ],
        ),
      ),
    );
  }
}
