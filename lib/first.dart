import 'package:flutter/material.dart';
import 'dart:ui';

class second extends StatelessWidget {
  const second({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/tree.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: [
            Center(
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/girl.jpg"),
                    fit: BoxFit.fill,
                  ),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 200,
                    width: 180,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/girl.jpg"),
                        fit: BoxFit.fill,
                      ),
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/girl.jpg"),
                              fit: BoxFit.fill,
                            ),
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/girl.jpg"),
                              fit: BoxFit.fill,
                            ),
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/girl.jpg"),
                              fit: BoxFit.fill,
                            ),
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/girl.jpg"),
                              fit: BoxFit.fill,
                            ),
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Container(
              height: 500,
              width: 400,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 430,
                      width: 380,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/girl.jpg"),
                          fit: BoxFit.fill,
                        ),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: ClipRect(
                        child: BackdropFilter(
                          filter: ImageFilter.blur(
                            sigmaX: 5,
                            sigmaY: 5,
                          ),
                          child:Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  height: 250,
                                  width: 150,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage("assets/girl.jpg"),
                                      fit: BoxFit.fill,
                                    ),
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(60),
                                  ),
                                  child: Container(
                                    color: Colors.black.withOpacity(0),
                                  ),
                                ),
                              ),
                              Column(
                                children: [
                                  SizedBox(height: 100,),
                                  Container(
                                    width: 180,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        icon: Icon(Icons.person),
                                        hintText: "Enter Number",
                                        border: OutlineInputBorder(),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 100,),
                                  ElevatedButton(onPressed: (){}, child: Text("ok"))
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}