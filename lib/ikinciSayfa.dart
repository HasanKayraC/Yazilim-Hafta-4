import 'package:flutter/material.dart';

class IkinciSayfa extends StatefulWidget {
  const IkinciSayfa({super.key, required this.gelenBilgi});
  final String gelenBilgi;
  @override
  State<StatefulWidget> createState() {
    return _ikinciSayfaState();
  }
}

class _ikinciSayfaState extends State<IkinciSayfa> {
  @override
  Widget build(Object context) {
    //---------------------------------> Scaffold Widget'i -Başlangıç
    return Scaffold(
        //---------------------------------> AppBar Özelliği -Başlangıç
        appBar: AppBar(
          title: Text("2. Sayfa"),
        ),
        //---------------------------------> AppBar Özelliği -Bitiş
        //---------------------------------> Body Özelliği -Başlangıç
        body: Center(
          child: Container(
            height: 100,
            width: 350,
            alignment: Alignment.center,
            color: Colors.green,
            child: Text("Gelen Bilgi: "),
          ),
        )
        //---------------------------------> Body Özelliği -Bitiş
        );
    //---------------------------------> Scaffold Widget'i
  }
}
