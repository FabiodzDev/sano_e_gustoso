import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Homex extends StatefulWidget {
  @override
  _HomexState createState() => _HomexState();
}

class _HomexState extends State<Homex> {
  MappaGoogle mappa = MappaGoogle();

  // il richiamo della classe TextEditingController è necessario per capire il testo che l'utente scrive nel FieldText
  final textFieldValueHolder = TextEditingController();
  String result = '';

  // getTextInputData --> Funzione richiamata quando si preme il tasto ricerca
  getTextInputData() {
    result = textFieldValueHolder.text;
    result = result.replaceFirst(RegExp(' '), '+');
    mappa.launchURL('http://sanoegustoso.com/?s=$result');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      padding: EdgeInsets.all(3),
      child: ListView(
        children: [
          Center(
            heightFactor: 2,
            child: Text(
              "Ricette con pentole AMC",
              style: TextStyle(
                fontStyle: FontStyle.italic, // corsivo
                fontWeight: FontWeight.w500,
                fontSize: 17,
                color: Colors.orange,
              ),
            ),
          ),
          Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Expanded(
                // MODULO X CERCARE UNA DETERMINATA RICETTA

                child: TextField(
                  controller: textFieldValueHolder,
                  cursorColor: Colors.deepOrange,
                  style: TextStyle(color: Colors.green), // COLORE TESTO
                  obscureText: false,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.orange, width: 3.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.green, width: 3.0),
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(3.0),),
                    labelText: 'Cerca',
                  ),
                ),
              ),
              Container(
                child: FlatButton(
                  onPressed: getTextInputData,
                  child: Icon(
                    Icons.search,
                    size: 40,
                    color: Colors.orange,
                    semanticLabel: 'Trova',
                  ),
                ),
              )
            ],
          ),
          Center(
            heightFactor: 2,
            child: Text(
              "IL RICETTARIO",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.green,
                fontSize: 20,
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    mappa.launchURL(
                        'http://sanoegustoso.com/tuttelericetteapp/');
                  },
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        image: DecorationImage(
                          image: AssetImage('images/ricettario.jpg'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Center(
            heightFactor: 2,
            child: Text(
              "LE PIU' CERCATE",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
                color: Colors.green,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    mappa.launchURL('http://sanoegustoso.com/?s=riso');
                  },
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                        color: Colors.pinkAccent,
                        image: DecorationImage(
                          image: AssetImage('images/risotto.jpg'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    mappa.launchURL('http://sanoegustoso.com/?s=vellutata');
                  },
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        image: DecorationImage(
                          image: AssetImage('images/vellutata.jpg'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    mappa.launchURL('http://sanoegustoso.com/?s=minestrone');
                  },
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                        color: Colors.pinkAccent,
                        image: DecorationImage(
                          image: AssetImage('images/minestrone2.jpg'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    mappa.launchURL('http://sanoegustoso.com/?s=pesc');
                  },
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                        color: Colors.pinkAccent,
                        image: DecorationImage(
                          image: AssetImage('images/fish.jpg'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ), // PESCE
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    mappa.launchURL('http://sanoegustoso.com/?s=pollo');
                  },
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        image: DecorationImage(
                          image: AssetImage('images/pollo.jpg'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    mappa.launchURL('http://sanoegustoso.com/?s=manzo');
                  },
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        image: DecorationImage(
                          image: AssetImage('images/manzo.jpg'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    mappa.launchURL('http://sanoegustoso.com/?s=maial');
                  },
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                        color: Colors.pinkAccent,
                        image: DecorationImage(
                          image: AssetImage('images/maiale.jpg'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    mappa.launchURL(
                        'http://sanoegustoso.com/ricette-amc/category/torte/');
                  },
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        image: DecorationImage(
                          image: AssetImage('images/torta.jpg'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ), // TORTA
            ],
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    ));
  }
}

class MappaGoogle {
  String url;

  MappaGoogle();

  launchURL(String url) async {
    // const url = 'https://flutter.dev';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
