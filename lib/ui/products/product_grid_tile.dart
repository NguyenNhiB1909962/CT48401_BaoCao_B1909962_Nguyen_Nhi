import 'package:flutter/material.dart';

import '../../models/product.dart';

import '../cart/cart_manager.dart';
import 'product_detail_screen.dart';

import 'package:provider/provider.dart';

import 'products_manager.dart';

class ProductGridTile extends StatelessWidget {
  const ProductGridTile(
    this.product, {
    super.key,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        header: buildGridHeaderBar(context),
        footer: buildGridFooterBar(context),
        child: GestureDetector(
          onTap: () {
            // print('Go to product detail screen');
            Navigator.of(context).pushNamed(
              ProductDetailScreen.routeName,
              arguments: product.id,
            );
          },
          child: Image.network(
            product.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  Widget buildGridHeaderBar(BuildContext context) {
    return GridTileBar(
      title: Text(''),
      trailing: ValueListenableBuilder<bool>(
        valueListenable: product.isFavoriteListenable,
        builder: (ctx, isFavorite, child) {
          return IconButton(
            icon: Icon(
              isFavorite ? Icons.favorite : Icons.favorite_border,
            ),
            color: Colors.red[900],
            onPressed: () {
              ctx.read<ProductsManager>().toggleFavoriteStatus(product);
            },
          );
        },
      ),
      
    );
  }

  Widget buildGridFooterBar(BuildContext context) {
    return GridTileBar(
      backgroundColor: Colors.white38,
      title: Text(
        product.title,
        textAlign: TextAlign.left,
        style: const TextStyle(color: Colors.black),
      ),
      trailing: IconButton(
        icon: const Icon(
          Icons.shopping_cart,
        ),
        onPressed: () {
          final cart = context.read<CartManager>();
          cart.addItem(product);
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: const Text(
                  'Sản phẩm đã được thêm vào giỏ hàng',
                ),
                duration: const Duration(seconds: 2),
                action: SnackBarAction(
                  label: 'UNDO',
                  onPressed: () {
                    cart.removeSingleItem(product.id!);
                  },
                ),
              ),
            );
        },
        color: Colors.red,
      ),
    );
  }
}
