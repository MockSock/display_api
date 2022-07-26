import 'package:flutter/material.dart';

import './services.dart';
import './pizza_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // calls the get method
  var countries = CountryServices().getCountries();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Display API',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: MyHomePage(title: 'Display API', country: countries),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title, required this.country})
      : super(key: key);

  final String title;
  final Future<List<Country>> country;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          alignment: Alignment.center,
          child: Text(widget.title),
        ),
      ),
      body: Center(
        child: FutureBuilder<List<Country>>(
          future: widget.country,
          builder: (context, snapshot) {
            if (snapshot.hasError) return Text(snapshot.error.toString());
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) => Container(
                  color: Colors.greenAccent,
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Country: ${snapshot.data![index].countryName}'),
                      Text('Region: ${snapshot.data![index].region}'),
                      Text(
                        'Population: ${snapshot.data![index].population.toString()}',
                      ),
                    ],
                  ),
                ),
              );
            }
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
        ),
      ),
    );
  }
}
