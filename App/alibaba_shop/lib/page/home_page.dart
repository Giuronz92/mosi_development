import 'package:alibaba_shop/page/partial/home.dart';
import 'package:alibaba_shop/page/partial/info.dart';
import 'package:alibaba_shop/page/partial/profile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Center(
              child: Image.network(
                "https://lh3.googleusercontent.com/p/AF1QipPtXbwlDUUJTMST4zlA9BKZ5Udv9BMp6-2cvu7S=s680-w680-h510",
                width: 200,
                height: 400,
                fit: BoxFit.contain,
              ),
            ),
            toolbarHeight: 100,
            bottom: TabBar(indicatorColor: Colors.red, tabs: [
              Tab(icon: Icon(Icons.home_outlined)),
              Tab(icon: Icon(Icons.shopping_bag_outlined)),
              Tab(icon: Icon(Icons.person_outline)),
            ]),
          ),
          body: TabBarView(children: [
            Home(),
            Info(),
            Profile(),
          ]),
          floatingActionButton: FloatingActionButton.extended(
            backgroundColor: Colors.black,
            onPressed: () {},
            icon: Icon(Icons.shopping_cart_rounded),
            label: Text("Carrello"),
          ),
        ));
  }
}
