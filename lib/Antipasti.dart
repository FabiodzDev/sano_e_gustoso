import 'package:flutter/material.dart';

class Antipasti extends StatefulWidget {
  @override
  _AntipastiState createState() => _AntipastiState();
}

class _AntipastiState extends State<Antipasti> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      padding: EdgeInsets.all(20),
      child: ListView(
        children: [
          Container(
              height: 400,
              decoration: BoxDecoration(
                  color: Colors.orange,
                  image: DecorationImage(
                    image: AssetImage('images/martina.png'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(10))),
          SizedBox(
            height: 10,
          ),
          Text(
            'Ciao, sono Martina e ti ringrazio per aver scaricato la mia applicazione. ',
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Se sei qui, è perché immagino tu conosca già il mio sito web sanoegustoso.com , nel quale ho pubblicato alcune centinaia di ricette create con pentole AMC.',
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Ho deciso di creare questa app per contraccambiare la tua fiducia nel seguirmi e quindi facilitare la visualizzazione delle ricette anche tramite il tuo smartphone',
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ],
      ),
    ));
  }
}
