import 'package:flutter/material.dart';

class list3 extends StatefulWidget {
  const list3({super.key});

  @override
  State<list3> createState() => _list3State();
}

class UserInfo {
  String name;
  String number;
  String password;
  UserInfo({required this.name, required this.number, required this.password});
}

class _list3State extends State<list3> {

  final List<UserInfo> items = [];

  final ctrl1 = TextEditingController();
  final ctrl2 = TextEditingController();
  final ctrl3 = TextEditingController();
  final editctrl = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              textAlign: TextAlign.end,
              controller: ctrl1,
              decoration: InputDecoration(
                  hintText: "Enter Name",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: ctrl2,
              textAlign: TextAlign.end,
              decoration: InputDecoration(
                  hintText: "Enter Number",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: ctrl3,
              textAlign: TextAlign.end,
              decoration: InputDecoration(
                  hintText: "Enter Password",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              if (ctrl1.text.isNotEmpty && ctrl2.text.isNotEmpty && ctrl3.text.isNotEmpty) {
                setState(() {
                  items.add(UserInfo(name: ctrl1.text, number: ctrl2.text, password: ctrl3.text));
                  ctrl1.clear();
                  ctrl2.clear();
                  ctrl3.clear();
                });
              }
            },
            child: Text("Enter"),
          ),
          SizedBox(height: 80),
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 4,
                  child: ListTile(
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Name: ${items[index].name}"),
                        Text("Number: ${items[index].number}"),
                        Text("Password: ${items[index].password}"),
                      ],
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: Icon(Icons.delete_outline),
                          onPressed: () {
                            setState(() {
                              items.removeAt(index);
                            });
                          },
                        ),
                        IconButton(
                          icon: Icon(Icons.edit),
                          onPressed: () {
                            TextEditingController editNameController = TextEditingController(text: items[index].name);
                            TextEditingController editNumberController = TextEditingController(text: items[index].number);
                            TextEditingController editPasswordController = TextEditingController(text: items[index].password);

                            showDialog(
                              context: context,
                              barrierDismissible: false,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: const Text('Edit Item'),
                                  content: SingleChildScrollView(
                                    child: ListBody(
                                      children: [
                                        TextFormField(
                                          controller: editNameController,
                                          decoration: InputDecoration(
                                            hintText: "Name",
                                          ),
                                        ),
                                        TextFormField(
                                          controller: editNumberController,
                                          decoration: InputDecoration(
                                            hintText: "Number",
                                          ),
                                        ),
                                        TextFormField(
                                          controller: editPasswordController,
                                          decoration: InputDecoration(
                                            hintText: "Password",
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  actions: [
                                    TextButton(
                                      child: const Text('Cancel'),
                                      onPressed: () {
                                        Navigator.of(context).pop(); // Close the dialog
                                      },
                                    ),
                                    TextButton(
                                      child: const Text('Save'),
                                      onPressed: () {
                                        setState(() {
                                          items[index].name = editNameController.text;
                                          items[index].number = editNumberController.text;
                                          items[index].password = editPasswordController.text;
                                          editNameController.clear();
                                          editNumberController.clear();
                                          editPasswordController.clear();
                                        });
                                        Navigator.of(context).pop();
                                      },
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                        ),

                      ]
                ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}


