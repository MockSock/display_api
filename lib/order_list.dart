import 'package:flutter/material.dart';

class OrderList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int orderIndex) {
        return Container(
          height: 40,
          color: Colors.amberAccent,
          child: const Text('I will be a pizza order one day!'),
        );
      },
    );
  }
}
