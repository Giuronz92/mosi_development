import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: double.infinity,
              height: 220,
              margin: EdgeInsets.only(left: 16, right: 16, top: 16),
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
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 255),
            child: Container(
              color: Colors.black87,
              height: 600,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 270),
            child: Center(
              child: Text(
                "LAST ORDERS",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 310),
            child: Center(
              child: Container(
                color: Colors.white,
                height: 50,
                width: 300,
                child: Center(
                  child: Text(
                    "18.01.2022 - Ordine in Lavorazione",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 362),
            child: Center(
              child: Container(
                color: Colors.white,
                height: 50,
                width: 300,
                child: Center(
                  child: Text(
                    "10.12.2022 - Ordine consegnato",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 414),
            child: Center(
              child: Container(
                color: Colors.white,
                height: 50,
                width: 300,
                child: Center(
                  child: Text(
                    "22.09.2022 - Ordine consegnato",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 466),
            child: Center(
              child: Container(
                color: Colors.white,
                height: 50,
                width: 300,
                child: Center(
                  child: Text(
                    "06.08.2022 - Ordine consegnato",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 518),
            child: Center(
              child: Container(
                color: Colors.white,
                height: 50,
                width: 300,
                child: Center(
                  child: Text(
                    "14.17.2022 - Ordine consegnato",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 750),
            child: Center(
              child: Text(
                "Copyright (c) by Alibaba Supermarket S.r.l.s.",
                style: TextStyle(fontSize: 12, color: Colors.white54),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget backgroundImage() => ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      );

  Widget content() => Positioned(
        top: 30,
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
              "Cliente dal 2022",
              style: TextStyle(
                fontSize: 13,
                color: Colors.grey.shade500,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      );
}
