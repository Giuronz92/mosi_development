import 'package:flutter/material.dart';
import 'package:alibaba_shop/model/nft_product_model.dart';

class Info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(16),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 0.75,
      ),
      itemCount: products.length,
      itemBuilder: (context, index) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
              aspectRatio: 1 / 1,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  products[index].imageUrl,
                  fit: BoxFit.cover,
                ),
              )),
          SizedBox(
            height: 10,
          ),
          Text(
            products[index].name,
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 2,
          ),
          Text(
            "${products[index].price} €",
            style: TextStyle(fontSize: 12),
          )
        ],
      ),
    );
  }
}
