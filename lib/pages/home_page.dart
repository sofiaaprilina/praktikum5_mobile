import 'package:flutter/material.dart';
import 'package:praktikum5/models/item.dart';
import 'result.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(title: 'Bumi', price: 50000, stock: 3, picture: 'assets/bumi.jpg'),
    Item(title: 'Bulan', price: 60000, stock: 4, picture: 'assets/bulan.jpg'),
    Item(title: 'Matahari', price: 65000, stock: 2, picture: 'assets/matahari.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        backgroundColor: Colors.purple[50],
        appBar: AppBar(
          title: Text('BukuKu'),
        ),
        body: Container(
          margin: EdgeInsets.all(8),
          child: ListView.builder(
              padding: EdgeInsets.all(8),
              itemCount: items.length,
              itemBuilder: (context, index) {
                final item = items[index];
                return Result(item: item);
              }),
        ),
      ),
    );
  }
}


