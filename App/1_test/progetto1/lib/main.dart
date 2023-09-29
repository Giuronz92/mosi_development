import 'package:flutter/material.dart';
// import 'package:progetto1/pages/home_page.dart';

void main() {
  runApp(App());
}

// CREO LA CLASSE PADRE DI TUTTI - APP -
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

//CREO UNA STATEFULWIDGET PERCHE' AVREMO DEI MUTAMENTI NELLA HOME

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomePageState();
}

//INIZIALIZZO LA HOMEPAGE AGGIUNGENDO IL CONTATORE AL BODY

class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contatore Flutter"),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          "Persone in lista di attesa: $counter",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      // AGGIUNGO UN FLOATING ACTION BUTTON E ASSEGNO UNA VARIABILE IN LINEA "COUNTER"
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //USARE SETSTATE PER RESTITUIRE IL VALORE A DISPLAY
          setState(() {
            counter = counter + 1;
          });
        },
        child: Icon(Icons.plus_one),
      ),
    );
  }
}
