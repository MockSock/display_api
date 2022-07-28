import 'dart:convert';

List<Country> countryFromJSON(String str) =>
    List<Country>.from(json.decode(str).map((x) => Country.fromJson(x)));

class Country {
  final int population;
  final String countryName;
  final String region;

  Country({
    required this.population,
    required this.countryName,
    required this.region,
  });

  factory Country.fromJson(Map<String, dynamic> json) => Country(
        population: json['population'],
        countryName: json['name']['common'],
        region: json['region'],
      );
}
