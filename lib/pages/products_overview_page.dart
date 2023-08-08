import 'package:flutter/material.dart';
import 'package:shop/components/product_grid.dart';

class ProductOverviewPage extends StatelessWidget {
  ProductOverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Minha Loja'),
      ),
      body: ProductGrid(),
    );
  }
}