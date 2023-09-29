import 'package:calendario_test/model/day_model.dart';
import 'package:calendario_test/model/product_model.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("ListView"),
          centerTitle: true,
        ),
        body: Center(child: body()),
      ),
    );
  }

  Widget body() => GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 80,
        ),
        itemCount: products.length,
        itemBuilder: (context, index) => ProductTile(products[index]),
      );
}

class ProductTile extends StatelessWidget {
  final ProductModel productModel;
  const ProductTile(this.productModel);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 120,
          child: Image.network(productModel.imageUrl),
        ),
        ListTile(
          title: Text(productModel.name),
          subtitle: Text(productModel.price.toStringAsFixed(2) + " €"),
        )
      ],
    );
  }
}
// class DayOfTheMonth extends StatelessWidget {
//   final DayModel model;
//   const DayOfTheMonth(this.model);

//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       leading: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text(model.number.toString(),
//               style: TextStyle(
//                 fontSize: 30,
//                 fontWeight: FontWeight.bold,
//               ))
//         ],
//       ),
//       title: Text(model.day),
//       subtitle: Text(model.month),
//     );
//   }
// }
