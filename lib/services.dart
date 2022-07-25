import 'package:http/http.dart' as http;
import 'dart:convert';

import './pizza_model.dart';

Future<List<Pizza>> getPizzaOrders() async {
  // uri links have to be parsed
  Uri apiUri = Uri.parse('localhost:5000');
  // it is now checking for it using a get method
  final response = await http.get(apiUri);
  // the response is decoded here
  final responseData = json.decode(response.body);
  // finally it is returned
  return responseData;
}
