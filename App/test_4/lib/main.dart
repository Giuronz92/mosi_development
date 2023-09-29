import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Text button")),
        body: Center(child: body()),
      ),
    );
  }

//CODICE PER CARD:

  Widget body() => Card(
        child: InkWell(
          splashColor: Colors.blue.shade200,
          onTap: () {},
          child: Container(
              height: 200,
              width: 200,
              child: Center(
                child: Text("Card"),
              )),
        ),
      );

//CODICE PER CONTAINER:

  // Widget body() => Card(
  //   child: Container(
  //       width: 300,
  //       height: 300,
  //       decoration: BoxDecoration(
  //         color: Colors.white,
  //         border: Border.all(
  //           color: Colors.grey,
  //           width: 0.5,
  //         ),
  //         borderRadius: BorderRadius.circular(16),
  //         boxShadow: [
  //           BoxShadow(
  //             blurRadius: 5,
  //             spreadRadius: 2,
  //             color: Colors.black.withOpacity(.3),
  //           ),
  //         ],
  //       ),
  //       child: Center(
  //           child: Text(
  //         "Card",
  //       )),
  //     )
  //     );
}
