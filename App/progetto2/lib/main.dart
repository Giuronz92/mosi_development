import 'package:flutter/material.dart';
import 'package:progetto2/app.dart';
import 'package:progetto2/pages/home_page.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  //LOGICA

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text("FlutterButton")),
        ),
        body: Center(child: body()),
      ),
    );
  }

// METODI DI COSTRUZIONE DELLA UI

//METODO PER AGGIUNGERE UN CIRCLE AVATAR

  Widget body() => CircleAvatar(
        radius: 100,
        backgroundImage: AssetImage("assets/images/avatar.jpg"),
      );
}




//METODO PER AGGIUNGERE LE IMMAGINI 
//   Widget body() => SizedBox(
//         width: 200,
//         height: 200,
//         child: Image(
//           image: AssetImage("assets/images/landscape.jpg"),
//           fit: BoxFit.cover,
//         ),
//       );
// }