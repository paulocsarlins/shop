import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop/models/product.dart';
import 'package:shop/utils/app_roputes.dart';

class ProductItem extends StatelessWidget {
  final Product product;
  const ProductItem({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
          child: Image.network(
            product.imageUrl,
            fit: BoxFit.cover,
          ),
          onTap: () {
            Navigator.of(context).pushNamed(
              AppRoutes.PRODUCT_DETAIL,
              arguments: product,
            );
          },
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black87,
          leading: IconButton(
            onPressed: () {},
            color: Theme.of(context).colorScheme.secondary,
            icon: Icon(
              Icons.favorite,
            ),
          ),
          title: Text(
            product.title,
            textAlign: TextAlign.center,
          ),
          trailing: IconButton(
            onPressed: () {},
            color: Theme.of(context).colorScheme.secondary,
            icon: Icon(
              Icons.shopping_cart,
            ),
          ),
        ),
      ),
    );
  }
}
