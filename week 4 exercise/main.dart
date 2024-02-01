import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Product layout demo home page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Product Listing'),
        ),
        // body: Center(
        //     child: Text(
        //   'Hello World',
        // )),
        // body: Center(child: Image.network('https://www.ict.mahidol.ac.th/wp-content/uploads/2021/04/MU-LOGO.png')),
        body: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
          children: <Widget>[
            ProductBox(
                name: "IPhone",
                description: "iPhone is the stylist phone ever",
                price: 1000,
                image: "iphone.png"),
            ProductBox(
                name: "Laptop",
                description: "Laptop is most productive development tool",
                price: 800,
                image: "laptop.jpg"),
            ProductBox(
                name: "Ipad",
                description: "Ipad is the most featureful ever",
                price: 2000,
                image: "ipad.png"),
            ProductBox(
                name: "Case",
                description:
                    "Case is the most useful device ever for CPU",
                price: 1500,
                image: "cpu.jpg"),
            ProductBox(
                name: "Monitor",
                description: "Monitor is useful storage medium",
                price: 100,
                image: "monitor.png"),
            ProductBox(
                name: "Floppy Drive",
                description: "Floppy drive is useful rescue storage medium",
                price: 20,
                image: "floppy.png"),
          ],
        ));
  }
}

class ProductBox extends StatelessWidget {
  ProductBox(
      {Key? key,
      required this.name,
      required this.description,
      required this.price,
      required this.image})
      : super(key: key);
  final String name;
  final String description;
  final int price;
  final String image;
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(2),
        height: 120,
        child: Card(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
              Image.asset("assets/" + image),
              Expanded(
                  child: Container(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(this.name,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(this.description),
                          Text("Price: " + this.price.toString()),
                        ],
                      )))
            ])));
  }
}
