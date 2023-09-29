import 'package:flutter/material.dart';
import 'package:test_5/components/note.dart';
import 'package:test_5/pages/home/home_page.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}





// CODICE PER SIZED BOX CON COLUMN AND ROW

// Widget body() => SizedBox(
//     width: double.infinity,
//     height: double.infinity,
//     child: Row(
//       crossAxisAlignment: CrossAxisAlignment.center,
//       mainAxisAlignment: MainAxisAlignment.spaceAround,
//       mainAxisSize: MainAxisSize.max,
//       children: [
//         Text("Riga 1"),
//         Text("Riga 2"),
//         Text("Riga 3"),
//       ],
//     ));

//codice per Stack sovrapposizione icone ed elementi

// Widget body() => Stack(
//       children: [
//         Icon(
//           Icons.person,
//           size: 60,
//         ),
//         Positioned(
//           right: 0,
//           bottom: 0,
//           child: Container(
//             width: 25,
//             height: 25,
//             decoration: BoxDecoration(
//               color: Colors.red,
//               shape: BoxShape.circle,
//             ),
//             child: Center(
//                 child: Text(
//               "2",
//               style: TextStyle(
//                 fontSize: 14,
//                 color: Colors.white,
//               ),
//             )),
//           ),
//         ),
//       ],
//     );
