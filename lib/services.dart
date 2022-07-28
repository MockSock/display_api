import 'package:http/http.dart' as http;
import 'package:http/http.dart'; // gets you Response

import './pizza_model.dart';

abstract class CountryRepo {
  getCountries();
}

class CountryServices implements CountryRepo {
  // website will be restcountries
  static final Uri _uri = Uri.parse('https://restcountries.com/v3.1/all');

  @override
  Future<List<Country>> getCountries() async {
    Response response = await http.get(_uri);
    List<Country> country = countryFromJSON(response.body);
    return country;
  }
}
