import 'package:flutter/material.dart';
import 'package:oyk_flut_day3/dart1.dart';
import 'package:oyk_flut_day3/dart_2.dart';
import 'package:oyk_flut_day3/last_dart.dart';
import 'package:oyk_flut_day3/new_dart.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Navigasyon İşlemleri"),
        ),
        body: deneme(),
      ),
    );
  }
}

class deneme extends StatelessWidget {
  String gonderilenVeri = "Navigasyon İşlemleri Sayfasından Geldim";

  //String gonderilenVeri1 = "Navigasyon İşlemleri Sayfasından Geldim";

  @override
  Widget build(BuildContext context) {
    return Container(
      child: IntrinsicHeight(
        child: Column(
          children: <Widget>[
            RaisedButton(
              onPressed: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => aSayfasi())),
              child: Text(
                "A Sayfasına Git",
                style: TextStyle(color: Colors.black),
              ),
              color: Colors.grey.shade200,
            ),
            RaisedButton(
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => bSayfasi(gonderilenVeri))),
              child: Text(
                "B Sayfasına Veri Gönder",
                style: TextStyle(color: Colors.black),
              ),
              color: Colors.grey.shade200,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push<bool>(
                  context,
                  MaterialPageRoute(builder: (context) => cSayfasi()),
                ).then((gelenDeger) {
                  debugPrint("Pop işleminden gelen değer $gelenDeger");
                });
              },
              child: Text(
                "C Sayfasına Git Ve Veri Getir",
                style: TextStyle(color: Colors.black),
              ),
              color: Colors.white,
            ),
            RaisedButton(
              onPressed: () => {
                _navigateAndDisplaySelection(context),
              },
              child: Text(
                "D sayfasına git veri tipi getir ve göster.",
                style: TextStyle(color: Colors.black),
              ),
              color: Colors.grey.shade200,
            ),
            RaisedButton(
              onPressed: () async {
                //yine navigator işlemlerini bir değere atıyoruz
                String value =
                    await Navigator.push(context, new MaterialPageRoute<String>(
                        //navigator ile yönlendirdiğimiz widget
                        builder: (BuildContext context) {
                  //center'ın içinde GestureDetector'a yönlendiriyoruz

                  return Center(
                    child: GestureDetector(
                        //yönlendirilen widget'ta bir container oluşturduk
                        child: Container(
                            color: Colors.greenAccent,
                            child: Text(
                              'Ekran silindi,'
                              ' geri dönmek için tıklayın',
                              style: TextStyle(fontSize: 20),
                              textAlign: TextAlign.center,
                            )),
                        onTap: () {
                          Navigator.pop(context, "Anasayfaya dönüldü");
                        }),
                  );
                }));

                print(value);
              },
              child: new Text(
                "Ekranı değiştirip geri dön",
                style: TextStyle(color: Colors.black),
              ),
              color: Colors.grey.shade200,
            ),
          ],
        ),
      ),
    );
  }
}

_navigateAndDisplaySelection(BuildContext context) async {
  final result = await Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => dSayfasi()),
  );

  Scaffold.of(
      context) //diğer sayfalardan çekilen veriyi bu sayfada göstermek için
    ..removeCurrentSnackBar()
    ..showSnackBar(SnackBar(
        duration: Duration(minutes: 3), //ekranda kalma süresi
        content: Text("Gelen veriniz : $result"))); //yansıtma işlemi
}
