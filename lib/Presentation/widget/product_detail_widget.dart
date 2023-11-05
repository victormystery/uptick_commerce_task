import 'package:flutter/material.dart';

import '../../models/product.dart';

class ProductTile extends StatelessWidget {
  final ShoeProduct shoeProduct;
  ProductTile({super.key, required this.shoeProduct});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(shoeProduct.imageUrl),
          fit: BoxFit.contain,
        ),
      ),
      child: Column(
        children: [
          Text(shoeProduct.name),
        ],
      ),
    );
  }
}
