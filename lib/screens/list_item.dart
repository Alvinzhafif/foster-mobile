import 'package:flutter/material.dart';
import 'package:foster_mobile/screens/detailItem.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:foster_mobile/models/item.dart';
import 'package:foster_mobile/widgets/left_drawer.dart';

class ItemPage extends StatefulWidget {
  const ItemPage({Key? key}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ItemPage> {
  Future<List<Item>> fetchProduct() async {
    // TODO: Change the URL to your Django app's URL. Don't forget to add the trailing slash (/) if needed.
    var url = Uri.parse('http://localhost:8000/json/');
    var response = await http.get(
      url,
      headers: {"Content-Type": "application/json"},
    );

    // decode the response to JSON
    var data = jsonDecode(utf8.decode(response.bodyBytes));

    // convert the JSON to Product object
    List<Item> list_product = [];
    for (var d in data) {
      if (d != null) {
        list_product.add(Item.fromJson(d));
      }
    }
    return list_product;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('View Items'),
          backgroundColor: Colors.purple,
          foregroundColor: Colors.yellow,
        ),
        drawer: const LeftDrawer(),
        body: FutureBuilder(
            future: fetchProduct(),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return const Center(child: CircularProgressIndicator());
              } else {
                if (!snapshot.hasData) {
                  return const Column(
                    children: [
                      Text(
                        "No product data available.",
                        style: TextStyle(
                            color: Color.fromARGB(255, 138, 89, 216),
                            fontSize: 20),
                      ),
                      SizedBox(height: 8),
                    ],
                  );
                } else {
                  return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (_, index) => Card(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 12),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  Item_Detail_Page(item: snapshot.data![index]),
                            ),
                          );
                        },
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/myimage.png',
                              width: 200,
                              height: 100,
                            ),
                            const SizedBox(width: 16),
                            Expanded(
                              child: ListTile(
                                title: Text(
                                  "${snapshot.data![index].fields.name}",
                                  style: const TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                subtitle: Text(
                                    "Price: ${snapshot.data![index].fields.price} \nAmount: ${snapshot.data![index].fields.amount} \nDescription: ${snapshot.data![index].fields.description} \nType: ${snapshot.data![index].fields.type} \nRarity: ${snapshot.data![index].fields.rarity}"),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }
              }
            }));
  }
}
