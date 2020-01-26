import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Rehber"),
        ),
        body: deneme(),
      ),
    );
  }
}

class deneme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView(
      children: <Widget>[
        Column(
          children: <Widget>[
            Card(
              elevation: 10,
              child: ListTile(
                leading: CircleAvatar(
                  radius: 15,
                  child: Icon(Icons.person),
                ),
                title: Text("Ahmet A."),
                subtitle: Text("Bilgisayar Müh."),
                trailing: Icon(Icons.arrow_forward),
              ),
            ),
            Card(
              elevation: 10,
              child: ListTile(
                leading: CircleAvatar(
                  radius: 15,
                  child: Icon(Icons.person),
                ),
                title: Text("Ali P."),
                subtitle: Text("Bilgisayar Müh."),
                trailing: Icon(Icons.arrow_forward),
              ),
            ),
            Card(
              elevation: 10,
              child: ListTile(
                leading: CircleAvatar(
                  radius: 15,
                  child: Icon(Icons.person),
                ),
                title: Text("Ayşe H."),
                subtitle: Text("Bilgisayar Müh."),
                trailing: Icon(Icons.arrow_forward),
              ),
            ),
            Container(
              width: 250,
              height: 250,
              child: Image.asset(
                  "images/directory.png"),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  FloatingActionButton(
                    backgroundColor: Colors.grey,
                    onPressed: () => debugPrint("Butona Basıldı"),
                    child: Icon(Icons.delete),
                  ),
                  FloatingActionButton(
                    backgroundColor: Colors.grey,
                    onPressed: () => debugPrint("Butona Basıldı"),
                    child: Icon(Icons.add),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    ));
  }
}
