import 'package:flutter/material.dart';
import 'package:praktikum5/models/item.dart';

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
        appBar: AppBar(
          title: Text('Detail Belanja'),
        ),
        body: Container(
          child: Container(
            alignment: Alignment.center,
            child: Text(item.name + " : "+ item.price.toString()),
          ),
        ),
      ),
    );
  }
}