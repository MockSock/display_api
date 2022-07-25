import 'package:flutter/material.dart';

import './pizza_order.dart';
import './pizza_model.dart';

class OrderList extends StatelessWidget {
  final List<Pizza> pizza;

  OrderList(this.pizza);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(4),
      itemCount: pizza.length,
      itemBuilder: (BuildContext context, int orderIndex) {
        return PizzaOrder(pizza[orderIndex]);
      },
    );
  }
}
