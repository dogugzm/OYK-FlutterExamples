import 'package:flutter/material.dart';

class cSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(

     onWillPop: (){
        debugPrint("Butona basmadan geri döndü");       // BUTONSUZ GERİ DÖNME İŞLEMİ
        Navigator.pop(context,true);
        return Future.value(false);
      },

      child: Scaffold(
        appBar: AppBar(
          title: Text("C Sayfası"),

        ),

        body: Center(
          child: Column(
            children: <Widget>[
              Text("C Sayfası "),
              RaisedButton(onPressed:() => Navigator.pop(context,false) , child: Text("Ana Sayfaya Dön"),color: Colors.grey,),
            ],
          ),
        ),
      ),
    );
  }
}
