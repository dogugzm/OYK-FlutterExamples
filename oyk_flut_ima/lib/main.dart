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
      theme: ThemeData(primarySwatch: Colors.pink),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Image Türleri"),
        ),
        body: ImageTurleri(),
      ),
    );
  }
}

class ImageTurleri extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink.shade200,
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  width: 100,
                  height: 100,
                  child: Image.asset("images /image1.jpg"),
                ),
              ),
              Expanded(
                child: Container(
                  width: 100,
                  height: 100,
                  child: Image.asset("images/image1.jpg"),
                ),
              ),
              Expanded(
                child: Container(
                  width: 100,
                  height: 100,
                  child: Image.asset("images/image1.jpg"),
                ),
              ),
              Expanded(
                child: Container(
                  width: 100,
                  height: 100,
                  child: Image.asset("images/image1.jpg"),
                ),
              ),
              Expanded(
                child: Container(
                  width: 100,
                  height: 100,
                  child: Image.asset("images/image1.jpg"),
                ),
              ),
              Expanded(
                child: Container(
                  width: 100,
                  height: 100,
                  child: Image.network(
                      "https://vignette.wikia.nocookie.net/blue-cat-of-nyc/images/d/d0/Sonic.png/revision/latest?cb=20190822171647"),
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  color: Colors.grey.shade400,
                  child: CircleAvatar(
                    radius: 90,
                    backgroundColor: Colors.yellowAccent,
                    backgroundImage: NetworkImage(
                        "https://vignette.wikia.nocookie.net/blue-cat-of-nyc/images/d/d0/Sonic.png/revision/latest?cb=20190822171647"),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.grey.shade400,
                  child: CircleAvatar(
                    radius: 90,
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage("images/image1.jpg"),
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                height: 100,
                width: 100,
                child: FadeInImage.assetNetwork(
                    placeholder: "images/giphy.gif",
                    image:
                        "https://vignette.wikia.nocookie.net/blue-cat-of-nyc/images/d/d0/Sonic.png/revision/latest?cb=20190822171647"),
              )
            ],
          )
        ],
      ),
    );
  }
}
