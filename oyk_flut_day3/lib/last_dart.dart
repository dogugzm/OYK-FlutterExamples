import 'package:flutter/material.dart';

class bSayfasi extends StatelessWidget {
  String gelenVeri;

  // String gelenVeri1;

  bSayfasi(this.gelenVeri);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("B Sayfası"),
        ),
        body: Center(
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                gelenVeri,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
