import 'package:flutter/material.dart';

import './services.dart';
import './pizza_model.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // calls the get method
  var pizzaOrdered = PizzaServices().getPizzaOrders();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Display API',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: MyHomePage(title: 'Display API', order: pizzaOrdered),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title, required this.order})
      : super(key: key);

  final String title;
  final Future<List<Pizza>> order;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: FutureBuilder<List<Pizza>>(
          future: widget.order,
          builder: (context, snapshot) {
            if (snapshot.hasError) return Text(snapshot.error.toString());
            if (snapshot.hasData) {
              return ListView.builder(itemBuilder: itemBuilder);
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
