import 'package:flutter/material.dart';
import 'package:foster_mobile/models/item.dart';
import 'package:foster_mobile/widgets/left_drawer.dart';

class Item_Detail_Page extends StatelessWidget {
  final Item item;

  const Item_Detail_Page({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Item Details'),
        backgroundColor: Colors.purple,
        foregroundColor: Colors.yellow,
      ),
      drawer: const LeftDrawer(),
      body: Center(
        child: Card(
          elevation: 8.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          margin: const EdgeInsets.all(20.0),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.network(
                  'assets/myimage.png',
                  width: 200,
                  height: 100,
                ),
                const SizedBox(height: 12),
                Text(
                  item.fields.name,
                  style: const TextStyle(
                    fontSize: 24.0, // Increase font size
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  "Price: ${item.fields.price}",
                  style: const TextStyle(fontSize: 18.0),
                ),
                const SizedBox(height: 12),
                Text(
                  "Amount: ${item.fields.amount}",
                  style: const TextStyle(fontSize: 18.0),
                ),
                const SizedBox(height: 12),
                Text(
                  "Description: ${item.fields.description}",
                  style: const TextStyle(fontSize: 18.0),
                ),
                const SizedBox(height: 12),
                Text(
                  "Type: ${item.fields.type}",
                  style: const TextStyle(fontSize: 18.0),
                ),
                const SizedBox(height: 12),
                Text(
                  "Rarity: ${item.fields.rarity}",
                  style: const TextStyle(fontSize: 18.0),
                ),
                const SizedBox(height: 12),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Icon(Icons.arrow_back),
      ),
    );
  }
}
