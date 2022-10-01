import 'package:flutter/widgets.dart';

import '../models/product.dart';

class Products extends ChangeNotifier {
  List<Product> _list = [
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

  List<Product> get list {
    return [..._list];
  }
}
