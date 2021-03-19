import 'package:flutter/material.dart';
import 'package:praktikum5/models/item.dart';
import 'buttonKembali.dart';

class ItemPage extends StatelessWidget {
  final Item item;
  ItemPage({Key key, this.item}):super(key: key);

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        backgroundColor: Colors.purple[50],
        appBar: AppBar(
          title: Text('Detail Buku'),
        ),
        body: Container(
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  child: Image(
                    image: AssetImage(item.picture),
                    width: 200,
                    fit: BoxFit.contain,
                  ),
                ),
                Card(
                  color: Colors.purple[100],
                    child: Container(
                  margin: EdgeInsets.all(8),
                  width: 200,
                  child: Text("Judul : " + item.title),
                )),
                Card(
                  color: Colors.purple[100],
                  child: Container(
                    width: 200,
                    margin: EdgeInsets.all(8),
                    child: Text("Harga : " + item.price.toString()),
                )),
                Card(
                  color: Colors.purple[100],
                    child: Container(
                  width: 200,
                  margin: EdgeInsets.all(8),
                  child: Text("Stok   : " + item.stock.toString()),
                )),
                ButtonKembali(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

