import 'package:flutter/material.dart';

class dSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("D Sayfası"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pop(context, "D sayfası çok güzel");
                  },
                  child: Text(
                    "Anasayfaya string verisi gönder",
                    style: TextStyle(color: Colors.black),
                  ),
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pop(context, 100);
                  },
                  child: Text(
                    "Anasayfaya int verisi gönder",
                    style: TextStyle(color: Colors.black),
                  ),
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
