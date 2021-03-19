import 'package:flutter/material.dart';
import 'home_page.dart';

class ButtonKembali extends StatelessWidget {
  const ButtonKembali({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(),
          )
        );
      },
      child: Card(
        color: Colors.purple,
        child: Container(
          width: 200,
          alignment: Alignment.center,
          margin: EdgeInsets.all(8),
          child: Text("Kembali", style: TextStyle(color: Colors.white),),
        ),
      ),
    );
  }
}