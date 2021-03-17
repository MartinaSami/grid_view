import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget gridView(String title, Color color) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Text(
        title,
        style: TextStyle(fontSize: 30),
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            color.withOpacity(0.7),
            color,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }

  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('MyApp')),
      body: Container(
        padding: EdgeInsets.only(top: 15),
        child: GridView(
          children: <Widget>[
            gridView("Text1", Colors.cyan),
            gridView("Text2", Colors.blue),
            gridView("Text3", Colors.pink),
            gridView("Text4", Colors.purple),
            gridView("Text5", Colors.yellow),
            gridView("Text6", Colors.green),
            gridView("Text1", Colors.cyan),
            gridView("Text2", Colors.blue),
            gridView("Text3", Colors.pink),
            gridView("Text4", Colors.purple),
            gridView("Text5", Colors.yellow),
            gridView("Text6", Colors.green),
            /*Container(
              padding: EdgeInsets.all(15),
              child: Text(
                'Text1',
                style: TextStyle(fontSize: 30),
              ),
              decoration: BoxDecoration(
                color: Colors.cyan[300],
              ),
            ),*/
          ],
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 1.5,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
        ),
      ),
    ));
  }
}
