import 'package:flutter/material.dart';
import 'package:test_5/pages/home/partials/home_page_body.dart';
import 'package:test_5/pages/home/partials/home_page_sidebar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> notes = [];

  void addNewNote() {
    final note = ([
      "Comprare espansione destiny 2",
      "Aggiungere Andrea nella lista degli spam",
      "Ricordarsi di spegnere il gatto",
      "Miraccomando dai da mangiare al fuoco",
      "Non rispondere al telefono ai clienti",
    ]..shuffle())
        .first;

    setState(() {
      notes.add(note);
    });
  }

  void onDeleteNote(String note) {
    setState(() {
      notes.remove(note);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          HomePageSidebar(addNewNote: addNewNote),
          Positioned(
              left: 60,
              right: 0,
              top: 0,
              bottom: 0,
              child: HomePageBody(
                notes: notes,
                onDeleteNote: onDeleteNote,
              )),
        ],
      ),
    ));
  }
}
