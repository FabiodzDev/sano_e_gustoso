import 'package:flutter/material.dart';
import 'package:sano_e_gustoso/home.dart';
import 'package:sano_e_gustoso/splash.dart';

import 'Antipasti.dart';




void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sano e Gustoso',
      initialRoute: '/splash',            // pagina iniziale dell'app settata qui sotto, dove setto tutte le pagine che ho
      routes: { // elenco delle pagine della mia app
        '/splash' : (context) => Splash(),
        '/' : (context) => MyHomePage(),

      },
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      //home: MyHomePage()  Nel caso avessi più pagine da navigare, non uso il parametro home ma InitialRoute
    );
  }
}


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {

  List <Widget> myPages = [Homex(), Antipasti()];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {

    // String rifiutodidomanigiallo = rifiutogiallo.verifica();
    // String rifiutodidomaniblu = rifiutoblu.verifica();

    return Scaffold(
      resizeToAvoidBottomPadding: false,  // DOVREBBE NON MANDARE IN OVERFLOW I BOTTONI
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('SANO E GUSTOSO'),
        centerTitle: true,
        backgroundColor: Colors.deepOrangeAccent,
      ),
      // drawer: menuDrawer(),
      body: myPages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index){
          setState(() {
            selectedIndex = index;
            print(selectedIndex);
          });
        } ,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.deepOrangeAccent,
        selectedItemColor: Colors.white,
        selectedFontSize: 18,
        unselectedItemColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "HOME",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.sort,
              color: Colors.white,
            ),
            label: "ANTIP.",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.sort,
              color: Colors.white,
            ),
            label: "PRIMI",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.sort,
            ),
            label: "SECONDI",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sort),
            label: "DOLCI",
          ),
        ],
      ),
    );
  }
}

