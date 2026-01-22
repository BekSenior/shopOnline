import 'package:flutter/material.dart';
import 'package:shoponline/core/theme/app_colors.dart';

import 'models/product.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  final List<Product> products = [
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
          automaticallyImplyLeading: false,
          bottom: TabBar(
            indicatorColor: AppColors.blue,
            labelStyle: TextStyle(
              color: AppColors.black,
              fontWeight: FontWeight.w600,
            ),
              tabs: [
            Tab(text: 'New',),
            Tab(text: 'Furniture',),
            Tab(text: 'Electronic',),
            Tab(text: 'Fashion'),
          ]),
          title: Text('Product List'),
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.search))
          ],
        ),
        body: TabBarView(
            children: [
              ListView.builder(
                itemCount: products.length,
                itemBuilder: (context, index) {
                  final product = products[index];
                  return Container(
                    margin: EdgeInsets.all(8),
                    padding: EdgeInsets.all(12),
                    color: product.color,
                    child: Row(
                      children: [
                        Image.asset(product.image, width: 80, height: 80),
                        SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(product.name, style: TextStyle(fontSize: 16)),
                            Text("\$${product.price}", style: TextStyle(color: Colors.black54)),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
              Center(child: Text('Page 2'),),
              Center(child: Text('Page 3'),),
              Center(child: Text('Page 4'),),
            ]
        ),
      ),
    );
  }
}
