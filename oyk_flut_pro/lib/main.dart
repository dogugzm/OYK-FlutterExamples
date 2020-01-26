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
      theme: ThemeData(primarySwatch: Colors.brown),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Ayın Evreleri"),
        ),
        body: AyinEvreleri(),
      ),
    );
  }
}

class AyinEvreleri extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.brown.shade200,
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              "Ay' ın evreleri",
              style: TextStyle(fontSize: 35),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              CircleAvatar(
                radius: 30,
                child: ClipOval(
                  child: Image.asset(
                    'resimler/son_hilal.jpg',
                    width: 300,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              CircleAvatar(
                radius: 30,
                child: ClipOval(
                  child: Image.asset(
                    'resimler/ilk_dort.jpg',
                    width: 300,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              CircleAvatar(
                radius: 30,
                child: ClipOval(
                  child: Image.asset(
                    'resimler/dolunay.jpg',
                    width: 300,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              CircleAvatar(
                radius: 30,
                child: ClipOval(
                  child: Image.asset(
                    'resimler/son_dort.jpg',
                    width: 300,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              CircleAvatar(
                radius: 30,
                child: ClipOval(
                  child: Image.asset(
                    'resimler/hilal.jpg',
                    width: 300,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              /* Expanded(
                child: Container(
                  width: 100,
                  height: 100,
                  //color: Colors.yellow,
                  child: Image.asset("resimler/dolunay.jpg"),
                ),
              ),
              Expanded(
                child: Container(
                  width: 100,
                  height: 100,
                  child: Image.asset("resimler/hilal.jpg"),
                ),
              ),
              Expanded(
                child: Container(
                  width: 100,
                  height: 100,
                  child: Image.asset("resimler/ilk_dort.jpg"),
                ),
              ),
              Expanded(
                child: Container(
                  width: 100,
                  height: 100,
                  child: Image.asset("resimler/son_dort.jpg"),
                ),
              ),
              Expanded(
                child: Container(
                  width: 100,
                  height: 100,
                  child: Image.asset("resimler/son_hilal.jpg"),
                ),
              ),*/
            ],
          ),
          /*Container(
            height: 200,
            width: 200,
            child: FadeInImage.assetNetwork(
                placeholder: "resimler/giphy.gif",
                image:
                    "https://www.hayretedeceksin.com/wp-content/uploads/2018/04/sun-11582_1920.jpg"),
          ),*/
          Container(
            padding: EdgeInsets.all(15),
            child:ClipOval(
              child: Image.network(
                'https://www.hayretedeceksin.com/wp-content/uploads/2018/04/sun-11582_1920.jpg',
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
            ), 
          ) ,
          
          Container(
            child: FlatButton(
              color: Colors.brown,
              onPressed: () => debugPrint("Butona Basıldı"),
              child: Text(
                "Flat Button",
                style: TextStyle(fontSize: 35, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
