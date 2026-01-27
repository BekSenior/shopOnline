import 'package:flutter/material.dart';
import 'package:shoponline/core/theme/app_colors.dart';
import 'package:shoponline/scr/products/reviews_page.dart';
import 'package:shoponline/scr/widgets/go_button.dart';
import '../models/product.dart';
import '../models/reviews.dart';

class ProductDetailsPage extends StatelessWidget {
  final Product product;

  const ProductDetailsPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    final List<Review> reviews = [
      Review(
        authorImage: 'assets/image/userAvatar.png',
        author: "Ali Mahmud",
        content: "Comfortable Chair. O'tirsa odam mazza qiladiya",
        rating: 3,
        date: DateTime(2025, 1, 23),
      ),
      Review(
        authorImage: 'assets/image/userAvatar.png',
        author: "Jessie Phelps",
        content: "Great chair. Sturdy and comfortable.",
        rating: 5,
        date: DateTime(2020, 1, 6),
      ),
      Review(
        authorImage: 'assets/image/userAvatar.png',
        author: "Larry May",
        content: "Love new chairs. Great addition to my office.",
        rating: 5,
        date: DateTime(2019, 12, 14),
      ),
    ];
    final numberReviews = reviews.length;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: AlignmentGeometry.topLeft,
                  child: Text(
                    product.name,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  "\$${product.price}",
                  style: TextStyle(
                    fontSize: 18,
                    color: AppColors.blue,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(color: product.color),
              padding: const EdgeInsets.all(20),
              child: Image.asset(
                product.image,
                width: 200,
                height: 200,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Furniture",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...List.generate(
                  4,
                  (index) => const Icon(Icons.star, color: Colors.amber),
                ),
                const Icon(Icons.star_border, color: Colors.amber),
                const SizedBox(width: 8),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => ReviewsPage(reviews: reviews),
                      ),
                    );
                  },
                  child: Text(
                    "$numberReviews reviews",
                    style: TextStyle(color: AppColors.blue),
                  ),
                ),
              ],
            ),
            const Spacer(),
            GoButton(title: 'Add Card', onPressed: () {}),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: (index) {
          if (index == 0) {
            Navigator.pushNamed(context, '/home');
          } else if (index == 1) {
            Navigator.pushNamed(context, '/cart');
          } else if (index == 2) {
            Navigator.pushNamed(context, '/favorites');
          }
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favorites",
          ),
        ],
      ),
    );
  }
}
