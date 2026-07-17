import 'package:flutter/material.dart';
import 'product_model.dart';

class ProductCard extends StatelessWidget {
  final ProductModel product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Container(
        color: Color(0xFFFFFFFF),
        width: 152,
        height: 246,
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  product.image,
                  // fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
            ),
            const SizedBox(height: 6),
            Text(
              product.name,
              style: const TextStyle( fontSize: 14),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 6),
            Column(
              children: [
                Text(
                  "\$${product.priceAfterDiscount}",
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(width: 8),
                Text(
                  "\$${product.priceBeforeDiscount}",
                  style: const TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 4),
            Row(
              children: [
                const Icon(Icons.star, color: Colors.amber, size: 14),
                const SizedBox(width: 2),
                Text(
                  product.rating.toString(),
                  style: const TextStyle(fontSize: 12, color: Colors.black),
                ),
                const SizedBox(width: 5),
                Text(
                  "(${product.ratingNumber.toString()})",
                  style: const TextStyle(fontSize: 12, color: Colors.black )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}