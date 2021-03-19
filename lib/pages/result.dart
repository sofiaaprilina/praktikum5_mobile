import 'package:flutter/material.dart';
import 'package:praktikum5/models/item.dart';

import 'item_page.dart';

class Result extends StatelessWidget {
  const Result({
    Key key,
    @required this.item,
  }) : super(key: key);

  final Item item;

  @override
  Widget build(BuildContext context) {
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
  }
}