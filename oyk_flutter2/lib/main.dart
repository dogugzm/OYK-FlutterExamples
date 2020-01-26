import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: Text(
            "Buton Türleri",
            style: TextStyle(fontSize: 25),
            textAlign: TextAlign.center,
          ),
        ),
        body: ButonTurleri(),
      ),
    );
  }
}

class ButonTurleri extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 500,
      height: 500,
      color: Colors.amberAccent.shade100,
      margin: EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Buton Türleri",
            style: TextStyle(fontSize: 30),
          ),
          RaisedButton(
            onPressed: () {
              debugPrint("1. Butona Tıklandı");
            },
            color: Colors.greenAccent.shade100,
            child: Text(
              "Raised Button1",
            ),
          ),
          RaisedButton(
            onPressed: () => debugPrint("2. Butona Tıklandı"),
            color: Colors.greenAccent.shade200,
            child: Text(
              "Raised Button2",
            ),
          ),
          RaisedButton(
            onPressed: () => uzakFonksiyon(),
            color: Colors.greenAccent.shade400,
            child: Text(
              "Raised Button3",
            ),
          ),
          IconButton(
            icon: Icon(Icons.all_inclusive),
            color: Colors.black,
            onPressed: () => debugPrint("Icon Butonuna Tıklandı"),
            iconSize: 50,
          ),
          FlatButton(
            onPressed: () => debugPrint("Flat Buttona Tıklandı"),
            child: Text(
              "Flat Button",
              style: TextStyle(fontSize: 30),
            ),
          ),
        ],
      ),
    );
  }
}

void uzakFonksiyon() {
  debugPrint("3.Butona Basıldı");
}
