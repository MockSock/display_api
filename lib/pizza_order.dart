import 'package:flutter/material.dart';

import './pizza_model.dart';

class PizzaOrder extends StatelessWidget {
  final Pizza pizzaOrder;

  PizzaOrder(this.pizzaOrder);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      height: 110,
      child: Row(
        children: [],
      ),
    );
  }
}
