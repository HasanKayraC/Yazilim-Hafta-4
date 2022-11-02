import 'package:flutter/material.dart';

class UcuncuSayfa extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _UcuncuSayfaState();
  }
}

class _UcuncuSayfaState extends State<UcuncuSayfa> {
  @override
  Widget build(Object context) {
    //---------------------------------> Scaffold Widget'i -Başlangıç
    return Scaffold(
        //---------------------------------> AppBar Özelliği -Başlangıç
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Text("3. Sayfa"),
        ),
        //---------------------------------> AppBar Özelliği -Bitiş
        //---------------------------------> Body Özelliği -Başlangıç
        body: Center(
          child: Container(
            height: 100,
            width: 350,
            alignment: Alignment.center,
            color: Colors.red,
            child: Text("Bu sayfayı sadece parolayı bilenler görebilir"),
          ),
        )
        //---------------------------------> Body Özelliği -Bitiş
        );
    //---------------------------------> Scaffold Widget'i
  }
}
