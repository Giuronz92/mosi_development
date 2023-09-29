import 'package:app_nft/page/partial/home.dart';
import 'package:app_nft/page/partial/profile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            "NFT Gallery",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          bottom: TabBar(indicatorColor: Colors.green, tabs: [
            Tab(icon: Icon(Icons.currency_bitcoin_sharp)),
            Tab(icon: Icon(Icons.person_outline_sharp)),
          ]),
        ),
        body: TabBarView(children: [
          Home(),
          Profile(),
        ]),
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Colors.black,
          onPressed: () {},
          icon: Icon(Icons.attach_money),
          label: Text("Sell NFT"),
        ),
      ),
    );
  }
}
