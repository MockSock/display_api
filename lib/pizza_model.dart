import 'dart:convert';

List<Pizza> pizzaFromJSON(String str) =>
    List<Pizza>.from(json.decode(str).map((x) => Pizza.fromJson(x)));

class Pizza {
  final int orderId;
  final String size;
  final String crust;
  final String topping;

  Pizza(
      {required this.orderId,
      required this.size,
      required this.crust,
      required this.topping});

  factory Pizza.fromJson(Map<String, dynamic> json) => Pizza(
        orderId: json['orderId'],
        size: json['size'],
        crust: json['crust'],
        topping: json['topping'],
      );
}
