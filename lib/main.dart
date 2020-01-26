import 'package:flutter/material.dart';

void main() {
  runApp(
    new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new Scaffold(
        appBar: AppBar(
          title: Text(
            "Flutter Dersleri",
            style: TextStyle(color: Colors.white),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.access_alarms,
            color: Colors.white,
            size: 20.0,
          ),
          backgroundColor: Colors.orange,
        ),
        body: Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Container(
                    child: Text(
                      "D",
                      style: TextStyle(fontSize: 30),
                    ),
                    color: Colors.orange.shade100,
                    margin: EdgeInsets.all(2.0),
                    padding: EdgeInsets.all(15),
                  ),
                  Expanded(
                    child: Container(
                      child: Text(
                        "E",
                        style: TextStyle(fontSize: 30),
                      ),
                      color: Colors.orange.shade200,
                      margin: EdgeInsets.all(2.0),
                      padding: EdgeInsets.all(15),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Text(
                        "R",
                        style: TextStyle(fontSize: 30),
                      ),
                      color: Colors.orange.shade300,
                      margin: EdgeInsets.all(2.0),
                      padding: EdgeInsets.all(15),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Text(
                        "S",
                        style: TextStyle(fontSize: 30),
                      ),
                      color: Colors.orange.shade400,
                      margin: EdgeInsets.all(2.0),
                      padding: EdgeInsets.all(15),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Text(
                        "L",
                        style: TextStyle(fontSize: 30),
                      ),
                      color: Colors.orange.shade500,
                      margin: EdgeInsets.all(2.0),
                      padding: EdgeInsets.all(15),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Text(
                        "E",
                        style: TextStyle(fontSize: 30),
                      ),
                      color: Colors.orange.shade600,
                      margin: EdgeInsets.all(2.0),
                      padding: EdgeInsets.all(15),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Text(
                        "R",
                        style: TextStyle(fontSize: 30),
                      ),
                      color: Colors.orange.shade700,
                      margin: EdgeInsets.all(2.0),
                      padding: EdgeInsets.all(15),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Text(
                        "İ",
                        style: TextStyle(fontSize: 30),
                      ),
                      color: Colors.orange.shade800,
                      margin: EdgeInsets.all(2.0),
                      padding: EdgeInsets.all(20),
                    ),
                  ),
                ],
              ),
              Container(
                child: Text(
                  "A",
                  style: TextStyle(fontSize: 30),
                ),
                color: Colors.orange.shade200,
                margin: EdgeInsets.all(2.0),
                padding: EdgeInsets.all(15),
              ),
              Container(
                child: Text(
                  "R",
                  style: TextStyle(fontSize: 30),
                ),
                color: Colors.orange.shade300,
                margin: EdgeInsets.all(2.0),
                padding: EdgeInsets.all(15),
              ),
              Container(
                child: Text(
                  "T",
                  style: TextStyle(fontSize: 30),
                ),
                color: Colors.orange.shade400,
                margin: EdgeInsets.all(2.0),
                padding: EdgeInsets.all(15),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
