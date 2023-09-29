import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: double.infinity,
        height: 600,
        margin: EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 5,
                spreadRadius: 2,
              ),
            ]),
        child: Stack(
          children: [
            backgroundImage(),
            content(),
            myNft(),
          ],
        ),
      ),
    );
  }

  Widget backgroundImage() => ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: Image.network(
          "https://images.unsplash.com/photo-1649274496773-c40eacd66e2d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1632&q=80",
          height: 200,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
      );

  Widget content() => Positioned(
        top: 160,
        bottom: 0,
        left: 0,
        right: 0,
        child: Column(
          children: [
            CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(
                    "https://media.licdn.com/dms/image/C4D03AQFj1RXYShS_zQ/profile-displayphoto-shrink_800_800/0/1663230657944?e=1678924800&v=beta&t=37BHPyGcV9c86HsW9un4dkUqikNeeBL_da3PwYRXC6U")),
            SizedBox(
              height: 14,
            ),
            Text(
              "Giuseppe Roncone",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 4,
            ),
            Text("Developer"),
            SizedBox(
              height: 20,
            ),
            Text(
              "NFT Collector since 1992.",
              style: TextStyle(
                fontSize: 13,
                color: Colors.grey.shade500,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      );

  Widget myNft() => Container(
          margin: EdgeInsets.only(
            top: 350,
          ),
          child: Center(
            child: Text(
              "My NFT Collection",
            ),
          ),
          children: [
            Image.network(
                "https://media.istockphoto.com/id/1356420393/it/foto/donna-futuristica-3d-con-occhiali-vr-metaverse.jpg?s=1024x1024&w=is&k=20&c=GA09i3X0c635MglPzT3wH8uX2H0dvdzkTHo7fGCRcKA=")
          ]);
}
