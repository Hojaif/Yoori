import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: BeveledRectangleBorder(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Product Image
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
            child: Image.asset(
              'assets/images/image (1).png', // Replace with your image
              width: double.infinity,
              height: 150,
              fit: BoxFit.cover,
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Body Lotion',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  '\$80',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
                SizedBox(height: 8),
                Row(
                  children: [
                    // Rating stars
                    Icon(Icons.star, color: Colors.black, size: 16),
                    Icon(Icons.star, color: Colors.black, size: 16),
                    Icon(Icons.star, color: Colors.black, size: 16),
                    Icon(Icons.star, color: Colors.black, size: 16),
                    Icon(Icons.star_half, color: Colors.black, size: 16),
                    SizedBox(width: 4),
                    // Rating value
                    Text(
                      '4.8',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                    Spacer(),
                    const Icon(
                      Icons.favorite_border,
                      size: 18,
                    ),
                    Spacer(),
                    const Icon(
                      Icons.shopping_cart_outlined,
                      size: 18,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
