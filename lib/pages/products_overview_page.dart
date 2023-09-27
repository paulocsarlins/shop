import 'package:flutter/material.dart';
import 'package:shop/components/product_grid.dart';

enum FilterOptions {
  favorite,
  all,
}

class ProductOverviewPage extends StatefulWidget {
  const ProductOverviewPage({Key? key}) : super(key: key);

  @override
  State<ProductOverviewPage> createState() => _ProductOverviewPageState();
}

class _ProductOverviewPageState extends State<ProductOverviewPage> {
  bool _showFavoriteONly = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Minha Loja'),
        actions: [
          PopupMenuButton(
            icon: const Icon(Icons.more_vert),
            itemBuilder: (_) => [
              const PopupMenuItem(
                value: FilterOptions.favorite,
                child: Text(
                  'Somente Favoritos',
                ),
              ),
              const PopupMenuItem(
                value: FilterOptions.all,
                child: Text(
                  'Todos',
                ),
              ),
            ],
            onSelected: (FilterOptions selectedValue) {
              setState(() {
                if (selectedValue == FilterOptions.favorite) {
                  _showFavoriteONly = true;
                } else {
                  _showFavoriteONly = false;
                }
              });
            },
          ),
        ],
      ),
      body: ProductGrid(_showFavoriteONly),
    );
  }
}
