import 'package:flutter/material.dart';

class HomePageSidebar extends StatelessWidget {
  final void Function() addNewNote;

  const HomePageSidebar({
    required this.addNewNote,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      color: Colors.grey,
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1581182800629-7d90925ad072?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2070&q=80"),
            ),
            IconButton(
              onPressed: addNewNote,
              icon: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
