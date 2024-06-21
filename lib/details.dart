import 'package:flutter/material.dart';

class ItemDetailsPage extends StatelessWidget {
  final String item;

  const ItemDetailsPage({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Item Details'),
      ),
      body: Center(
        child: Text(item, style: TextStyle(fontSize: 24)),
      ),
    );
  }
}
