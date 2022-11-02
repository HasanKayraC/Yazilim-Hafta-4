// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/ikinciSayfa.dart';
import 'package:flutter_application_1/ucuncuSayfa.dart';

void main() {
  runApp(const MyApp());
}

String bilgi = "---";

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bilişim Atölyesi',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),

      //------------------------------------------ route başlangıç
      routes: {
        '/home': (context) => MyHomePage(),
        '/iki': (context) => IkinciSayfa(
              gelenBilgi: bilgi,
            ),
        '/uc': (context) => UcuncuSayfa(),
        //------------------------------------------
        // Bu araya yeni bir route ekle ve yönlendirmesini 3. sayfa yap
        //------------------------------------------
      },

      //------------------------------------------ route bitiş
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    //---------------------------------> Scaffold Widget'i -Başlangıç
    return Scaffold(
      //---------------------------------> AppBar Özelliği -Başlangıç
      appBar: AppBar(
        title: Text("Kasım 2022"),
      ),
      //---------------------------------> AppBar Özelliği -Bitiş
      //---------------------------------> Body Özelliği -Başlangıç
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //------------------------------------------
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/iki");
                },
                child: Text("İkinci Sayfaya git")),

            //------------------------------------------
            //------------------------------------------
            TextField(
              textAlign: TextAlign.center,
              onChanged: (value) {
                setState(() {
                  bilgi = value;
                });
              },
            ),
            SizedBox(
              height: 50,
            ),
            // Bu araya yeni bir buton ekle ve yönlendirmesini 3. sayfa yap
            TextField(
              decoration: InputDecoration(
                  hintText:
                      'Şifre'), //hint text yazı yazılmadan önce gösterilen yazıdır
              textAlign: TextAlign.center,
              onChanged: (value) {
                if (value == "571") {
                  Navigator.pushNamed(context,
                      "/uc"); //eğer 571 yazarsa hemen 3. sayfaya gider.
                }
              },
            ),

            //------------------------------------------
          ],
        ),
      ),
      //---------------------------------> Body Özelliği -Bitiş
    );
    //---------------------------------> Scaffold Widget'i
  }
}
