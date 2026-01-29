import 'package:flutter/material.dart';
import 'package:shoponline/core/theme/app_colors.dart';
import 'package:shoponline/scr/products/product_details_page.dart';
import '../models/product.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  final List<Product> products = [
    Product(
      name: 'iPhone 17 Pro',
      price: 1100,
      image: 'assets/image/iPhone.png',
      color: Colors.indigo.shade50,
    ),
    Product(
      name: 'Washing machine',
      price: 500,
      image: 'assets/image/machine.png',
      color: Colors.yellow.shade50,
    ),
    Product(
      name: 'Fridge Large',
      price: 1200,
      image: 'assets/image/fridge.png',
      color: Colors.blue.shade50,
    ),
    Product(
      name: "Orange Armchair",
      price: 879.0,
      image: "assets/image/armchair.png",
      color: Colors.orange.shade100,
    ),
    Product(
      name: "Blue Bicycle",
      price: 2800.0,
      image: "assets/image/cycle.png",
      color: Colors.blue.shade100,
    ),
    Product(
      name: "Smart Bottle",
      price: 120.0,
      image: "assets/image/thermos.png",
      color: Colors.grey.shade200,
    ),
    Product(
      name: "Brown Backpack",
      price: 75.0,
      image: "assets/image/bag.png",
      color: Colors.blue.shade50,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          automaticallyImplyLeading: false,
          bottom: TabBar(
            indicatorColor: AppColors.blue,
            labelStyle: const TextStyle(fontWeight: FontWeight.w600),
            tabs: const [
              Tab(text: 'New'),
              Tab(text: 'Furniture'),
              Tab(text: 'Electronic'),
              Tab(text: 'Fashion'),
            ],
          ),
          title: const Text('Product List'),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          ],
        ),
        body: TabBarView(
          children: [
            GridView.builder(
              padding: const EdgeInsets.all(12),
              itemCount: products.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 0.8,
              ),
              itemBuilder: (context, index) {
                final product = products[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            ProductDetailsPage(product: product),
                      ),
                    );
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: product.color,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Center(
                            child: Image.asset(
                              product.image,
                              width: 150,
                              height: 150,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          product.name,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "\$${product.price}",
                              style: const TextStyle(
                                color: Colors.black54,
                                fontSize: 13,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.more_vert),
                              padding: EdgeInsets.zero,
                              constraints: const BoxConstraints(),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            const Center(child: Text('Page 2')),
            const Center(child: Text('Page 3')),
            const Center(child: Text('Page 4')),
          ],
        ),
      ),
    );
  }
}
