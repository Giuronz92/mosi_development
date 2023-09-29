import 'package:flutter/material.dart';

class RegistrationSection extends StatelessWidget {
  final String title;
  final Widget child;

  const RegistrationSection({
    required this.title,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text(title.toUpperCase(),
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade600,
                  )),
            ),
            SizedBox(
              height: 10,
            ),
            child,
            SizedBox(
              height: 10,
            )
          ],
        ),
      ],
    );
  }
}
