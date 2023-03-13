import 'package:flutter/material.dart';

class Book extends StatelessWidget {
  const Book({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Container(
        color: Color.fromARGB(255, 255, 29, 29),
        child: Card(
          elevation: 8,
          clipBehavior: Clip.antiAlias,
          shadowColor: Colors.red,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(200),
            ),
            side: BorderSide(
              color: Colors.grey,
              width: 1,
            ),
          ),
        ),
      )
    ]);
    ;
  }
}
