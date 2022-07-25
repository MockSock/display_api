class Pizza {
  final int orderId;
  final String size;
  final String crust;
  final String topping;

  Pizza(this.orderId, this.size, this.crust, this.topping);

  factory Pizza.fromJson(Map<String, dynamic> json) {
    return Pizza(json['orderId'], json['size'], json['crust'], json['topping']);
  }
}
