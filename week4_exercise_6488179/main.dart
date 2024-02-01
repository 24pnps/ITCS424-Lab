import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo 6488179',
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
                name: "Classic Oreo",
                description: "The timeless combination of chocolate cookies and vanilla cream.",
                price: 100,
                image: "Classic.png"),
            ProductBox(
                name: "Mint Oreo",
                description: "A refreshing twist with cool mint-flavored cream between chocolatey layers.",
                price: 200,
                image: "Mint.jpeg"),
            ProductBox(
                name: "Golden Oreo",
                description: "A vanilla-flavored delight featuring golden cookies and a creamy center.",
                price: 300,
                image: "Golden.jpg"),
            ProductBox(
                name: "Peanut Butter Oreo",
                description:
                    "Indulge in the rich taste of peanut butter sandwiched between chocolate cookies.",
                price: 400,
                image: "Peanut.jpeg"),
            ProductBox(
                name: "Red Velvet Oreo",
                description: "Experience the decadence of red velvet-flavored cookies filled with cream cheese frosting.",
                price: 500,
                image: "RedVelvet.jpg"),
            ProductBox(
                name: "Double Stuf Oreo",
                description: "Double the delight with extra creamy filling between two chocolate cookies.",
                price: 600,
                image: "Stuf.jpeg"),
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
