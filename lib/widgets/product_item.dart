import 'package:flutter/material.dart';
import 'package:my_dokon/screens/product_details_page.dart';

class ProductItem extends StatelessWidget {
  final String image;
  final String title;
  final String productId;
  const ProductItem(
      {super.key, 
      required this.image,
      required this.title,
      required this.productId});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: GridTile(
        // ignore: sort_child_properties_last
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) =>  ProductDetailsPage(
                title: title,
                image: image,
                productId: productId,
                  
              ),
            ));
          },
          child: Image.network(
            image,
            fit: BoxFit.cover,
          ),
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black87,
          title: Text(
            title,
            textAlign: TextAlign.center,
          ),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite_outline,
              color: Theme.of(context).primaryColor,
            ),
          ),
          trailing: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_cart,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
