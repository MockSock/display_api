import 'package:http/http.dart' as http;
import 'package:http/http.dart'; // gets you Response

import './pizza_model.dart';

abstract class PizzaRepo {
  getPizzaOrders();
}

class PizzaServices implements PizzaRepo {
  // website
  static const _apiUrl = 'localhost:5000';
  // link after
  static const String _storePizza = '/orders';
  @override
  Future<List<Pizza>> getPizzaOrders() async {
    // fusion dance, localhost:5000/orders
    // feels clunky
    Uri uri = Uri.http(_apiUrl, _storePizza);
    //
    Response response = await http.get(uri);
    // this will then convert it using the model file to
    // the usable pizza object
    List<Pizza> pizza = pizzaFromJSON(response.body);
    return pizza;
  }
}
