import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:my_dokon/models/product.dart';
import 'package:my_dokon/widgets/product_item.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  List<Product> _product = [
    Product(
      id: "p1",
      title: "Macbook Pro",
      description: "Ajoyib Macbook Pro",
      price: 120,
      imageUrl:
          "https://www.apple.com/v/macbook-pro-13/m/images/overview/hero_endframe__bsza6x4fldiq_large_2x.jpg",
    ),
    Product(
      id: "p2",
      title: "Macbook Air",
      description: "Ajoyib Macbook Air",
      price: 100,
      imageUrl:
          "https://www.apple.com/v/macbook-pro-13/m/images/overview/hero_endframe__bsza6x4fldiq_large_2x.jpg",
    ),
    Product(
      id: "p3",
      title: "AirPods",
      description: "Ajoyib AirPods",
      price: 23,
      imageUrl:
          "https://www.apple.com/v/macbook-pro-13/m/images/overview/hero_endframe__bsza6x4fldiq_large_2x.jpg",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Mening Do\'konim"),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(20),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            childAspectRatio: 3 / 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20),
        itemCount: _product.length,
        itemBuilder: (ctx, i) {
          return ProductItem(
            image: _product[i].imageUrl,
            title: _product[i].title,
            productId: _product[i].id,

          );
        },
      ),
    );
  }
}
