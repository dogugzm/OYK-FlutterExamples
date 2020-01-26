import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("ListView"),
          ),
          body: BodyLayout(),
        ));
  }
}

class BodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _myListView(context);
  }
}

Widget _myListView(BuildContext context) {
  /*final ulkeler = [
    "Türkiye",
    "Polonya",
    "Portekiz",
    "Maceristan",
    "Almanya",
    "Fransa",
    "Lüksemburg",
    "İspanya",
    "İtalya",
    "Avusturya",
    "Çek Cumhuriyeti",
    "Çin",
    "Japonya",
  ];
  return ListView.builder(
    itemCount: ulkeler.length,
    itemBuilder: (context, index) {
      return ListTile(
        title: Text(ulkeler[index]),
        subtitle: Text("Ülke"),
        onTap:()=> print(ulkeler[index] + " tıklandı. "),
      );
    },
  );*/
  return Column(
    children: <Widget>[
      Card(
        margin: EdgeInsets.all(13),
        elevation: 30,
        color: Colors.blue.shade200,
        child: ListTile(
          leading: CircleAvatar(child: Icon(Icons.person), radius: 15),
          title: Text("Gizem Ece Çetin"),
          subtitle: Text("Kırıkkale Üni."),
          trailing: Icon(Icons.call),
        ),
      ),
      Divider(color: Colors.black,),
      Card(
        margin: EdgeInsets.all(13),
        elevation: 30,
        color: Colors.blue.shade200,
        child: ListTile(
          leading: CircleAvatar(child: Icon(Icons.person), radius: 15),
          title: Text("Gizem Ece Çetin"),
          subtitle: Text("Kırıkkale Üni."),
          trailing: Icon(Icons.call),
        ),
      ),
      Divider(color: Colors.black,),
      Card(
        margin: EdgeInsets.all(13),
        elevation: 30,
        color: Colors.blue.shade200,
        child: ListTile(
          leading: CircleAvatar(child: Icon(Icons.person), radius: 15),
          title: Text("Gizem Ece Çetin"),
          subtitle: Text("Kırıkkale Üni."),
          trailing: Icon(Icons.call),
        ),
      ),
      Divider(color: Colors.black,),
      Card(
        margin: EdgeInsets.all(13),
        elevation: 30,
        color: Colors.blue.shade200,
        child: ListTile(
          leading: CircleAvatar(child: Icon(Icons.person), radius: 15),
          title: Text("Gizem Ece Çetin"),
          subtitle: Text("Kırıkkale Üni."),
          trailing: Icon(Icons.call),
        ),
      ),
      Divider(color: Colors.black,thickness: 3,),
      Card(
        margin: EdgeInsets.all(13),
        elevation: 30,
        color: Colors.blue.shade200,
        child: ListTile(
          leading: CircleAvatar(child: Icon(Icons.person), radius: 15),
          title: Text("Gizem Ece Çetin"),
          subtitle: Text("Kırıkkale Üni."),
          trailing: Icon(Icons.call),
        ),
      ),
    Divider(color: Colors.black,),
    ],
  );


}
