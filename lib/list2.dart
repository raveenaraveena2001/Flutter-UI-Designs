import 'package:flutter/material.dart';
import 'details.dart';

class list2 extends StatefulWidget {
  const list2({super.key});
  @override
  State<list2> createState() => _list2State();
}
class _list2State extends State<list2> {

  final List<String> items = [];
  final controller = TextEditingController();
  String minMaxDisplay = "";
  String lessThanFive = "";
  String greaterThanFive = "";

  void sortAscending() {
    setState(() {
      items.sort((a, b) => int.parse(a).compareTo(int.parse(b)));
    });
  }

  void sortDescending() {
    setState(() {
      items.sort((a, b) => b.compareTo(a));
    });
  }

  void lessthan() {
    if (items.isNotEmpty) {
      final List<int> intItems = items.map(int.parse).toList();
      final int lessThanFiveCount = intItems
          .where((item) => item < 5)
          .length;
      setState(() {
        lessThanFive = "Items less than 5: $lessThanFiveCount";
      });
    }
  }

  void greaterthan() {
    if (items.isNotEmpty) {
      final List<int> intItems = items.map(int.parse).toList();
      final int greaterThanFiveCount = intItems
          .where((item) => item > 5)
          .length;
      setState(() {
        greaterThanFive = "Items greater than 5: $greaterThanFiveCount";
      });
    }
  }

  void findMinMax() {
    if (items.isNotEmpty) {
      final List<int> intItems = items.map(int.parse).toList();
      final int min = intItems.reduce((value, element) =>
      value < element
          ? value
          : element);
      final int max = intItems.reduce((value, element) =>
      value > element
          ? value
          : element);
      setState(() {
        minMaxDisplay = "Min: $min, Max: $max";
      });
    }
  }

  Future<void> _showEditDialog(int index) async {
    final TextEditingController _editController = TextEditingController();
    _editController.text = items[index]; // Pre-fill the current value

    return showDialog<void>(
      context: context,
      barrierDismissible: false, // User must tap button to close
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Edit Item'),
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                TextFormField(
                  controller: _editController,
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
                  items[index] = _editController.text; // Update the item with the new value
                });
                Navigator.of(context).pop(); // Close the dialog
              },
            ),
          ],
        );
      },
    );
  }




  @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: [
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: controller,
                    textAlign: TextAlign.end,
                    decoration: InputDecoration(
                      hintText: "Enter Number",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))
                    ),
                  ),
                ),
                SizedBox(height: 50,),
                ElevatedButton(onPressed: () {
                  if (controller.text.isNotEmpty) {
                    setState(() {
                      items.add(controller.text);
                      controller.clear();
                    });
                  }
                },
                  child: const Text("OK",style: TextStyle(color: Colors.black),),
                ),
                SizedBox(height: 50,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: sortAscending, child: const Text("Asc",style: TextStyle(color: Colors.black))),
                    ElevatedButton(
                        onPressed: sortDescending, child: const Text("Desc",style: TextStyle(color: Colors.black))),
                    ElevatedButton(onPressed: lessthan, child: const Text("< 5",style: TextStyle(color: Colors.black))),
                    ElevatedButton(
                        onPressed: greaterthan, child: const Text("> 5",style: TextStyle(color: Colors.black))),
                    ElevatedButton(
                        onPressed: findMinMax, child: const Text("MinMax",style: TextStyle(color: Colors.black))),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(lessThanFive),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(greaterThanFive),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(minMaxDisplay),
                ),
          
                Container(
                  height: 400,
                  width: 350,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Expanded(
                    child: ListView.builder(
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    ItemDetailsPage(item: items[index]),
                              ),
                            );
                          },
                          child: Card(
                            elevation: 9,
                            child: ListTile(
                              title: Text(items[index]),
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
                                      _showEditDialog(index); // Pass the current item index to the edit dialog
                                    },
                                  ),
          
                                ],
                        ),
                        ),
                          ),
                                        );
                                      }
          
                                  ),
                  ),
                ),
                            ],
          ),
          ),
        ),
                        );

  }
}
