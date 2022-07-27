import 'dart:convert';

List<Country> countryFromJSON(String str) =>
    List<Country>.from(json.decode(str).map((x) => Country.fromJson(x)));

class Country {
  final int population;
  final String countryName;
  final String capitol;

  Country({
    required this.population,
    required this.countryName,
    required this.capitol,
  });

  factory Country.fromJson(Map<String, dynamic> json) => Country(
        population: json['population'],
        countryName: json['name']['common'],
        capitol: json['capital'],
      );
}
