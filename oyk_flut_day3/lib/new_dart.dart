import 'package:flutter/material.dart';

class aSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),

      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("A Sayfası"),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Text("A Sayfasına Hoşgeldiniz")
            ],
          ),
        ),
      ),
    );
  }
}
