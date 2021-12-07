import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Stateful widget",
    home: Favoritecity(),
  ));
}

class Favoritecity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Text("Stateful and Stateless widgets"),
    );
  }
}

class Favoritecity extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _FavoritecityState();
  }
}

class _FavoritecityState extends State<Favoritecity> {
  String namecity = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stateful app example"),
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            TextField(
              onSubmitted: (String userInput) {
                setState(() {
                  namecity = userInput;
                });
              },
            ),
            Padding(
              padding: EdgeInsets.all(30.0),
              child: Text(
                "Your best city is  $namecity",
                style: TextStyle(fontSize: 20.0),
              ),
            )
          ],
        ),
      ),
    );
  }
}
