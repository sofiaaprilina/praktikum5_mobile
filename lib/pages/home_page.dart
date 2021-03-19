import 'package:flutter/material.dart';
import 'package:praktikum5/models/item.dart';
import 'package:praktikum5/pages/item_page.dart';

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
                return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ItemPage(item: item),
                        ));
                  },
                  child: Card(
                    color: Colors.purple[100],
                    child: Container(
                      height: 150,
                      margin: EdgeInsets.all(8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            child: Image(
                              image: AssetImage(item.picture),
                              width: 100,
                              fit: BoxFit.contain,
                            ),
                          ),
                          Column(
                            children: [
                              Expanded(child: Text('Judul : ' + item.title)),
                              Expanded(
                                child: Text(
                                  'Harga  : ' + item.price.toString(),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  'Stok   : ' + item.stock.toString(),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
