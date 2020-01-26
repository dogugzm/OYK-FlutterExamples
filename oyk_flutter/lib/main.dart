import 'package:flutter/material.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatefulWidget {
  State<StatefulWidget> createState() => MyApp2();
}

class MyApp2 extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                FloatingActionButton(
                  child: Icon(
                    Icons.airport_shuttle,
                    size: 30,
                  ),
                ),
                FloatingActionButton(
                  child: Icon(
                    Icons.airport_shuttle,
                    size: 30,
                  ),
                ),
                FloatingActionButton(
                  child: Icon(
                    Icons.airport_shuttle,
                    size: 30,
                  ),
                ),
                FloatingActionButton(
                  child: Icon(
                    Icons.airport_shuttle,
                    size: 30,
                  ),
                ),
                FloatingActionButton(
                  child: Icon(
                    Icons.airport_shuttle,
                    size: 30,
                  ),
                ),
              ],
            ),
            FloatingActionButton(
              child: Icon(
                Icons.airport_shuttle,
                size: 30,
              ),
            ),
            FloatingActionButton(
              child: Icon(
                Icons.airport_shuttle,
                size: 30,
              ),
            ),
            FloatingActionButton(
              child: Icon(
                Icons.airport_shuttle,
                size: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
