import 'package:flutter/material.dart';

import './pizza_model.dart';

class PizzaOrder extends StatelessWidget {
  final Pizza pizzaOrder;

  PizzaOrder(this.pizzaOrder);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      height: 110,
      child: Row(
        children: [
          // Showing of Orders
          Text(
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            '$pizzaOrder.orderId',
          ),
          Text(
            style: const TextStyle(fontSize: 30),
            '$pizzaOrder.size',
          ),
          Text(
            style: const TextStyle(fontSize: 30),
            '$pizzaOrder.crust',
          ),
          Text(
            style: const TextStyle(fontSize: 30),
            '$pizzaOrder.topping',
          ),
        ],
      ),
    );
  }
}
