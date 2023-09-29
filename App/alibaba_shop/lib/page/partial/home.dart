import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:alibaba_shop/model/nft_product_model.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(children: [
        Container(
          child: Image.network(
            "https://globaluserfiles.com/media/16358_99a86cda334264357acba2c6153265e540345a20.png/v1/w_322,h_0/herr_1615898772622.png",
            width: 415,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: 200,
        ),
        Padding(
          padding: EdgeInsets.only(top: 190),
          child: Center(
            child: Text(
              "LAST PRODUCT",
              style: TextStyle(
                  fontFamily: 'Roboto', fontSize: 25, color: Colors.black87),
            ),
          ),
        ),
        Column(children: [
          Padding(
            padding: EdgeInsets.only(top: 230),
            child: Container(
              width: 250,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTf9ewsPCWJ8gwy65FBlAtKVmMhPeBdWAhRdtKRtuWMQ7o3W0Rn",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )
        ]),
        Column(children: [
          Padding(
            padding: EdgeInsets.only(top: 230, left: 250),
            child: Container(
              width: 350,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://www.americancrunch.it/wp-content/uploads/2023/01/box-mobile.png",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )
        ]),
        Column(children: [
          Padding(
            padding: EdgeInsets.only(top: 410),
            child: Container(
              width: 410,
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://horecanews.it/wp-content/uploads/2021/11/reeses.png.webp",
                  ),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          )
        ]),
        Column(children: [
          Padding(
            padding: EdgeInsets.only(top: 640),
            child: Container(
              width: 450,
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://lh3.googleusercontent.com/p/AF1QipOYCJJobA8nlP7BdhRfvEIUOYo-q_G19DVc4jcC=s680-w680-h510",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )
        ])
      ]),
    );
  }
}
