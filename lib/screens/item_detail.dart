import 'package:flutter/material.dart';
import 'package:inventory_mobile/models/item.dart';

class ItemDetailPage extends StatelessWidget {
  final Item item;

  const ItemDetailPage({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.fields.name),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Name: ${item.fields.name}', style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Text('Amount: ${item.fields.amount}', style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Text('Description: ${item.fields.description}', style: TextStyle(fontSize: 20)),
            Text('Date Added: ${item.fields.dateAdded}', style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}